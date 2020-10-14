use_bpm 60


use_synth :blade
use_synth_defaults release: 0, sustain: 0.125

define :melody do
  play_pattern_timed [:A4,:F4,:E4,:C4,:D4,:E4], [0.25]
  play_pattern_timed [:G4,:F4,:E4,:C4,:D4,:E4], [0.25]
  play_pattern_timed [:F4,:C4,:A3,:C4,:E4,:F4], [0.25]
  play_pattern_timed [:E4,:C4,:G3,:A3,:C4,:E4], [0.25]
end

define :rhythm do
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.375
  
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 1
  
end



define :drums do
  use_bpm 30
  sample :drum_snare_hard
  sleep 0.1875
  sample :drum_bass_hard
  sleep 0.0625
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.0625
  sample :drum_snare_hard
  sleep 0.0625
  sample :drum_tom_hi_hard
  sleep 0.0625
  sample :drum_tom_hi_hard
  sleep 0.0625
  sample :drum_tom_mid_hard
  sleep 0.0625
  sample :drum_tom_mid_hard
  sleep 0.0625
  sample :drum_tom_lo_hard
  sleep 0.0625
  sample :drum_tom_lo_hard
  sleep 0.0625
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_bass_hard
  sample :drum_splash_hard
  sleep 0.125
end

with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
  in_thread do
    4.times do
      melody
    end
  end
end

sleep 24

with_fx :reverb, mix: 0.5, room: 0.5 do
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    in_thread do
      4.times do
        melody
      end
      
    end
  end
end

sleep 24

use_synth :tb303
use_synth_defaults release: 0, sustain: 0.125, res: 0.999, amp: 0.25

with_fx :reverb, mix: 0.5, room: 0.5 do
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    in_thread do
      3.times do
        melody
      end
    end
  end
end

sleep 15


drums

use_synth :tb303
use_synth_defaults release: 0, sustain: 0.125, res: 0.999, amp: 0.5

with_fx :reverb, mix: 0.5, room: 0.5 do
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    in_thread do
      2.times do
        melody
      end
    end
  end
end

sleep 12


use_bpm 45
use_synth :tb303
use_synth_defaults release: 0, sustain: 0.125, res: 0.999, amp: 0.5

with_fx :reverb, mix: 0.5, room: 0.5 do
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    in_thread do
      2.times do
        melody
      end
    end
  end
end

sleep 12

use_bpm 52
use_synth :tb303
use_synth_defaults release: 0, sustain: 0.125, res: 0.999, amp: 0.5

with_fx :reverb, mix: 0.5, room: 0.5 do
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    in_thread do
      3.times do
        melody
      end
    end
  end
end

sleep 15

drums


use_bpm 60
use_synth :tb303
use_synth_defaults release: 0, sustain: 0.125, res: 0.999, amp: 0.5

with_fx :reverb, mix: 0.5, room: 0.5 do
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    in_thread do
      4.times do
        melody
      end
    end
  end
end

sleep 24

in_thread do
  8.times do
    rhythm
  end
end

use_bpm 60
use_synth :tb303
use_synth_defaults release: 0, sustain: 0.125, res: 0.999, amp: 0.5

with_fx :reverb, mix: 0.5, room: 0.5 do
  with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
    in_thread do
      4.times do
        melody
      end
    end
  end
end

sleep 24


in_thread do
  sleep 3
  drums
end

in_thread do
  
  melody
end

use_synth :tri
use_synth_defaults release: 0, sustain: 0.25
with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
  play_pattern_timed [:A4,:G4,:F4,:E4],[1.5];
end
