use_bpm 68
use_synth :tri #:tb303

#sleeps=true;
sleeps=true

use_synth_defaults res: 0.99, attack: 0, sustain: 0, release: 0.125

in_thread do
  with_fx :reverb, room: 0.7, mix: 0.5 do
    with_fx :echo, phase: 0.75*0.5, max_phase: 0.75*0.5*20 do
      loop do
        2.times do
          play_pattern_timed [:F5,:f5,:Ds5,:D5,:Ds5,:F5,:As5],[0.25]
          sleep 0.25
        end
        
        2.times do
          play_pattern_timed [:F5,:f5,:Ds5,:Cs5,:Ds5,:F5,:Gs5],[0.25]
          sleep 0.25
        end
        
        2.times do
          play_pattern_timed [:F5,:ds5,:cs5,:As4,:Cs5,:Ds5,:F5],[0.25]
          sleep 0.25
        end
        
        2.times do
          play_pattern_timed [:F5,:F5,:Ds5,:As4,:Cs5,:F5,:Gs5],[0.25]
          sleep 0.25
        end
      end
    end
  end
end

if sleeps==true then
  sleep 16
  
end

in_thread do
  with_fx :reverb, room: 0.7, mix: 0.5 do
    loop do
      
      in_thread do
        8.times do
          sample :drum_cymbal_closed
          sleep 0.25
        end
      end
      
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.125
      sample :drum_tom_mid_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.125
    end
  end
end

if sleeps==true then
  sleep 16
end


use_synth :mod_fm
use_synth_defaults mod_phase: 0.125, divisor: 4, mod_range: 12

in_thread do
  with_fx :distortion, distort: 0.6 do
    loop do
      
      play :g3, attack: 1, sustain: 1, release: 2
      sleep 4
      play :d3, attack: 1, sustain: 1, release: 2
      sleep 4
      play :f3, attack: 1, sustain: 1, release: 2
      sleep 4
      play :C3, attack: 1, sustain: 1, release: 2
      sleep 4
    end
  end
end

if sleeps==true then
  sleep 16
end

use_synth :growl

define :dischord do |n|
  
  with_fx :distortion, distort: 0.8 do
    play n, attack: 3, sustain: 1, release: 2
    play n+1, attack: 3, sustain: 1, release: 2
    play n+16, attack: 3, sustain: 1, release: 2
  end
end

loop do
  dischord :As2
  sleep 4
  dischord :C3
  sleep 4
  dischord :C2
  sleep 4
  dischord :Ds2
  sleep 4
  sleep 16
end