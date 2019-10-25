# Welcome to Sonic Pi v2.10

notesa=(scale :e3, :minor_pentatonic,num_octaves: 2).shuffle
notesb=(scale :e4, :minor_pentatonic,num_octaves: 2).shuffle

lull=16;

define :melodyZero do
  play :Gb4, attack: 2, release: 4, sustain: 2
  play :E4, attack: 2, release: 4, sustain: 2
  sleep 8
  play :Gb4, attack: 2, release: 4, sustain: 2
  play :D4, attack: 2, release: 4, sustain: 2
  sleep 8;
  play :Gb4, attack: 2, release: 4, sustain: 2
  play :D4, attack: 2, release: 4, sustain: 2
  sleep 16;
end

define :melodyOne do
  s=play :E5, attack: 0.0625, release: 2.25, note_slide: 0.0625
  sleep 0.25
  control s, note: :E6
  sleep 0.5
  control s, note: :D6
end;

define :echoey do
  in_thread do
    melodyOne
  end
  
  sleep 0.0625
  
  in_thread do
    melodyOne
  end
  
end





define :beatZero do
  8.times do
    sample :drum_heavy_kick
    sleep 4
  end
end

define :sinemelody do
  in_thread(name: :synthloop) do
    use_synth :sine
    loop do
      melodyZero
    end
  end
end

define :sawmelody do
  in_thread(name: :synthloop) do
    sleep 16
    use_synth :saw
    loop do
      melodyZero
    end
  end
end

# RANDOMNESS SOLO

define :rando do
  2.times do
    s=synth :saw, note: :e3, sustain: 0.875, release: 0.25, note_slide: 0.0625
    tick_reset
    7.times do
      control s, note: notesa.tick
      sleep 0.125
    end
    sleep 0.125
  end
  
  2.times do
    s=synth :saw, note: :e4, sustain: 0.875, release: 0.25, note_slide: 0.0625
    tick_reset
    7.times do
      control s, note: notesa.tick+12
      sleep 0.125
    end
    sleep 0.125
  end
end


# DRUMS

# amen sample riff

comment do
  define :amenriff do
    loop do
      sample :loop_amen
      sleep sample_duration(:loop_amen)
    end
  end
end




define :drums do
  in_thread(name: :drumloop) do
    loop do
      beatZero
    end
  end
end


# CONTROL

in_thread do
  loop do
    cue :tick
    sleep sample_duration(:loop_amen);
  end
end

in_thread do
  loop do
    sync :tick
    sample :loop_amen
  end
end


comment do
  drums
end


comment do
  sinemelody
  sawmelody
end

comment do
  echoey
end

#rando

amenriff