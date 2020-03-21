live_loop :rep do
  use_synth :saw
  play_pattern_timed [:D4, :B3, :b3, :b3, :d4,:e4,:b3,:b3,:b3,:d4],[0.25,0.125,0.25,0.125,0.25,0.25,0.125,0.25,0.125,0.25]
end

live_loop :solo do
  use_synth :pulse
  play_pattern_timed [:A5,:g5,:fs5,:d5],[1]
end
