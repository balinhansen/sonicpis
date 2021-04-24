use_synth :tb303

use_synth_defaults sustain: 0, release: 0.125, res: 0.9, attack: 0, cutoff_attack: 0, wave: 0


use_bpm 60
loop do
  play :A1, sustain: 1.5
  sleep 0.25
  
  play_pattern_timed [:Cs3,:d3,:F3,:C4,:A3],[0.25]
  
  play :F1, sustain: 0.5
  sleep 0.5
  play :D1, sustain: 2
  sleep 0.25
  play_pattern_timed [:E3,:E3,:F3,:A3],[0.5,0.25,0.25]
  sleep 0.25
end