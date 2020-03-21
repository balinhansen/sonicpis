
live_loop :closer do
  with_fx :echo, phase: 0.5+0.5/4, decay: 7, mix: 1, max_phase: 5, amp: 1 do
    with_fx :reverb, room: 1, mix: 1 do
      use_synth :sine
      use_synth_defaults attack: 0, sustain: 0.25, release: 0.75
      #play_pattern_timed [:A5,:B5,:G5,:G4,:D5],[0.5,0.5,1,1,5], amp: 1
    end
  end
end

live_loop :close do
  use_bpm 85
  notes=[:A4, :B4,:G4,:D4]
  #notes=[:A4, :B4,:G4, :D4,:D5,:C5,:B4,:C5]
  
  
  
  in_thread do
    use_synth :sine
    use_synth_defaults attack: 0, release: 0, sustain: 0.25
    #play_pattern_timed notes,[0.25]
  end
  in_thread do
    use_synth :saw
    use_synth_defaults attack: 0, release: 0, sustain: 0.0625, pitch: -12
    #play_pattern_timed notes,[0.25]
  end
  in_thread do
    use_synth :pretty_bell
    use_synth_defaults attack: 0.1875, release: 0, sustain: 0.0625, delay: 0, pitch: -24
    #play_pattern_timed notes,[0.25]
  end
  sleep 1
  
end
