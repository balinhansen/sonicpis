use_synth :sine
use_synth_defaults release: 0.25


in_thread do
  with_fx :echo, phase: 0.75*0.5, max_phase: 20*0.75*0.5 do
    loop do
      play_pattern_timed [:C4,:D4,:E4,:F4,:G4,:A4,:B4,:C5],[0.25]
      
      play_pattern_timed [:As3,:C4,:D4,:Ds4,:F4,:G4,:A4,:As4],[0.25]
    end
  end
end

sleep 16


in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 1
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.75
    sample :drum_heavy_kick
    sleep 0.25
    sample :drum_heavy_kick
    sleep 0.75
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.375
    sample :drum_snare_hard
    sleep 0.375
  end
end

sleep 16




use_synth :zawa
use_synth_defaults attack: 1, release: 0.25

in_thread do
  with_fx :reverb, mix: 1, room: 1 do
    loop do
      play_pattern_timed [:C4,:G3,:As3,:F3],[2]
      play_pattern_timed [:G3,:C3,:D3,:D4],[2]
      # sleep 16
    end
    
  end
end

sleep 32

use_synth :zawa
use_synth_defaults attack: 1, release: 0.25
in_thread do
  4.times do
    2.times do
      play_pattern_timed [:d4,:A4,:F4,:d4,:A4,:F4,:d4,:F4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:c4,:e4,:g4,:e4,:C5,:G4,:e4,:g4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:As3,:F4,:d4,:as3,:F4,:D4,:As4,:F4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:A3,:E4,:Cs4,:A3,:F4,:A3,:Cs4,:E4],[0.125]
    end
    
  end
end

sleep 32

use_synth :zawa
use_synth_defaults

in_thread do
  4.times do
    2.times do
      play_pattern_timed [:d4,:A4,:F4,:d4,:A4,:F4,:d4,:F4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:c4,:e4,:g4,:e4,:C5,:G4,:e4,:g4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:As3,:F4,:d4,:as3,:F4,:D4,:As4,:F4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:A3,:E4,:Cs4,:A3,:F4,:A3,:Cs4,:E4],[0.125]
    end
    
  end
end

sleep 32


use_synth :zawa
use_synth_defaults attack: 0, release: 0, sustain: 0.125

in_thread do
  4.times do
    2.times do
      play_pattern_timed [:d4,:A4,:F4,:d4,:A4,:F4,:d4,:F4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:c4,:e4,:g4,:e4,:C5,:G4,:e4,:g4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:As3,:F4,:d4,:as3,:F4,:D4,:As4,:F4],[0.125]
    end
    
    2.times do
      play_pattern_timed [:A3,:E4,:Cs4,:A3,:F4,:A3,:Cs4,:E4],[0.125]
    end
    
  end
end

