
use_synth :tb303

play :d2
sleep 1
play :E2
sleep 1
play :F2
sleep 1
play :E2
sleep 1


use_synth :tb303

use_synth_defaults release: 0.125, sustain: 0

1.times do
  
  play_pattern_timed [:d2,:d2,:d2, :C2,:d2,:d2,:e2,:e2],[0.5,0.5,0.25,0.25,0.25,0.5,0.25]
  
  play_pattern_timed [:e2, :d2, :e2,:e2, :f2, :f2],[0.25,0.25,0.25,0.5,0.25,0.5]
  
  play_pattern_timed [:f2, :e2, :f2,:f2, :g2, :g2],[0.25,0.25,0.25,0.5,0.25,0.5]
  
  play_pattern_timed [:g2, :f2, :g2],[0.25,0.25,0.5]
end

use_synth :beep
play_pattern_timed [:a3, :c4, :d4, :e4, :g4, :a4],[0.125]