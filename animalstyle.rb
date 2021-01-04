
use_bpm 54

define :squeek do
  use_synth :blade
  n=play :D6, note_slide: 0.125, sustain: 0.125, release: 0.125
  sleep 0.125
  control n, note: :D7
  sleep 0.125
  use_synth_defaults release: 0.125
  play_pattern_timed [:D7,:D7,:D7],[0.125,0.125,0.125]
  n=play :D7, note_slide: 0.125, sustain: 0.125, release: 0
  control n, note: :d6
end

define :trumpet do
  use_synth :blade
  use_synth_defaults release: 0, sustain: 0.125
  with_fx :distortion, distort: 0.7 do
    2.times do
      
      play_pattern_timed [:D4,:D4,:C4],[0.125,0.125,0.125]
      sleep 0.125
      
    end
  end
end

use_bpm 60
comment do
  
  with_fx :reverb, mix: 0.8, room: 0.7 do
    4.times do
      
      squeek
      
      sleep 1.375
      
      trumpet
      sleep 1
      
    end
  end
  
  with_fx :reverb, mix: 0.8, room: 0.7 do
    4.times do
      in_thread do
        squeek
      end
      sleep 1.875
    end
  end
  
  with_fx :reverb, mix: 0.5, room: 0.5 do
    4.times do
      in_thread do
        squeek
      end
      sleep 0.875
    end
    
    8.times do
      in_thread do
        squeek
      end
      
      in_thread do
        trumpet
      end
      sleep 0.875
    end
  end
  
  use_bpm 60
  
  with_fx :reverb, mix: 0.5, room: 0.5 do
    4.times do
      in_thread do
        squeek
      end
      
      in_thread do
        trumpet
      end
      sleep 0.875
    end
  end
  
  use_bpm 66
  
  with_fx :reverb, mix: 0.5, room: 0.5 do
    8.times do
      in_thread do
        squeek
      end
      
      in_thread do
        trumpet
      end
      sleep 0.875
    end
  end
  
  use_bpm 60
  
  4.times do
    sample :drum_tom_hi_soft
    sleep 0.125
    sample :drum_tom_mid_soft
    sleep 0.125
    sample :drum_tom_lo_soft
    sleep 0.125
    sample :drum_tom_mid_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.125
    sleep 0.375
  end
  
  8.times do
    sample :drum_tom_hi_soft
    sleep 0.125
    sample :drum_tom_mid_soft
    sleep 0.125
    sample :drum_tom_lo_soft
    sleep 0.125
    sample :drum_tom_mid_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.125
    sample :drum_tom_lo_soft
    sleep 0.125
    sample :drum_tom_mid_soft
    sleep 0.125
    sample :drum_tom_lo_soft
    sleep 0.125
  end
  
end

in_thread do
  loop do
    sample :drum_tom_hi_hard
    sleep 0.125
    sample :drum_tom_mid_hard
    sleep 0.125
    sample :drum_tom_lo_hard
    sleep 0.125
    sample :drum_tom_mid_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_tom_lo_hard
    sleep 0.125
    sample :drum_tom_mid_hard
    sleep 0.125
    sample :drum_tom_lo_hard
    sleep 0.125
  end
end
sleep 8

in_thread do
  use_synth :tb303
  with_fx :reverb, mix: 0.5, room: 0.5 do
    loop do
      in_thread do
        play :Ds2, release: 0, sustain: 0.125
        sleep 0.375
        play :Ds2, release: 0, sustain: 0.125
        sleep 0.125
        play :Cs2, release: 0, sustain: 0.125
        sleep 0.25
        play :Ds2, release: 0, sustain: 0.125
        sleep 0.25
      end
      sleep 1
    end
  end
end

sleep 8

with_fx :distortion, distort: 0.9 do
  with_fx :reverb, mix: 0.5, room: 1 do
    4.times do
      
      squeek
      
      sleep 1.375
      
      trumpet
      sleep 1
      
    end
  end
end

with_fx :distortion, distort: 0.9 do
  with_fx :reverb, mix: 0.5, room: 1 do
    loop do
      in_thread do
        squeek
      end
      sleep 1
    end
  end
end
