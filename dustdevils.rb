
use_synth :tri
use_synth_defaults release: 0.125

in_thread do
  loop do
    4.times do
      play_pattern_timed [:As3,:c4,:c4,:c4,:G4,:c4,:c4,:c4],[0.125]
    end
    
    4.times do
      play_pattern_timed [:d4,:ds4,:Ds4,:ds4,:As4,:ds4,:ds4,:ds4],[0.125]
    end
    
    4.times do
      play_pattern_timed [:e4,:f4,:f4,:f4,:c5,:f4,:f4,:f4],[0.125]
    end
    
    4.times do
      play_pattern_timed [:d4,:ds4,:Ds4,:ds4,:As4,:ds4,:ds4,:ds4],[0.125]
    end
    
  end
end

sleep 20

in_thread do
  
  loop do
    use_synth :tech_saws
    use_synth_defaults attack: 1, release: 5
    play_pattern_timed [:Ds4, :d4,:C4,:as3],[4]
    
    play_pattern_timed [:Ds4, :F4,:C4,:as3],[4]
  end
end

sleep 28


use_synth :sine
use_synth_defaults
loop do
  play_pattern_timed [:G4,:g4, :f4,:d4,:f4,:g4,:d4],[0.25,0.125,0.125,0.25,0.25,0.125,0.125]
  sleep 0.75
  play_pattern_timed [:As3,:as3, :c4,:ds4,:as4,:gs4,:g4,:d4],[0.25,0.125,0.125,0.25,0.25,0.25,0.125,0.125]
  sleep 4.5
end