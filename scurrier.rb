in_thread do
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_bass_soft
  sleep 0.25
  
  loop do
    
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.125
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.25
    
  end
end

sleep 8

with_fx :echo, phase: 0.2, decay: 2 do
  loop do
    n=play :B3
    sleep 0.125
    control n, note: :Cs4
    sleep 0.5
    n=play :B3
    sleep 0.125
    control n, note: :gs3
    sleep 0.5
  end
end
