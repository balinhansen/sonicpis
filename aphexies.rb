#unknown afx tracks


in_thread do
  loop do
    
    4.times do
      sample :elec_soft_kick
      sleep 0.25
      
      2.times do
        sample :elec_soft_kick
        sleep 0.125
      end
      
      sample :elec_mid_snare
      sleep 0.5
    end
    
    
    4.times do
      sample :elec_soft_kick
      sleep 0.25
      
      2.times do
        sample :elec_soft_kick
        sleep 0.125
      end
      
      sample :elec_mid_snare
      sleep 0.125
      1.times do
        sample :elec_soft_kick
        sleep 0.125
      end
      sleep 0.25
    end
  end
end



comment do
  use_synth :square
  use_synth_defaults attack: 0, sustain: 0.125, release: 0
  
  #with_fx :whammy do
  #with_fx :distortion, distort: 0.1 do
  # with_fx :gverb do
  
  2.times do
    play :a2
    sleep 0.25
  end
  sleep 1
  
  2.times do
    play :a2
    sleep 0.25
  end
  2.times do
    play :cs3
    sleep 0.25
  end
  sleep 1
  
  2.times do
    play :cs3
    sleep 0.25
  end
  2.times do
    play :f2
    sleep 0.25
  end
  
  sleep 1
  2.times do
    play :f2
    sleep 0.25
  end
  2.times do
    play :f1
    sleep 0.25
  end
  
  
  # end
  #end
  #end
  
end

sleep 16

loop do
  in_thread do
    use_synth :saw
    use_synth_defaults attack: 0.333, amp: 0.1
    play_pattern_timed [:d4,:cs4,:a3,:e4,:fs4,[:g3,:g4],:a3],[1,1,2,1,1,2,2,4]
  end
  in_thread do
    use_synth :tri
    use_synth_defaults amp: 0.2
    play_pattern_timed [:d4,:cs4,:a3,:e4,:fs4,:g3,:a3],[1,1,2,1,1,2,2,4]
  end
  
  sleep 16
end

