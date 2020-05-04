
3.times do
  use_synth :noise
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
  play :A3
  
  sleep 0.25
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.5
end

1.times do
  use_synth :noise
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
  play :A3
  sleep 0.5
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
  play :A3
  
  sleep 0.25
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.5
end

1.times do
  use_synth :noise
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
  play :A3
  sleep 0.5
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
  play :A3
  sleep 0.25
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
  play :A3
  
  sleep 0.25
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.5
end

use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
play :A3
sleep 0.5
play :A3
sleep 0.25
play :A3
sleep 0.5
play :A3
sleep 0.25
play :A3
sleep 0.25
play :A3
sleep 0.5
play :A3
sleep 0.25
play :A3
sleep 0.5
play :A3
sleep 0.25
play :A3
sleep 0.25
play :A3
sleep 0.5


use_synth :pulse
use_synth_defaults attack: 0, sustain: 0.03125, release: 0
play_pattern_timed [:C7,:C6,:B6,:B5,:As6,:As5,:A6,:A5,:Gs6,:Gs5,:G6,:G5,:Fs6,:Fs5,:F6,:F5,:E6,:E5,:Ds6,:Ds5,:D6,:D5,:Cs6,:Cs5],[0.03125]
use_synth_defaults attack: 0, sustain: 0.03125, release: 0.0625
5.times do
  play_pattern_timed [:C4, :F4,:A4,:C5],[0.03125] #03125]
end
use_synth_defaults attack: 0, sustain: 0.5, release: 0.0, note_slide: 0.5
n=play :C6
control n, note: :C2
sleep 0.5
use_synth :noise
use_synth_defaults attack: 0, sustain: 1, release: 0
with_fx :nbpf, centre: :C1 do
  play :A3
end
sleep 1


4.times do
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 1.125
end


live_loop :drumriff do
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
end

sleep 8


use_synth :saw
use_synth_defaults attack: 0, sustain: 0.125, release: 0
4.times do
  play_pattern_timed [:C2, :C3,:C3,:As2,:C3,:As2,:Cs3,:C3,:As2],[0.25,0.25,0.25,0.125,0.25,0.125,0.25,0.25]
end

4.times do
  play_pattern_timed [:C2, :C3,:C3,:C3,:As2,:C3,:C3,:As2,:Cs3,:C3,:C3,:As2],[0.25,0.125,0.25,0.125,0.125,0.125,0.125,0.125,0.25,0.125,0.125]
end

4.times do
  play_pattern_timed [:C2, :C3,:C3,:C3,:C3,:C3,:As2,:C3,:C3,:As2,:Cs3,:Cs3,:C3,:C3,:As2,:As2],[0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125]
end


2.times do
  use_synth :tech_saws
  use_synth_defaults attack: 0, sustain: 0.5, release: 1
  with_fx :reverb, mix: 1, room: 1 do
    play_pattern_timed [:E4,:C4,:F4,:G4,:Ds4,:C4,:D4],[1,0.5,1,0.5,1,0.5,3.5]
  end
  
  use_synth :pulse
  use_synth_defaults attack: 0, sustain: 0.03125, release: 0
  play_pattern_timed [:C7,:C6,:B6,:B5,:As6,:As5,:A6,:A5,:Gs6,:Gs5,:G6,:G5,:Fs6,:Fs5,:F6,:F5,:E6,:E5,:Ds6,:Ds5,:D6,:D5,:Cs6,:Cs5],[0.03125]
  use_synth_defaults attack: 0, sustain: 0.03125, release: 0.0625
  5.times do
    play_pattern_timed [:C4, :F4,:A4,:C5],[0.03125] #03125]
  end
  use_synth_defaults attack: 0, sustain: 0.5, release: 0.0, note_slide: 0.5
  n=play :C6
  control n, note: :C2
  sleep 0.5
  use_synth :noise
  use_synth_defaults attack: 0, sustain: 1, release: 0
  with_fx :nbpf, centre: :C1 do
    play :A3
  end
  sleep 2.125
  
  
end
