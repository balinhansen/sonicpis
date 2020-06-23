
in_thread do
  loop do
    2.times do
      play_pattern_timed [:Ds5,:D5,:C5,:D5,:Ds5,:G5],[0.25]
      sleep 0.5
    end
    
    2.times do
      play_pattern_timed [:Ds5,:D5,:C5,:D5,:Ds5,:Gs5],[0.25]
      sleep 0.5
    end
    
    2.times do
      play_pattern_timed [:Ds5,:D5,:C5,:D5,:Ds5,:As5],[0.25]
      sleep 0.5
    end
    
    2.times do
      play_pattern_timed [:Ds5,:D5,:C5,:D5,:Ds5,:Gs5],[0.25]
      sleep 0.5
    end
    
  end
end

sleep 16

use_synth :tech_saws
use_synth_defaults attack: 0.0, sustain: 0.125, release: 0.125

in_thread do
  with_fx :reverb, room: 1, mix: 1 do
    loop do
      2.times do
        2.times do
          play_pattern_timed [:C5,:Ds5,:G5,:C5,:Ds5,:G5,:C5,:Ds5],[0.125]
        end
        2.times do
          play_pattern_timed [:C5,:Ds5,:Gs5,:C5,:Ds5,:Gs5,:C5,:Ds5],[0.125]
        end
        2.times do
          play_pattern_timed [:C5,:Ds5,:As5,:C5,:Ds5,:As5,:C5,:Ds5],[0.125]
        end
        2.times do
          play_pattern_timed [:C5,:Ds5,:Gs5,:C5,:Ds5,:Gs5,:C5,:Ds5],[0.125]
        end
      end
    end
  end
end

sleep 16


use_synth :prophet
use_synth_defaults attack: 1.0, sustain: 1.0, release: 2.0

in_thread do
  loop do
    play [:C3,:C4,:C5]
    sleep 4
    play [:As2,:As3,:As4]
    sleep 4
    play [:Gs2,:Gs3,:Gs4]
    sleep 4
    play [:G2,:G3,:G4]
    sleep 4
  end
end
