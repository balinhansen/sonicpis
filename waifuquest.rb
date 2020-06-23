use_synth_defaults attack: 0, release: 0, duration: 0

define :riff do
  play_pattern_timed [:F4,:Ds4,:F4],[0.25,0.25,1,0.5]
  play_pattern_timed [:Ds4, :F4, :G4, :Gs4, :G4, :Gs4, :G4, :As4, :Gs4, :G4, :Ds4],[0.25]
end


in_thread do
  loop do
    use_synth :pulse
    riff
  end
end

in_thread do
  loop do
    use_synth :saw
    riff
  end
end

in_thread do
  loop do
    use_synth :tri
    riff
  end
end

