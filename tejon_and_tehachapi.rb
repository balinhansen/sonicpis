use_bpm 60

use_synth :sine
use_synth_defaults amp: 0.25, attack: 0.125, sustain: 0.125, decay: 0


define :sequenceone do
  play_pattern_timed [:C4,:G4,:Ds4,:C4,:G4,:F4,:Ds4,:D4,:Ds4,:F4,:As3,:C4,:A3],[0.25]
  sleep 0.75
end

define :tejon do
  in_thread do
    play 59
    sleep 0.5
    play 68
    sleep 1
    play 64
    sleep 1
    
    play 59
    sleep 0.5
    play 68
    sleep 0.5
    play 66
    sleep 0.5
    play 64
    sleep 0.5
    play 62
    sleep 0.5
    play 61
    
    sleep 1
    play 64
    sleep 0.5
    play 59
    
    sleep 1
    play 61
    sleep 0.5
    play 57
    
    sleep 1
    play 59
    sleep 0.5
    play 56
    
    sleep 1
  end
end


define :tejona do
  in_thread do
    play 59
    sleep 0.5
    play 66
    sleep 1.5
    play 62
    
    sleep 1.5
    play 59
    sleep 0.5
    play 66
    sleep 0.5
    play 64
    sleep 0.5
    play 62
    sleep 0.5
    play 61
    sleep 0.5
    play 59
    sleep 0.5
    play 64
    sleep 0.5
    play 57
    sleep 1.5
    play 59
    sleep 0.5
    play 56
  end
end

define :tejonparta do
  use_synth_defaults sustain: 0.5, amp: 0.25
  play :C4
  sleep 0.5
  use_synth_defaults sustain: 1, amp: 0.25
  play :G4
  sleep 1.5
  play :Ds4
  sleep 2
end

define :tejonpartb do
  use_synth_defaults sustain: 0.5, amp: 0.25
  play :C4
  sleep 0.5
  use_synth_defaults sustain: 1, amp: 0.25
  play :G4
  sleep 0.5
  play :F4
  use_synth_defaults sustain: 0.5, amp: 0.25
  sleep 0.5
  play :Ds4
  sleep 0.5
  play :D4
  sleep 1.5
end

define :tejonpartc do
  use_synth_defaults sustain: 0.5, amp: 0.25
  play :Ds4
  sleep 0.5
  use_synth_defaults sustain: 1, amp: 0.25
  play :F4
  sleep 0.5
  play :As3
  use_synth_defaults sustain: 0.5, amp: 0.25
  sleep 1.5
  play :C4
  sleep 0.5
  play :A3
  sleep 0.5
end





define :ambientone do
  use_synth :sine
  use_synth_defaults attack: 1, sustain: 3, release: 1, amp: 0.25
  in_thread do
    play_pattern_timed [:C4,:Ds4,:As3,:A3],[4]
  end
end

define :ambienttwo do
  use_synth :sine
  use_synth_defaults attack: 1, sustain: 3, release: 1, amp: 0.25
  in_thread do
    play_pattern_timed [:C4,:Ds4,:As3,:C4],[4]
  end
end

define :ambientthree do
  use_synth :sine
  use_synth_defaults attack: 1, sustain: 3, release: 1, amp: 0.25
  in_thread do
    play_pattern_timed [:C4,:Ds4,:F4,:As3],[4]
  end
end

define :ambientfour do
  use_synth :sine
  use_synth_defaults attack: 1, sustain: 3, release: 1, amp: 0.25
  in_thread do
    play_pattern_timed [:C4,:Ds4,:F4,:A3],[4]
  end
end

define :glitchone do
  in_thread do
    use_synth :saw
    use_synth_defaults attack: 0, sustain: 0.125, release: 0.25, amp: 0.25
    with_fx :echo, phase: 0.25 do
      play :C4
      sleep 0.125
      play :Ds4
    end
  end
end

define :glitchtwo do
  in_thread do
    use_synth :saw
    use_synth_defaults attack: 0, sustain: 0.125, release: 0.25, amp: 0.25
    with_fx :echo, phase: 0.25 do
      play :C4
      sleep 0.125
      play :F4
    end
  end
end


define :tejon_drum do
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_snare_hard
  
  sleep 0.75
  
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.25
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
end


define :drumsone do
  in_thread do
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    
    sleep 0.75
    
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.25
    
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.75
    
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.125
    sample :drum_bass_soft
    sleep 0.25
    
    sample :drum_snare_soft
    sleep 0.125
  end
end



define :drumstwo do
  in_thread do
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    
    sleep 0.75
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.75
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    
    sample :drum_snare_hard
    sleep 0.125
  end
end


glitchone
sleep 2

in_thread do
  2.times do
    drumsone
    sleep 4
  end
end

sleep 8


in_thread do
  ambientone
  sleep 16
  ambienttwo
  sleep 16
  ambientthree
  sleep 16
  ambientfour
  sleep 16
end


in_thread do
  17.times do
    drumsone
    sleep 4
  end
end

sleep 64
glitchtwo
sleep 4



in_thread do
  4.times do
    drumsone
    sleep 4
  end
end

tejonparta
tejonpartb
tejonpartc

glitchone
sleep 4

in_thread do
  4.times do
    drumsone
    sleep 4
  end
end

tejonparta
tejonpartb
tejonpartc

glitchtwo