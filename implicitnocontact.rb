in_thread do
  with_fx :reverb, room: 0.6, mix: 0.5 do
    with_fx :echo, phase: 0.75*0.5, max_phase: 0.75*0.5*20 do
      loop do
        use_synth :zawa
        use_synth_defaults range: 36, res: 0.9, wave: 1, phase: 0.25, sustain: 0, release: 2, attack: 0
        play :Fs1
        sleep 4
        play :Fs1
        sleep 4
        play :E1
        sleep 4
        play :E1
        sleep 4
      end
    end
  end
end

in_thread do
  with_fx :reverb, room: 1, mix: 0.5 do
    loop do
      use_synth :tb303
      use_synth_defaults sustain: 1, release: 1, attack: 1, res: 0.4
      play [:Fs1,:Fs2,:Fs3]
      sleep 4
      play [:Fs1,:Fs2,:Fs3]
      sleep 4
      play [:E1,:E2,:E3]
      sleep 4
      play [:E1,:E2,:E3]
      sleep 4
    end
  end
end

in_thread do
  loop do
    with_fx :reverb, room: 0.6, mix: 0.5 do
      with_fx :echo, phase: 0.75*0.5, max_phase: 0.75*0.5*20 do
        use_synth :beep
        use_synth_defaults release: 0, sustain: 0.125
        
        play_pattern_timed [:Cs5,:D5,:E5,:B5,:Gs5,:Fs5],[0.5,0.25,0.25,0.25,0.25,0.5]
        play_pattern_timed [:gs5,:Fs5,:Gs5,:Fs5,:Gs5],[0.25]
        sleep 4.75
        
        use_synth :beep
        use_synth_defaults release: 0, sustain: 0.125
        
        play_pattern_timed [:Cs5,:D5,:E5,:B5,:Gs5,:Fs5],[0.5,0.25,0.25,0.25,0.25,0.5]
        play_pattern_timed [:Fs5,:E5,:Fs5,:E5,:fs5],[0.25]
        sleep 4.75
        
      end
    end
  end
end


with_fx :reverb, room: 0.6, mix: 0.5 do
  with_fx :echo, phase: 0.75*0.5, max_phase: 0.75*0.5*20 do
    loop do
      use_synth :tri
      use_synth_defaults sustain: 0.0625, release: 0.0625
      2.times do
        play_pattern_timed [:Gs5, :Fs5, :E5, :Cs5, :E5, :fs5],[0.25,0.25,0.25,0.25,0.375]
        sleep 0.375
      end
      
      2.times do
        play_pattern_timed [:Gs5, :Fs5, :E5, :Cs5, :Ds5, :E5],[0.25,0.25,0.25,0.25,0.375]
      end
      sleep 0.375
    end
  end
end
