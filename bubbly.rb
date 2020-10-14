use_bpm 60
use_synth :zawa
use_synth_defaults release: 0.125, sustain: 0.125, range: 12, phase: 0.0625

with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
  
  8.times do
    play_pattern_timed [:D5,:Cs5,:D5,:A4],[0.25]
  end
  8.times do
    play_pattern_timed [:B4,:A4,:B4,:Fs4],[0.25]
  end
  8.times do
    play_pattern_timed [:G4,:Fs4,:G4,:D4],[0.25]
  end
  8.times do
    play_pattern_timed [:cs4,:A3,:cs4,:D4],[0.25]
  end
  
end