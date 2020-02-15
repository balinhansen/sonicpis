
define :sliding do |inst|
  use_synth inst
  play_pattern_timed [:cs5,:c5],[0.5]
  sleep 0.25
  n=synth inst, note: :gs4, note_slide: 0.25, duration: 0.5
  control n, note: :as4
  sleep 0.75
  1.times do
    play_pattern_timed [:gs4,:as4],[0.25]
    
    n=synth inst, note: :cs5, note_slide: 0.25, duration: 0.5
    control n, note: :c5
    sleep 0.50
  end
  n=synth inst, note: :gs4, note_slide: 0.25, duration: 0.5
  control n, note: :as4
  sleep 0.5
  n=synth inst, note: :cs5, note_slide: 0.25, duration: 0.5
  control n, note: :c5
  sleep 1
  n=synth inst, note: :gs4, note_slide: 0.25, duration: 0.5
  control n, note: :as4
  sleep 1
  n=synth inst, note: :fs4, note_slide: 0.25, duration: 0.5
  control n, note: :gs4
  sleep 0.5
  n=synth inst, note: :as4, note_slide: 0.25, duration: 0.5
  control n, note: :gs4
  sleep 0.75
  play_pattern_timed [:f4,:fs4,:gs4],[0.25,0.5]
  sleep 0.25
end


with_fx :reverb do
  ct=0
  8.times do
    
    with_fx :echo, mix: ct, phase: 0.25+0.25/4, decay: 8 do
      use_synth_defaults amp: ct+0.125
      sliding :sine
    end
    ct=ct+0.125
  end
end


with_fx :reverb do
  ct=0
  8.times do
    
    with_fx :echo, mix: ct, phase: 2*(0.25+0.25/4), decay: 8 do
      with_fx :echo, mix: 1, phase: 0.25+0.25/4, decay: 8 do
        use_synth_defaults amp: 1
        in_thread do
          sliding :sine
        end
        use_synth_defaults amp: ct+0.125
        sliding :tri
      end
      ct=ct+0.125
    end
  end
end


with_fx :reverb do
  ct=0
  8.times do
    
    with_fx :echo, mix: ct, phase: 2*(0.25+0.25/4), decay: 8 do
      with_fx :echo, mix: 1, phase: 0.25+0.25/4, decay: 8 do
        use_synth_defaults amp: 1
        in_thread do
          sliding :sine
        end
        in_thread do
          sliding :tri
        end
        use_synth_defaults amp: ct+0.125
        sliding :saw
      end
      ct=ct+0.125
    end
  end
end

2.times do
  sliding :sine
end

with_fx :reverb do
  ct=0
  8.times do
    
    with_fx :echo, mix: ct, phase: 2*(0.25+0.25/4), decay: 8 do
      with_fx :echo, mix: ct, phase: 0.25+0.25/4, decay: 8 do
        use_synth_defaults amp: ct+0.125
        in_thread do
          sliding :sine
        end
        in_thread do
          sliding :tri
        end
        sliding :saw
      end
      ct=ct+0.125
    end
  end
end


with_fx :reverb do
  ct=0.875
  7.times do
    
    with_fx :echo, mix: ct, phase: 2*(0.25+0.25/4), decay: 8 do
      with_fx :echo, mix: ct, phase: 0.25+0.25/4, decay: 8 do
        use_synth_defaults amp: ct+0.125
        in_thread do
          sliding :sine
        end
        in_thread do
          sliding :tri
        end
        sliding :saw
      end
      ct=ct-0.125
    end
  end
end

sliding :sine