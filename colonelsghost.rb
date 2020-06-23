use_bpm 42

in_thread do
  loop do
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_snare_soft
    sleep 0.5-0.1875/2-0.125
    
    sample :drum_bass_soft
    sleep 0.1875/2
    sample :drum_snare_soft
    sleep 0.125
    
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    
    sleep 0.5
  end
end

sleep 4

use_synth :pluck
loop do
  play :Fs5
  sleep 2
  play_pattern_timed [:Cs5,:D5,:E5],[0.375,0.375,0.5]
  sleep 0.75
  play_pattern_timed [:A4,:B4,:E5],[0.375,0.375,0.5]
  sleep 0.75
  play_pattern_timed [:Gs4,:A4,:Cs5],[0.375,0.375,0.5]
  sleep 4.75
end
