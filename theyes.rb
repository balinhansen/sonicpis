use_synth :saw
use_synth_defaults attack: 0, sustain: 0.125, release: 0
use_bpm 60

with_fx :reverb do
  2.times do
    play :D4
    sleep 2
    play_pattern_timed [:D4, :Ds4, :D4],[0.125,0.25]
    sleep 1.5
  end
  
  2.times do
    play :D4
    sleep 2
    play_pattern_timed [:D4,:As4,:As4, :G4,:F4,:Ds4],[0.125,0.25,0.125,0.25,0.25,0.25]
    sleep 0.75
  end
  
  2.times do
    play :D4
    sleep 2
    play_pattern_timed [:D4,:As4,:As4, :G4,:Gs4,:A4],[0.125,0.25,0.125,0.25,0.25,0.25]
    sleep 1
  end
end
