
live_loop :glitch do
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  sleep rrand(0,1)
  t=rrand_i(0,2)
  if (t==1)
    use_synth :pulse
  else
    if (t==2)
      use_synth :noise
    else
      use_synth :sine
    end
  end
  
   play :a5
end


live_loop :upbeat do
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  sleep 40
  r=4
  use_synth :supersaw
  use_bpm 60
  with_fx :reverb, mix: 0.7, room: 1.0 do
    loop do
      r.times do
        play_pattern_timed [:As4, :D4, :G4, :As4],[0.125]
      end
      r.times do
        play_pattern_timed [:A4, :C4, :F4, :A4],[0.125]
      end
      
      
      r.times do
        play_pattern_timed [:G4, :As3, :Ds4, :G4],[0.125]
      end
      
      r.times do
        play_pattern_timed [:A4, :C4, :F4, :A4],[0.125]
      end
    end
  end
end

live_loop :intro do
  use_bpm 15
  sleep 2
  use_synth_defaults attack: 0, sustain: 0.0625, release: 0
  r=1
  with_fx :reverb, mix: 0.7, room: 1.0 do
    
    r.times do
      play_pattern_timed [:As4, :D4, :G4, :As4],[0.125]
    end
    r.times do
      play_pattern_timed [:A4, :C4, :F4, :A4],[0.125]
    end
    
    
    r.times do
      play_pattern_timed [:C5, :F4, :A4, :C5],[0.125]
    end
    
    r.times do
      play_pattern_timed [:As4, :D4, :G4, :As4],[0.125]
    end
  end
end


live_loop :backing do
  sleep 8
  use_synth :prophet
  use_bpm 15
  with_fx :reverb, mix: 0.5, room: 1 do
    use_synth_defaults attack: 0.125, sustain: 0.875, release: 0.375
    play_pattern_timed [:g4,:F4,:A4, :As4],[1]
  end
end
