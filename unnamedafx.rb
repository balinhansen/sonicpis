# some afx track I vaguely remember but can't name

use_synth :pulse
notes =[:as1, :ds2, :f2, :gs2, :as3, :b3, :d4, :ds4, :f4, :fs4, :gs4, :as4]
#play_pattern_timed notes,[0.25]

use_synth :sine

in_thread do
  loop do
    sync :drums
    4.times do
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.10
      sample :drum_snare_hard
      sleep 0.15
      sample :drum_bass_hard
      sleep 0.10
      sample :drum_snare_hard
      sleep 0.15
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.10
      sample :drum_snare_hard
      sleep 0.15
    end
  end
end

define :multisynth do |n,t|
  use_synth :saw
  8.times do
    in_thread do
      sleep rand()*0.125
      play [n+(rand_i(2)==0?-1:1)*rand(0.25)]
      
    end
  end
  sleep t
end


define :multisynthslide do |n,t,o,s,d|
  use_synth :saw
  3.times do
    use_synth_defaults note_slide: s+(rand_i(2)==0?-1:1)*rand(0.125), attack: 0, sustain: 2, release: 0.5
    in_thread do
      sleep rand()*0.125
      r=(rand_i(2)==0?-1:1)*rand(0.25)
      c=play [n+r]
      r=(rand_i(2)==0?-1:1)*rand(0.25)
      sleep d+rand()*0.125
      control c, note: o+r
    end
  end
  sleep t
end


in_thread do
  loop do
    sync :melone
    use_synth :saw
    use_synth_defaults attack: 0.5, sustain: 2, release: 0.5
    multisynth :as1, 2
    multisynth :gs2, 2
    multisynth :f2, 2
    multisynth :ds2, 2
  end
end


in_thread do
  loop do
    sync :meltwo
    use_synth :saw
    use_synth_defaults attack: 0.0, sustain: 2, release: 0.5
    loop do
      multisynthslide :B3, 2, :as3, 0.5,1
      multisynthslide :B3, 2, :ds4, 0.5,1
      multisynthslide :ds4, 2, :f4, 0.5,1
      multisynthslide :as3, 2, :b3, 0.5,1
      multisynthslide :ds4, 2, :d4, 0.5,1
      
    end
  end
  
end

in_thread do
  loop do
    sync :melfive
    loop do
      multisynthslide notes.choose, 2, notes.choose, 0.5, 1
      sleep 1
    end
  end
end


in_thread do
  loop do
    sync :melthree
    use_synth :saw
    with_fx :reverb do
      2.times do
        play_pattern_timed [:As4, :f4,:fs4,:gs4,:f4,:fs4,:gs4,:f4],[0.25]
      end
    end
  end
end

in_thread do
  loop do
    sync :melfour
    use_synth :saw
    with_fx :reverb do
      play_pattern_timed [:As4, :f4,:fs4,:gs4,:f4,:fs4,:gs4,:f4],[0.25]
      play_pattern_timed [:b4, :f4,:fs4,:gs4,:f4,:fs4,:gs4,:f4],[0.25]
      play_pattern_timed [:cs5, :f4,:fs4,:gs4,:f4,:fs4,:gs4,:f4],[0.25]
      play_pattern_timed [:b4, :f4,:fs4,:gs4,:f4,:fs4,:gs4,:f4],[0.25]
    end
  end
end


in_thread do
  loop do
    2.times do
      cue :melone
      sleep 8
    end
    2.times do
      cue :melone
      cue :drums
      
      sleep 8
    end
    2.times do
      cue :drums
      cue :meltwo
      sleep 4
      #cue :melthree
      sleep 4
    end
    
    cue :drums
    
  end
end

in_thread do
  sleep 32
  loop do
    cue [:melone,:meltwo,:drums,:melthree,:melfour,:melfive][rand_i(5)]
    cue [:melone,:meltwo,:drums,:melthree,:melfour,:melfive][rand_i(5)]
    cue [:melone,:meltwo,:drums,:melthree,:melfour,:melfive][rand_i(5)]
    cue [:melone,:meltwo,:drums,:melthree,:melfour,:melfive][rand_i(5)]
    cue [:melone,:meltwo,:drums,:melthree,:melfour,:melfive][rand_i(5)]
    sleep 8
  end
  
end


