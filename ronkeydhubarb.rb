

use_synth :piano
use_synth_defaults attack: 0, release: 0, sustain: 0.15


play :C4
sleep 0.25
play :F4
sleep 0.35
play :A4
sleep 0.40

play :F4
sleep 0.25
play :A4
sleep 0.25
play :G4
sleep 0.35
play :C5
sleep 1.0


play :F4
play_pattern_timed [:C4, :C4, :F4,  :G4,  :A4,  :G4,  :F4,  :G4],[0.25, 0.25, 0.25, 0.25, 0.35, 0.40,0.25]

play_pattern_timed [:G4,  :F4,  :G4,  :G4,  :G4,  :A4, :f4],[0.25, 0.40, 0.30, 0.25, 0.15, 0.15]

sleep 1

play [:A3, :C4, :F4]
sleep 0.50
play [:C4, :A4, :F4]
sleep 0.50
play [:F4, :C5, :G4]