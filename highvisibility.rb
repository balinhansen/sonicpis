use_bpm 45

live_loop :slashhit do
  
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  
  # 1.125
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_splash_hard
  sleep 0.25
  
  # 1.625
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_splash_hard
  sleep 0.25
  
  # 2.125
  
  sleep 0.75
  sleep 9
end

sleep 3
  live_loop :intro do
    play :fs4
    sleep 0.25
    play :D4
    sleep 0.75
    
    play :A4
    sleep 0.25
    play :Gs4
    sleep 0.25
    play :E4
    
    sleep 1.25
    
    play :fs4
    sleep 0.25
  end

sleep 6

live_loop :drums do |a|
  
  puts a
  
  if (a === nil)
    a=0;
  end
  
  
  a+=1
  if (a != 2) then
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
    # 0.75
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 1.5
  else
    puts "Do Nothing!"
    sleep 3
  end
  
  if a >= 4 then
    a=0
  end
  
  puts a
end
