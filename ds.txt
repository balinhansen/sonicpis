# Welcome to Sonic Pi v2.10

lull=1.75;

use_synth :sine

define :afx do
  s=play :G3, attack: 0.0625, release:2.5+2*lull, note_slide: 0.0625
  sleep 0.25
  control s, note: :A3
  sleep lull
  
  control s, note: :A5
  sleep 0.5
  control s, note: :G5
  sleep lull
  
  control s, note: :B6
  sleep 0.5
  control s, note: :Gb6
  sleep lull
end


define :afxbeat do
  sample :drum_heavy_kick
  sleep 0.25
  sample :drum_heavy_kick
  sleep 0.25
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_heavy_kick
  sleep 0.375
  
  sample :drum_snare_hard
  sleep lull
  
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_heavy_kick
  sleep 0.25
  sample :drum_heavy_kick
  sleep 0.25
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_heavy_kick
  sleep 0.375
  sample :drum_snare_hard
  sleep lull
end

in_thread(name: :synthloop) do
  afx
end

comment in_thread(name: :drumloop) do
  afxbeat
end

comment live_loop :foo do
  sample :drum_bass_soft
  sleep 1;
end
