use_bpm 45
use_synth_defaults sustain: 0.125, release: 0

define :melody do
  play_pattern_timed [:E5,:G5,:B5,:C6,:B5,:Fs5],[0.5,0.5,0.5,0.25,0.25,0.75]
  play_pattern_timed [:G5, :Fs5, :G5, :Fs5, :G5],[0.25]
end


2.times do
  melody
end


in_thread do
  with_fx :echo, phase: 0.5*0.75 do
    55.times do
      melody
    end
  end
end

sleep 8

in_thread do
  104.times do
    sample :drum_bass_hard
    sleep 0.375
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.375
    
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.5
  end
end

sleep 16

use_synth :tri
with_fx :reverb, room: 1, mix: 0.5 do
  use_synth_defaults attack: 1, sustain: 3, release: 1
  in_thread do
    14.times do
      play_pattern_timed [:E4,:D4,:C4,:B3],[4]
    end
  end
end


sleep 32


use_synth :tech_saws
use_synth_defaults attack: 0, sustain: 4, release: 0
with_fx :distortion, distort: 0.8 do
  with_fx :panslicer, phase: 0.125 do
    in_thread do
      11.times do
        play [:A0,:A1,:A2]
        sleep 4
        play [:E0,:E1,:E2]
        sleep 4
        play [:G0,:G1,:G2]
        sleep 4
        play [:D0,:D1,:D2]
        sleep 4
      end
    end
  end
end

sleep 32

with_fx :reverb, room: 1, mix: 1 do
  with_fx :echo, phase: 1 do
    use_synth :tri
    4.times do
      t=play :A4, note_slide: 2, env_curve: 7, attack: 1, sustain: 2, release: 1
      control t, note: :B6
      sleep 8
      
      t=play :B6, note_slide: 2, env_curve: 7, attack: 1, sustain: 2, release: 1
      control t, note: :E5
      sleep 8
      
      
      t=play :E5, note_slide: 2, env_curve: 7, attack: 1, sustain: 2, release: 1
      control t, note: :G6
      sleep 8
      
      
      t=play :G6, note_slide: 2, env_curve: 7, attack: 1, sustain: 2, release: 1
      control t, note: :D5
      sleep 8
    end
  end
end


in_thread do
  80.times do
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
  end
end

sleep 4

in_thread do
  use_synth :sine
  use_synth_defaults sustain: 0.125, release: 0
  melody
end

sleep 28

use_synth :sine
use_synth_defaults sustain: 0.125, release: 0

in_thread do
  with_fx :echo, phase: 0.5*0.75 do
    2.times do
      melody
    end
  end
end

sleep 8

melody