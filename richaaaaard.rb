live_loop :afx do
  use_synth :beep
  use_synth_defaults duration: 0.125, attack: 0.0625, release: 0.0625
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    with_fx :reverb, room: 0.7, mix: 0.5 do
      play :Fs5
      sleep 0.5
      play :Fs5
      sleep 0.5
      play_pattern_timed [:Fs5, :F5, :Fs5],[0.25]
      play :F5
      sleep 0.5
      play :F5
      sleep 0.5
      play_pattern_timed [:F5, :Ds5, :F5],[0.25]
      play :Cs5
      sleep 0.5
      play :Cs5
      sleep 0.5
      play_pattern_timed [:f5,:Cs5, :F5],[0.25]
      play :F5
      sleep 0.5
      play :Fs5
      sleep 0.5
      play :Ds5
      sleep 0.25
    end
  end
end
