use_synth :saw
use_synth_defaults release: 0, sustain: 0.0625

with_fx :echo, decay: 0.75*0.5*4, phase: 0.75*0.5 do
  play_pattern_timed [:G5,:E5,:D5,:E5,
                      :G5,:E5,:G5,:B5,
                      :A5,:B5,:A5,:G5,
                      :A5,:G5,:E5,:D5,
                      :E5,:D5,:G5,:A5,
                      :G5,:E5,:F5,:E5,
                      :D5,:C5,:B4,:A4,
                      :B4,:C5,:D5,:G5],[0.25]
end
