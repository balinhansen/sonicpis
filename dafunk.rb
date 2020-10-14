use_synth :tb303
use_synth_defaults res: 0.97, wave: 0
use_bpm 52

define :funk do
  with_fx :distortion, distort: 0.99, amp: 0.5 do
    play :G4
    sleep 1
    
    play :F4, release: 0.25
    sleep 0.25
    play :G4, release: 0.25
    sleep 0.25
    play :As4, release: 0.25
    sleep 0.25
    play :D4, release: 1.25
    sleep 1.25
    
    play :C4, release: 0.25
    sleep 0.25
    play :D4, release: 0.25
    sleep 0.25
    play :F4, release: 0.25
    sleep 0.25
    play :As3, release: 1.25
    sleep 1.25
    
    play :A3, release: 0.25
    sleep 0.25
    play :As3, release: 0.25
    sleep 0.25
    play :D4, release: 0.25
    sleep 0.25
    play :G3, release: 1
    sleep 1
    
    play :G3, release: 0.25
    sleep 0.25
    play :A3, release: 0.5
    sleep 0.5
    play :As3, release: 0.5
    sleep 0.5
  end
  
end

2.times do
  funk
end


in_thread do
  loop do
    sample :drum_bass_hard
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_snare_hard
    sample :drum_cymbal_closed
    sleep 0.125
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.125
  end
end

sleep 4

in_thread do
  loop do
    with_fx :distortion, distort: 0.99999 do
      play :G1, release: 0.125
      sleep 0.125
      play :As3, release: 0.125
      sleep 0.125
      play :G1, release: 0.125
      sleep 0.25
      play :Ds3, release: 0.125
      sleep 0.25
      play :G1, release: 0.125
      sleep 0.25
      play :Ds4, release: 0.125
      sleep 0.25
      play :F3, release: 0.125
      sleep 0.125
      play :G3, release: 0.125
      sleep 0.25
      play :G1, release: 0.25
      sleep 0.375
    end
  end
end

sleep 16

loop do
  2.times do
    funk
  end
  sleep 16
end
