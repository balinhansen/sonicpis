use_bpm 75


use_synth :noise
use_synth_defaults amp: 0.03125, attack: 24, sustain: 20*60
play :A4


in_thread do
  sleep 24
  loop do
    sample :drum_bass_hard, amp: 0.25
    sleep 0.5
    sample :drum_snare_hard, amp: 0.25
    sleep 0.25
    sample :drum_bass_hard, amp: 0.25
    sleep 0.25
    sample :drum_snare_hard, amp: 0.25
    sleep 0.5
    sample :drum_snare_hard, amp: 0.25
    sleep 0.5
  end
end

use_synth :sine
use_synth_defaults amp: 0.125
in_thread do
  sleep 72
  with_fx :reverb, room: 1, mix: 1 do
    loop do  sleep 9
      play_pattern_timed [:a5,:f5,:b5,:g5,:e5,:g5,:d5,:e5],[0.75]
    end
  end
end

use_synth :saw
use_synth_defaults attack: 0.25, amp: 0.0625

in_thread do
  sleep 36
  loop do
    play_pattern_timed [:C3,:E3,:D3,:F3,:G2,:G3,:B2,:C3],[0.75]
  end
end

use_synth :kalimba
use_synth_defaults attack: 0.015625

in_thread do
  with_fx :echo, phase: 0.75*0.75, max_phase: 0.75*0.75*10 do
    loop do
      4.times do
        play_pattern_timed [:C4,:C4,:E4,:E4],[0.5,0.25,0.5,0.25]
        play_pattern_timed [:D4,:D4,:F4,:F4],[0.5,0.25,0.5,0.25]
        play_pattern_timed [:B3,:B3,:D4,:D4],[0.5,0.25,0.5,0.25]
        play_pattern_timed [:C4,:C4,:E4,:E4],[0.5,0.25,0.5,0.25]
        play_pattern_timed [:D4,:D4,:F4,:F4],[0.5,0.25,0.5,0.25]
        play_pattern_timed [:E4,:e4,:g4,:g4],[0.5,0.25,0.5,0.25]
        play_pattern_timed [:f4,:f4,:a4,:a4],[0.5,0.25,0.5,0.25]
        play_pattern_timed [:G4,:G4,:B4,:B4],[0.5,0.25,0.5,0.25]
      end
      
      4.times do
        play_pattern_timed [:C4,:D4,:C4,:E4,:D4,:E4],[0.25]
        play_pattern_timed [:D4,:E4,:D4,:F4,:E4,:F4],[0.25]
        play_pattern_timed [:B3,:C4,:B3,:D4,:C4,:D4],[0.25]
        play_pattern_timed [:C4,:D4,:C4,:E4,:D4,:E4],[0.25]
        
        play_pattern_timed [:D4,:E4,:D4,:F4,:E4,:F4],[0.25]
        play_pattern_timed [:E4,:F4,:E4,:G4,:F4,:G4],[0.25]
        play_pattern_timed [:F4,:G4,:F4,:A4,:G4,:A4],[0.25]
        play_pattern_timed [:G4,:A4,:G4,:B4,:A4,:B4],[0.25]
      end
    end
  end
  
end

