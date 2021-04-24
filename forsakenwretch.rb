use_bpm 60

use_synth :tech_saws
use_synth_defaults sustain: 0.125, release: 0

#play_pattern_timed [:Ds4,:Fs4,:Gs4,:As4],[0.5]

use_synth :sine
use_synth_defaults attack: 0, sustain: 0, release: 0.125

in_thread do
  loop do
    4.times do
      play :E4
      sleep 0.5
    end
    
  end
end

sleep 4

in_thread do
  loop do
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_tom_hi_hard
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.5
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_tom_hi_hard
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.5
  end
end

sleep 2

use_synth :saw
in_thread do
  use_synth_defaults attack: 0, sustain: 0, release: 0.25
  use_synth_defaults attack: 0.25, sustain: 0, release: 0
  play_pattern_timed [:As4,:Gs4, :Fs4,:Ds4],[0.25]
  play_pattern_timed [:Cs4,:Ds4,:Fs4,:Ds4],[0.25]
end

sleep 2

use_synth :tb303
use_synth_defaults res: 0.7, attack: 0.5, sustain: 0, release: 0
in_thread do
  loop do
    7.times do
      play :cs1
      sleep 0.5
    end
    play :E1
    sleep 0.5
    7.times do
      play :Fs1
      sleep 0.5
    end
    play :E1
    sleep 0.5
  end
end

sleep 8


use_synth :saw
use_synth_defaults attack: 0, sustain: 0, release: 0.25
in_thread do
  comment do
    8.times do
      play_pattern_timed [:D4,:E4,:G4,:E4],[0.25]
      #    sleep 0.25
      #    play_pattern_timed [:D4,:E4,:D4],[0.25]
      #    play_pattern_timed [:A4,:G4,:D4,:E4],[0.25]
      #   sleep 0.25
      #  play_pattern_timed [:D4,:E4,:D4],[0.25]
      sleep 2
    end
    8.times do
      play_pattern_timed [:D4,:E4,:G4,:E4],[0.25]
      sleep 1
      play_pattern_timed [:A4,:G4,:D4,:E4],[0.25]
      sleep 1
    end
    sleep 4
    8.times do
      play :E4
      sleep 0.5
    end
    #end
    loop do
      play_pattern_timed [:D4,:E4,:G4,:E4],[0.25]
      sleep 0.25
      play_pattern_timed [:D4,:E4,:D4],[0.25]
      play_pattern_timed [:A4,:G4,:D4,:E4],[0.25]
      sleep 0.25
      play_pattern_timed [:D4,:E4,:D4],[0.25]
      
    end
    
  end
end


sleep 16

use_synth :sine
use_synth_defaults duration: 2

in_thread do
  loop do
    play :E4
    sleep 2
    play :Fs4, duration: 1
    sleep 1
    play [:B4], duration: 0.5
    sleep 1
    play [:Gs4], duration: 0.5
    sleep 12
  end
end

sleep 16

use_synth :tb303
use_synth_defaults res: 0.1, attack: 0, sustain: 0.125, release: 0

in_thread do
  loop do
    with_fx :reverb, mix: 1, room: 1 do
      3.times do
        play_pattern_timed [:E4,:D4,:G4,:E4],[0.25]
        sleep 0.25
        play_pattern_timed [:D4,:E4,:D4],[0.25]
      end
      play_pattern_timed [:A4,:G4,:D4,:E4],[0.25]
      sleep 0.25
      play_pattern_timed [:D4,:E4,:D4],[0.25]
      
    end
  end
  
end

sleep 16

in_thread do
  loop do
    with_fx :distortion, distort: 0.5, amp: 2 do
      3.times do
        sample :drum_bass_hard
        sleep 0.5
        sample :drum_snare_hard
        sleep 0.5
      end
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.5
      
    end
    
  end
end

sleep 16

use_synth :tb303
use_synth_defaults attack: 0, sustain: 0.125, release: 0

in_thread do
  loop do
    with_fx :reverb, mix: 0.7, room: 0.7 do
      with_fx :echo, phase: 0.75*0.5, decay: 0.75*0.5*10 do
        3.times do
          play_pattern_timed [:E4,:D4,:G4,:E4],[0.25]
          sleep 0.25
          play_pattern_timed [:D4,:E4,:D4],[0.25]
        end
        play_pattern_timed [:A4,:G4,:D4,:E4],[0.25]
        sleep 0.25
        play_pattern_timed [:D4,:E4,:D4],[0.25]
      end
      
    end
  end
  
end

sleep 32


use_synth :supersaw
use_synth_defaults attack: 0.25, sustain: 1.75, release: 1

in_thread do
  with_fx :reverb, room: 1, mix: 0.5 do
    loop do
      play :E4
      sleep 2
      play :Fs4, duration: 1
      sleep 1
      play [:B4], duration: 0.5
      sleep 1
      play [:Gs4], duration: 0.5
      sleep 2
      play [:A4], duration: 0.5
      sleep 10
    end
  end
end

sleep 32

use_synth :zawa
use_synth_defaults attack: 0, sustain: 0.125, release: 0, res: 0.9

in_thread do
  loop do
    with_fx :reverb, mix: 0.7, room: 0.5 do
      with_fx :echo, phase: 0.75*0.5, decay: 0.75*0.5*10 do
        play_pattern_timed [:E4,:D4,:g4,:E4,:A4,:G4,:B4,:A4,:D5,:B4,:E5,:D5,:A4,:G4,:e4],[0.25]
        sleep 4.25
      end
    end
  end
end