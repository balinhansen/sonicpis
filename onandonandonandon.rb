in_thread do
  loop do
    sample :drum_cymbal_closed
    sleep 1
  end
end

sleep 8

use_synth :pluck

in_thread do
  loop do
    
    play_pattern_timed [:G3,:G3,:A4,:G4],[0.75,0.25,0.5,0.5]
    sleep 0.5
    play_pattern_timed [:E4,:D4,:E4,:D4,:C4],[0.5,0.25,0.25,0.25,0.25]
    
    play_pattern_timed [:G3,:G3,:A4,:G4],[0.75,0.25,0.5,0.5]
    sleep 0.5
    play_pattern_timed [:E4,:D4,:E4,:G4],[0.5,0.25,0.25,0.25]
    sleep 0.25
    
    play_pattern_timed [:G3,:G3,:A4,:G4],[0.75,0.25,0.5,0.5]
    sleep 0.5
    play_pattern_timed [:E4,:D4,:E4,:D4,:C4],[0.5,0.25,0.25,0.25,0.25]
    
    play_pattern_timed [:G3,:G3,:A4,:G4],[0.75,0.25,0.5,0.5]
    sleep 0.5
    play_pattern_timed [:E4,:D4,:E4,:G4,:E4],[0.5,0.25,0.25,0.25,0.25]
    
  end
end

sleep 16


in_thread do
  loop do
    play_pattern_timed [:A5,:G5,:A5,:G5,:E5],[0.5,0.25,0.25,0.25,0.25]
    play_pattern_timed [:D5,:E5,:G5,:C5],[0.5,0.25,0.5,0.25]
    sleep 5
  end
end

