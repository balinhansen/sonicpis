dur=sample_duration :loop_amen
bpm=quantise(60,dur)
riff=bpm/dur;
sec=bpm/riff
quart=sec/8
bpm=riff*2

puts riff
puts sec
puts quart
use_bpm bpm

rev=sample_duration :vinyl_backspin

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
  
  back=((dur-rev)/dur);
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
use_synth_defaults attack: 0, sustain: 0.125, release: 0;
2.times do
pianoone
end

pianotwo