use_bpm 60

use_synth :sine
use_synth_defaults attack: 0, release: 0.5, sustain: 0.5, pitch: 0, amp: 1

notes=[:B6,:A6,:Gs6,:e6,:d6,:cs6,:b5,:Gs5]
nodubs=notes.map{|x| [x,x]}.flatten

comment do
  
  define :drums do
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.125
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.125
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.25
    
    sample :drum_bass_soft
    sleep 0.125
    sample :drum_snare_soft
    sleep 0.125
  end
  
  play_pattern_timed notes,[0.625,1.375]
  
  2.times do
    drums
  end
  
  play_pattern_timed nodubs,[0.25,0.125,0.25,1.375]
  
  in_thread do
    6.times do
      drums
    end
  end
  
  sleep 4
  
  play_pattern_timed nodubs,[0.25,0.125,0.25,1.375]
  
  use_synth_defaults attack: 0, sustain: 0.125, release: 0
  
  
  play_pattern_timed [:b6,:b6,:b6,:b6].map{|x| [x,x,x,x,x,x,x,x,x,x]}.flatten,[0.25,0.125,0.25,0.125,0.25,0.125,0.25,0.25,0.125,0.25]
  
  
  in_thread do
    8.times do
      drums
    end
  end
  
  play_pattern_timed notes.map{|x| [x,x,x,x,x,x,x,x,x,x]}.flatten,[0.25,0.125,0.25,0.125,0.25,0.125,0.25,0.25,0.125,0.25]
  
end

comment do
  use_synth :tri
  use_synth_defaults amp: 0.25
  
  use_synth_defaults attack: 1, sustain: 2, release: 1
  play [:b3]
  sleep 1
  use_synth_defaults attack: 1, sustain: 1, release: 1
  play :fs4
  sleep 1
  use_synth_defaults attack: 1, sustain: 2, release: 1
  play :d4
  sleep 2
  use_synth_defaults attack: 1, sustain: 2, release: 1
  play :a3
  play :e4
end


comment do
  sleep 1.25
  
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_splash_soft
  sleep 0.375
  sample :drum_splash_soft
  sleep 0.375
  sample :drum_splash_soft
  sleep 0.5
end

4.times do
  2.times do
    sleep 0.5
    sample :drum_bass_soft
    sleep 0.03125
    sample :drum_snare_soft
    sleep 0.09375
    sample :drum_bass_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sample :drum_splash_soft
    sleep 0.375
    sample :drum_bass_soft
    sample :drum_splash_soft
    sleep 0.375
    sample :drum_bass_soft
    sample :drum_splash_soft
    sleep 0.25
  end
  sleep 0.25
  
  4.times do
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.03125
    sample :drum_snare_soft
    sleep 0.21875
    4.times do
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_snare_soft
      sleep 0.25
    end
    sample :drum_bass_soft
  end
end


