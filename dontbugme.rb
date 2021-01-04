in_thread do
  loop do
    2.times do
      play_pattern_timed [:G5,:F5,:G5,:G5,:C5,:C5],[0.1875,0.1875,0.1875,0.375,0.1875]
      sleep 0.1875
    end
    2.times do
      play_pattern_timed [:G5,:F5,:G5,:G5,:D5,:D5],[0.1875,0.1875,0.1875,0.375,0.1875]
      sleep 0.1875
    end
  end
end

define :drumhit do
  sleep 5.1875
  sample :drum_heavy_kick
  sleep 0.03125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_heavy_kick
  sleep 0.03125
  sample :drum_splash_hard
  sleep 0.375
  sleep 0.25
  
end


in_thread do
  drumhit
  drumhit
  
  loop do
    sleep 6
    drumhit
  end
end

sleep 6

use_synth :tb303
use_synth_defaults duration: 0.1875, attack: 0, release: 0, sustain: 0.1875

in_thread do
  loop do
    play_pattern_timed [:C5,:C5,:C5,:C5,:C5,:C5],[0.375,0.1875,0.375,0.1875,0.1875,0.1875]
    
    play_pattern_timed [:G5,:G5,:G5,:G5,:F5,:Ds5],[0.375,0.1875,0.375,0.1875,0.1875,0.1875]
    play_pattern_timed [:D5,:D5,:D5,:D5,:D5,:D5],[0.375,0.1875,0.375,0.1875,0.1875,0.1875]
    play_pattern_timed [:F5,:F5,:F5,:F5,:Ds5,:D5],[0.375,0.1875,0.375,0.1875,0.1875,0.1875]
  end
end


use_synth :zawa
use_synth_defaults

sleep 6
in_thread do
  loop do
    play_pattern_timed [:C5,:Ds5,:D5,:f5,:As4,:D5,:Gs4,:C5],[1.5]
  end
end

