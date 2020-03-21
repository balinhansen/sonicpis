play :G4
sleep 1
play :A4
sleep 0.5
play :As4
sleep 1
play :D4
sleep 1
play :D5
sleep 0.5
play :C5
sleep 1
play :As4
sleep 1
play :C5
sleep 0.5
play :G4
sleep 1.5

play_pattern_timed [:G4, :A4, :As4, :D4, :D5, :C5, :As4, :C5, :G4],[1,0.5,1,1,0.5,1,1,0.5,1.5]
use_synth_defaults attack: 0, release: 0.125, sustain: 0.125
play_pattern_timed [:G4, :A4, :As4, :D4, :D5, :C5, :As4, :C5, :G4],[1,0.5,1,1,0.5,1,1,0.5,1.5]

with_fx :echo, phase: 0.25+0.25/4 do
  play_pattern_timed [:G4, :A4, :As4, :D4, :D5, :C5, :As4, :C5, :G4],[1,0.5,1,1,0.5,1,1,0.5,1.5]
end


with_fx :reverb, room: 1, mix: 1 do
  play_pattern_timed [:G4, :A4, :As4, :D4, :D5, :C5, :As4, :C5, :G4],[1,0.5,1,1,0.5,1,1,0.5,1.5]
end

