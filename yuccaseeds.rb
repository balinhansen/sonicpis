use_bpm 85

loop do
  use_synth :saw
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
  with_fx :echo, phase: 0.125+0.125/4, max_phase: 1.25/2+1.25/8 do
    # with_fx :echo, phase: 0.25+0.25/4, max_phase: 1.25+1.25/4 do
    with_fx :reverb, mix: 0.2, room: 0.7 do
      
      4.times do
        play_pattern_timed [:E4, :G4, :B4, :C5],[0.25]
      end
      
      4.times do
        play_pattern_timed [:F4, :G4, :B4, :C5],[0.25]
      end
      
      4.times do
        play_pattern_timed [:D4, :F4, :A4, :As4],[0.25]
      end
      
      4.times do
        play_pattern_timed [:Ds4, :G4, :A4, :As4],[0.25]
      end
    end
  end
  # end
end
