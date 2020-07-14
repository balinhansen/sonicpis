
in_thread do
  loop do
    play :D5, attack: 1.5, release: 0
    
    sleep 1.5
    play :D4
    sleep 0.5
    
    play :A5, release: 0.5
    sleep 0.5
    play :F5, release: 0.5
    sleep 0.5
    play :E5, release: 0.5
    sleep 1
    
    
    play :C5, attack: 1.5, release: 0
    sleep 1.5
    play :C4
    sleep 0.5
    
    play :G5, release: 0.5
    sleep 0.5
    play :F5, release: 0.5
    sleep 0.5
    play :E5, release: 0.5
    sleep 1
  end
end

sleep 16

use_synth :saw
use_synth_defaults release: 0.25
in_thread do
  loop do
    play :D4
    sleep 0.25
    play_pattern_timed [:D4,:D4,:D4,:E4,:D4,:A3,:E4,:E4,:E4,:D4],[0.125]
    sleep 6.5
  end
end
sleep 16

use_synth :blade
use_synth_defaults release: 0.125
in_thread do
  loop do
    play_pattern_timed [:A3,:C4,:D4,:E4,:G4,:A4],[0.125]
    sleep 1.25
    play_pattern_timed [:B3,:Cs4,:E4,:Fs4,:A4,:B4],[0.125]
    sleep 1.25
  end
end

sleep 16


sample :drum_bass_hard
sleep 0.03125
sample :drum_snare_hard
sleep 0.21875
sample :drum_bass_hard
sleep 0.25
sample :drum_bass_hard
sleep 0.25
sample :drum_bass_hard
sleep 0.03125
sample :drum_snare_hard
sleep 0.21875
sample :drum_bass_hard
sleep 0.25
sample :drum_splash_hard
sleep 0.5
sample :drum_splash_hard
sleep 0.25
sample :drum_splash_hard
sleep 0.5

loop do
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.25
  
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.75
end