use_synth :pluck
use_synth_defaults

plock=0.02

with_fx :distortion, distort: 0.5, amp: 0.25 do
  
  loop do
    2.times do
      3.times do
        play :B3, attack: 0, sustain: plock, release: 0
        sleep 0.125-plock
      end
      
      play :D4
      sleep plock*3
      sleep 0.375
    end
    
    
    3.times do
      play :B3, attack: 0, sustain: plock, release: 0
      sleep 0.125-plock
    end
    
    play :D4
    sleep 0.125
    
    2.times do
      play :B3, attack: 0, sustain: plock, release: 0
      sleep 0.125-plock
    end
    sleep 0.0625
    
    play :Ds4
    sleep 0.125
    
    2.times do
      play :B3, attack: 0, sustain: plock, release: 0
      sleep 0.125-plock
    end
    sleep 0.0625
    
    play :D4
    
    sleep plock*7
    sleep 0.25
    
  end
end