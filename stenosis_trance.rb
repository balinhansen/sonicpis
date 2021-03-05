use_synth :tri

in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.625
  end
  
end

sleep 5


use_bpm 60
use_synth_defaults release: 0, sustain: 0.125

with_fx :echo, phase: 0.75*0.5, decay: 0.75*0.5*20 do
  loop do
    2.times do
      
      play_pattern_timed [:D4,:C4,:D4,:C4,:D4],[0.5,0.25]
      play_pattern_timed [:c4,:D4,:E4,:F4,:A4,:F4,:E4,:F4,:E4,:D4,:C4],[0.25]
      sleep 0.25
      puts "loop"
    end
    
    2.times do
      
      play_pattern_timed [:F4,:E4,:F4,:E4,:F4],[0.5,0.25]
      play_pattern_timed [:c4,:D4,:E4,:F4,:A4,:F4,:E4,:F4,:E4,:D4,:C4],[0.25]
      sleep 0.25
      puts "loop"
    end
    
  end
end
