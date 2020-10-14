
use_synth_defaults attack: 0, sustain: 0, release: 0.25
play_pattern_timed [:B5,:A5,:Gs5,:Fs5,:Gs5,:Fs5,:E5,:B5,:Gs5],[0.25,0.5,0.5,0.75,0.25,0.5,0.5,0.25,0.5]


in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
  end
end

sleep 4

use_synth_defaults attack: 0, sustain: 0, release: 0.25
in_thread do
  loop do
    play_pattern_timed [:Gs5,:Fs5,:A5,:Gs5,:Fs5,:E5],[2,2,0.25,1.75,1.75,0.25]
    
  end
end

sleep 8

use_synth :sine
use_synth_defaults
in_thread do
  loop do
    play_pattern_timed [:D4,:B3,:Cs4,:B3],[2,2,3.75,0.25]
    play_pattern_timed [:D4,:B3,:Cs4,:D4,:B3],[2,2,2,1.75,0.25]
  end
end

sleep 32

loop do
  play_pattern_timed [:B4,:E5,:Ds5,:B4,:Fs4,:A4,nil],[0.25,0.25,0.5,0.5,0.5,2,4]
  play_pattern_timed [:B4,:E5,:Ds5,:B4,:Fs4,:A4,nil,:B4,:Gs4,:Fs4],[0.25,0.25,0.5,0.5,0.5,1,1,0.25,0.5,2]
  sleep 1.25
end
