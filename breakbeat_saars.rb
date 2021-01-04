use_synth :noise
use_synth_defaults attack:0, release: 0, sustain: 0.03125

use_bpm 56


comment do
  loop do
    
    play :A3
    sleep 0.125
    
    play :A3
    sleep 0.0625
    play :A3
    sleep 0.0625
    play :A3
    
    sleep 0.1875
    play :A3
    sleep 0.0625
    play :A3
    
    sleep 0.1875
    
    
    play :A3
    sleep 0.0625
    play :A3
    sleep 0.125
    play :A3
    
    sleep 0.125
    
    play :A3
    sleep 0.125
    
    play :A3
    sleep 0.0625
    play :A3
    sleep 0.0625
    play :A3
    
    sleep 0.1875
    play :A3
    sleep 0.0625
    play :A3
    
    sleep 0.1875
    play :A3
    
    
    sleep 0.3125
  end
end



use_synth :noise
use_synth_defaults attack:0, release: 0, sustain: 0.03125

loop do
  
  sample :drum_bass_hard
  sleep 0.1875
  
  sample :drum_tom_mid_hard
  sleep 0.0625
  sample :drum_tom_lo_hard
  sleep 0.0625
  sample :drum_tom_mid_hard
  
  sleep 0.1875
  sample :drum_bass_hard
  sleep 0.0625
  sample :drum_snare_hard
  
  
  sleep 0.1875
  
  
  sample :drum_tom_mid_hard
  sleep 0.0625
  sample :drum_tom_lo_hard
  sleep 0.0625
  sample :drum_tom_mid_hard
  
  
  sleep 0.125
  
  sample :drum_bass_hard
  sleep 0.1875
  
  sample :drum_tom_mid_hard
  sleep 0.0625
  sample :drum_tom_lo_hard
  sleep 0.0625
  sample :drum_tom_mid_hard
  
  
  sleep 0.1875
  sample :drum_bass_hard
  sleep 0.0625
  sample :drum_snare_hard
  
  
  sleep 0.1875
  #sample :drum_tom_mid_hard
  #sleep 0.25
  
  
end
