dur=sample_duration :loop_amen
bpm=quantise(60,dur)
use_bpm bpm
beats=bpm/dur*2
puts beats
rev=sample_duration :vinyl_backspin

define :hiss do
  2.times do
    sample :vinyl_hiss
    sleep sample_duration :vinyl_hiss
  end
end

define :beatone do
  in_thread do
    32.times do
      sample :drum_cymbal_soft
      sleep 0.25
    end
    
  end
  4.times do
    
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
  back=(dur-rev)/dur
  sample :loop_amen, finish: back
    end


hiss

in_thread do
  beattwo
end

sleep dur*4-rev
sample :vinyl_backspin
sleep rev

sleep 0.25

beatone

use_synth :piano
