dur=sample_duration :loop_amen
rev=sample_duration :vinyl_backspin
bpm=quantise(60,dur)
riff=bpm/dur;
sec=bpm/riff
quart=sec/8
bpm=riff*2
durrev=dur-rev
back=durrev/dur;



puts riff
puts sec
puts quart
use_bpm bpm


define :hiss do
  1.times do
    sample :vinyl_hiss
    sleep sample_duration :vinyl_hiss
  end
end


define :beatone do
  in_thread do
    8.times do
      sample :drum_cymbal_soft
      sleep 0.25
    end
    
  end
  1.times do
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.15
    sample :drum_snare_hard
    sleep 0.1
    sample :drum_bass_hard
    sleep 0.15
    sample :drum_snare_hard
    sleep 0.1
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.15
    sample :drum_snare_hard
    sleep 0.1
  end
end


define :beattwo do
  3.times do
    sample :loop_amen
    dur=sample_duration :loop_amen
    sleep dur
  end
  
  sample :loop_amen, finish: back
end


define :pianoone do
  play :e5
  sleep 0.125
  play :c5
  sleep 0.25
  play :ds5
  sleep 0.125
  play :b4
  sleep 0.25
  play :d5
  sleep 0.125
  play :A4
  sleep 0.25
  play :b4
  sleep 0.125
  play :b5
  sleep 0.75
end


define :pianooneglitch do
  2.times do
    play :e5
    sleep 0.125
    play :c5
    sleep 0.25
    play :ds5
    sleep 0.25
    play :b4
    sleep 0.125
  end
end


define :pianotwo do
  play :ds5
  sleep 0.125
  play :b4
  sleep 0.25
  play :d5
  sleep 0.125
  play :as4
  sleep 0.25
  play :cs5
  sleep 0.125
  play :A4
  sleep 0.25
  play :gs4
  sleep 0.125
  play :gs5
  sleep 0.75
end

define :pianotwoglitch do
  2.times do
    play :ds5
    sleep 0.125
    play :b4
    sleep 0.25
    play :d5
    sleep 0.25
    play :as4
    sleep 0.125
  end
end

define :glitches do
  
  play :e5
  sleep 0.125
  play :c5
  sleep 0.25
  play :ds5
  sleep 0.125
  play :b4
  sleep 0.25
  play :ds5
  sleep 0.125
  play :b4
  sleep 0.25
  play :d5
  sleep 0.125
  play :as4
  sleep 0.25
end

hiss

in_thread do
  beattwo
end

sleep dur*4-rev
sample :vinyl_backspin
sleep rev

sleep 0.25

3.times do
  beatone
end

3.times do
  in_thread do
    
    beatone
  end
  in_thread do
    sample :drum_cymbal_open
  end
  sleep dur
  
end


3.times do
  in_thread do
    beatone
  end
  
  use_synth :piano
  pianoone
end

3.times do
  in_thread do
    beatone
  end
  
  use_synth :piano
  pianotwo
end

#use_bpm 30
sample :vinyl_backspin

sleep rev
sleep 1
puts rev

use_synth_defaults attack: 0, sustain: 0.125, release: 0;
2.times do
  pianoone
end

pianotwo

1.times do
  in_thread do
    16.times do
      sample :drum_cymbal_soft
      sleep 0.25;
    end
  end
  
  pianoone
  pianotwo
end

4.times do
  in_thread do
    2.times do
      beatone
    end
  end
  
  pianoone
  pianotwo
end


use_synth :piano
use_synth_defaults

4.times do
  pianooneglitch
end

8.times do
  sample :drum_snare_hard
  sleep 0.125
end
8.times do
  sample :drum_snare_hard
  sleep 0.0625
end
8.times do
  sample :drum_snare_hard
  sleep 0.03125
end
tic=0
step=0.125

64.times do
  sample :drum_snare_hard, rate: 1+tic
  tic=tic+step
  
  sleep 0.015625
end


in_thread do
  4.times do
    beatone
  end
end
5.times do
  pianooneglitch
end

sample :vinyl_backspin

sleep rev
sample :loop_amen_full
full=sample_duration :loop_amen_full
sleep full

in_thread do
  2.times do
    beatone
  end
  
end

use_synth :saw
use_synth_defaults attack: 0, release: 0, sustain: 0.125
3.times do
  pianooneglitch
end

4.times do
  in_thread do
    2.times do
      beatone
    end
  end
  
  pianooneglitch
  pianotwo
end

3.times do
  pianooneglitch
end

4.times do
  in_thread do
    2.times do
      beatone
    end
  end
  
  pianoone
  pianotwo
end

3.times do
  pianooneglitch
end

3.times do
  pianotwoglitch
end

3.times do
  glitches
end

sample :vinyl_backspin
sleep rev

play_pattern_timed [:Gs4, :A4, :As4, :b4, :c5, :ds5, :e5],[0.125]