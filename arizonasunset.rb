in_thread do
  58.times do
    sample :drum_tom_hi_soft
    sleep 0.375
    sample :drum_tom_hi_soft
    sleep 0.25
    sample :drum_tom_mid_soft
    sleep 0.125
    sample :drum_tom_hi_soft
    sleep 0.25
  end
end

sleep 8


in_thread do
  loop do
    play_pattern_timed [:D4,:Cs4,:Fs4,:B3,:Cs4],[1,1,1,0.5,0.5]
  end
end

sleep 16


use_synth :tri
in_thread do
  loop do
    play_pattern_timed [:d4,:cs4,:d4,:a4,:Fs4,:fs4,:fs4],[0.25,0.125,0.125,0.25,0.25,0.25]
    sleep 2.5
    play_pattern_timed [:E4,:cs4,:D4,:E4,:A3,:A3,:A3],[0.25,0.125,0.125,0.125,0.25,0.25,0.25]
    sleep 2.625
  end
end


sleep 16

use_synth :tb303
use_synth_defaults release: 0.125, sustain: 0, attack: 0

in_thread do
  loop do
    play_pattern_timed [:D4],[0.125]
    sleep 0.25
    play_pattern_timed [:D4,:Cs4,:D4],[0.25,0.125,0.125]
    sleep 0.125
    play :Cs4
    
    sleep 0.5
    play_pattern_timed [:Cs4,:A3,:Cs4],[0.25,0.125,0.125]
    sleep 0.125
    play :Fs4
    
    sleep 0.5
    play_pattern_timed [:Fs4,:E4,:Fs4],[0.25,0.125,0.125]
    sleep 0.125
    play :B3
    
    sleep 0.5
    play_pattern_timed [:Cs4,:B3,:Cs4],[0.25,0.125,0.125]
    sleep 0.125
  end
end

sleep 16

in_thread do
  loop do
    sample :drum_snare_hard
    sleep 0.375
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.25
  end
end