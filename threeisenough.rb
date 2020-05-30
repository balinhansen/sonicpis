use_synth :saw
use_synth_defaults attack: 0, sustain: 0.2, release: 0

with_fx :reverb, room: 1, mix: 0.5 do
  
  loop do
    in_thread do
      play_pattern_timed [:C4, :Ds4, :D4, :C4, :D4, :Ds4, :C4, :D4, :Ds4, :a4],[0.2]
    end
    sleep 2
  end
  
end

