use_bpm 75


ph=0.5*0.75

# Daddy? Do the rats go to heaven? Yes, Dear ... yes they do. What's it like? Everyone's laughing.

define :technoriff do
  play_pattern_timed [:G3, :B3, :G3, :B3, :A3, :Fs3, :G3, :A3],[0.5]
  play_pattern_timed [:Fs3, :A3, :Fs3, :A3, :G3, :E3, :Fs3, :G3],[0.5]
  play_pattern_timed [:E3, :G3, :E3, :G3, :A3, :Fs3, :G3, :A3],[0.5]
  play_pattern_timed [:Fs3, :A3, :Fs3, :A3, :B3, :G3, :A3, :Fs3],[0.5]
end

define :drums do
  
  7.times do
    sample :drum_snare_hard
    sleep 0.5
  end
  sample :perc_snap
  sleep 0.5
end

define :pluckriff do
  use_synth :pluck
  use_synth_defaults
  
  1.times do
    technoriff
  end
end

define :pluckechoriff do
  use_synth :pluck
  use_synth_defaults
  
  with_fx :echo, phase: ph, decay: ph*10, max_phase: ph*4 do
    technoriff
  end
  
end

define :plucksliceriff do
  use_synth :pluck
  use_synth_defaults
  
  in_thread do
    with_fx :slicer, phase: 0.25 do
      with_fx :echo, phase: ph, decay: ph*10, max_phase: ph*4 do
        technoriff
      end
    end
  end
  with_fx :slicer, phase: 0.25, invert_wave: 1 do
    with_fx :echo, phase: ph, decay: ph*10, max_phase: ph*4 do
      technoriff
    end
  end
  
end

define :sawriff do
  use_synth :saw
  use_synth_defaults attack: 0, sustain: 0.125, release: 0
  technoriff
end

define :tbechoriff do
  use_synth :tb303
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  
  with_fx :echo, phase: ph, decay: ph*10, max_phase: ph*4 do
    technoriff
  end
  
end


define :tbhalflaugh do
  use_synth :tb303
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  
  with_fx :panslicer, phase: 0.25 do |p|
    with_fx :echo, phase: ph, decay: ph*20, max_phase: ph*4 do
      1.times do
        technoriff
      end
      
      control p, invert_wave: 1
      1.times do
        technoriff
      end
    end
  end
end


define :tbslicelaugh do
  use_synth :tb303
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  
  in_thread do
    with_fx :echo, phase: ph, decay: ph*10, max_phase: ph*4 do
      2.times do
        technoriff
      end
    end
  end
  
  with_fx :panslicer, phase: 0.25 do
    with_fx :echo, phase: ph, decay: ph*20, max_phase: ph*4 do
      2.times do
        technoriff
      end
    end
  end
end

define :tbfulllaugh do
  use_synth :tb303
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  in_thread do
    with_fx :panslicer, phase: 0.25, prob_pos: 0.75, probability: 0.25 do
      with_fx :echo, phase: ph, decay: ph*20, max_phase: ph*4 do
        
        2.times do
          technoriff
        end
      end
    end
  end
  
  with_fx :panslicer, invert_wave: 1, phase: 0.25, prob_pos: 0.25, probability: 0.25 do
    with_fx :echo, phase: ph, decay: ph*20, max_phase: ph*4 do
      2.times do
        technoriff
      end
    end
  end
  
end




with_fx :reverb, room: 0.6, mix: 0.5 do
  pluckriff
  pluckechoriff
end

drums

in_thread do
  with_fx :reverb, room: 0.6, mix: 0.5 do
    2.times do
      sawriff
    end
  end
end

sleep 8

in_thread do
  13.times do
    drums
  end
end

sleep 24

with_fx :reverb, room: 0.2, mix: 0.4 do
  2.times do
    tbechoriff
  end
end

with_fx :reverb, room: 0.2, mix: 0.4 do
  tbhalflaugh
end

with_fx :reverb, room: 0.2, mix: 0.4 do
  tbslicelaugh
end




with_fx :reverb, room: 0.2, mix: 0.4 do
  tbfulllaugh
end

sleep 4

with_fx :reverb, room: 0.6, mix: 0.5 do
  pluckechoriff
end

with_fx :reverb, room: 0.6, mix: 0.5 do
  plucksliceriff
end

