use_bpm 40

loop do
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_tom_mid_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_bass_hard
  
  sleep 0.25
  
  sample :drum_tom_hi_hard
  sleep 0.25
  
  puts "loop"
end