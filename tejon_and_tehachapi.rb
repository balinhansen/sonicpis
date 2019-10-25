# Welcome to Sonic Pi v3.0.1
use_synth :sine
use_synth_defaults amp: 0.25, attack: 0.125, sustain: 0.125, decay: 0

slack=1

define :tejon do
  in_thread do
    play 59
    sleep 0.5
    play 68
    sleep slack
    play 64
    sleep slack
    
    play 59
    sleep 0.5
    play 68
    sleep 0.5
    play 66
    sleep 0.5
    play 64
    sleep 0.5
    play 62
    sleep 0.5
    play 61
    
    sleep slack
    play 64
    sleep 0.5
    play 59
    
    sleep slack
    play 61
    sleep 0.5
    play 57
    
    sleep slack
    play 59
    sleep 0.5
    play 56
    
    sleep 1
  end
end

define :tejona do
  in_thread do
    play 59
    sleep 0.5
    play 66
    sleep 1.5
    play 62
    
    sleep 1.5
    play 59
    sleep 0.5
    play 66
    sleep 0.5
    play 64
    sleep 0.5
    play 62
    sleep 0.5
    play 61
    sleep 0.5
    play 59
    sleep 0.5
    play 64
    sleep 0.5
    play 57
    sleep 1.5
    play 59
    sleep 0.5
    play 56
  end
end

use_bpm 240

tejona

define :tejon_drum do
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_snare_hard
  
  sleep 1
  
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.25
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
end
