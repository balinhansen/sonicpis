use_bpm 45
use_synth :piano

loop do
  4.times do
    play_pattern_timed [:f3,:f3],[0.25,0.25]
    
    play_pattern_timed [:gs3,:c4,:gs4],[0.03125/2,0.03125/2,0.375-0.03125]
    
    play_pattern_timed [:gs4,:c4,:gs3],[0.03125/2,0.03125/2,0.175-0.03125]
  end
  
  4.times do
    play_pattern_timed [:ds3,:ds3],[0.25,0.25]
    
    play_pattern_timed [:gs3,:c4,:gs4],[0.03125/2,0.03125/2,0.375-0.03125]
    
    play_pattern_timed [:gs4,:c4,:gs3],[0.03125/2,0.03125/2,0.175-0.03125]
  end
  
  
  4.times do
    play_pattern_timed [:cs3,:cs3],[0.25,0.25]
    
    play_pattern_timed [:gs3,:cs4,:f4],[0.03125/2,0.03125/2,0.375-0.03125]
    
    play_pattern_timed [:f4,:cs4,:gs3],[0.03125/2,0.03125/2,0.175-0.03125]
  end
  
  
  4.times do
    play_pattern_timed [:ds3,:ds3],[0.25,0.25]
    
    play_pattern_timed [:gs3,:c4,:ds4],[0.03125/2,0.03125/2,0.375-0.03125]
    
    play_pattern_timed [:ds4,:c4,:gs3],[0.03125/2,0.03125/2,0.175-0.03125]
  end
end