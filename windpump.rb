comment do
  in_thread do
    loop do
      play :F4
      sleep 4
      play :A4
      sleep 4
      
    end
  end
end

use_synth_defaults release: 1;
#play_pattern_timed [:Gs4,:G4,:F4,:C4],[2]

#with_fx :echo, phase: 1*0.75, max_phase: 1*0.75*20 do

2.times do
  play_pattern_timed [:Gs4,:Gs4,:G4,:Gs4,:G4,:F4],[0.25]
  sleep 1
  
end
play_pattern_timed [:Ds4,:F4,:G4,:F4,:Ds4,:F4,:G4,:F4],[0.25]

sleep 0.5

play_pattern_timed [:Cs4,:Ds4,:F4,:Ds4,:G4,:F4,:Ds4,:F4],[0.25]

sleep 0.5

play_pattern_timed [:C4,:Cs4,:Ds4,:Cs4,:F4,:Ds4,:Cs4,:Ds4],[0.25]
#end
