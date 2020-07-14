use_bpm 75

with_fx :reverb, room: 0.2, mix: 0.5 do
  
  in_thread do
    125.times do
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
    end
  end
end

sleep 2

define :repattern do |a, b|
  8.times do
    play [a+24,a+12,a,a-12,a-24]
    sleep 0.25
  end
  
  play [a+24,a+12,a,a-12,a-24]
  sleep 0.25
  7.times do
    play [b+24,b+12,b,b-12,b-24]
    sleep 0.25
  end
end

define :bassriff do
  repattern :Ds4, :C4
  repattern :F4, :D4
  repattern :G4, :Ds4
  repattern :F4, :D4
  
  repattern :Ds4, :C4
  repattern :F4, :D4
  repattern :G4, :Ds4
  repattern :Gs4, :D4
  
  repattern :Ds4, :C4
  repattern :F4, :D4
  repattern :G4, :Ds4
  repattern :F4, :D4
  
  repattern :Ds4, :C4
  repattern :F4, :D4
  repattern :G4, :Ds4
  repattern :Gs4, :F4
end

in_thread do
  
  use_synth :pluck
  use_synth_defaults attack: 0, sustain: 0, release: 1
  
  with_fx :reverb, room: 0.7, mix: 0.2 do
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
      bassriff
    end
  end
end

sleep 16
use_synth :sine
use_synth_defaults sustain: 0.0625, release: 0

with_fx :reverb, room: 0.7, mix: 0.5 do
  with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
    in_thread do
      36.times do
        play_pattern_timed [:F4,:G4],[0.25]
        sleep 2
        
        play_pattern_timed [:C4,:Ds5,:D5,:As4,:Ds4],[0.25]
        sleep 0.25
      end
    end
    
  end
end
sleep 64


in_thread do
  use_synth :sine
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  with_fx :reverb, room: 0.7, mix: 0.2 do
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
      bassriff
    end
  end
end

sleep 80

use_synth_defaults
with_fx :reverb, room: 0.7, mix: 0.5 do
  with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
    in_thread do
      10.times do
        play_pattern_timed [:F4,:G4],[0.25]
        sleep 2
        
        play_pattern_timed [:C4,:Ds5,:D5,:As4,:Ds4],[0.25]
        sleep 0.25
        
        play_pattern_timed [:F4,:G4],[0.25]
        sleep 2
        
        play_pattern_timed [:As3,:As4,:Gs4,:G4,:Ds4],[0.25]
        sleep 0.25
      end
    end
    
  end
end

sleep 16


in_thread do
  use_synth :chiplead
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  with_fx :reverb, room: 0.7, mix: 0.2 do
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
      bassriff
    end
  end
end

sleep 72


with_fx :echo, phase: 0.25, decay: 0.25*10 do
  sample :drum_snare_hard
end




