# Welcome to Sonic Pi v2.10

notesa=(scale :e3, :major_pentatonic,num_octaves: 2).shuffle
#notesb=(scale :e4, :minor_pentatonic,num_octaves: 2).shuffle

breakvar=:loop_amen;

echoZero=2*(0.5+1)*0.25 #1.2*delay time

lull=16;


# BEATS

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
  sleep 0.25
  control s, note: :D6
  sleep 0.25
  control s, note: :B5
end;


define :melodyOne do
  s=play :B5, attack: 0.0625, release: 2.25, note_slide: 0.0625
  sleep 0.5
  control s, note: :Fs6
  sleep 0.5
  control s, note: :E6
  sleep 0.5
  control s, note: :Fs6
  sleep 0.5
end;

define :melodyOne do
  s=play :B5, attack: 0.0625, release: 2.25, note_slide: 0.0625
  sleep 0.5
  control s, note: :Fs6
  sleep 0.5
  control s, note: :E6
  sleep 0.5
  control s, note: :Fs6
  sleep 0.5
end;

#bucket
define :bucketyZero do
  s=play :Ds4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
  s=play :As4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
  s=play :Gs4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
  s=play :As4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
  s=play :Fs4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
  s=play :As4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
  s=play :F4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
  s=play :As4, attack: 0.0625, release: 0.25, note_slide: 0.0625
  sleep 0.5
end;

#uiou
define :melodyOne do
  s=play :E5, attack: 0.0625, release: 2.25, note_slide: 0.0625
  sleep 0.25
  control s, note: :E6
  sleep 0.25
  control s, note: :D6
  sleep 0.25
  control s, note: :B5
end;

# ECHOS

define :echorandomy do
  2.times do
    in_thread do
      rando
    end
    
    sleep echoZero
  end
end


define :echoey do
  2.times do
    in_thread do
      echoeyZero
    end
    
    sleep echoZero
  end
end


define :buckety do
  4.times do
    in_thread do
      bucketyOne
    end
    
    sleep 2*(0.5+1)*0.25 #0.0625
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
    s=synth :sine, note: :e3, sustain: 0.875, release: 0.25, note_slide: 0.0625, amp: 0.3
    #tick_reset
    7.times do
      control s, note: notesa.tick
      sleep 0.125
    end
    sleep 0.125
  end
  
  2.times do
    s=synth :saw, note: :e4, sustain: 0.875, release: 0.25, note_slide: 0.0625, amp: 0.3
    #tick_reset
    7.times do
      control s, note: notesa.tick+12
      sleep 0.125
    end
    sleep 0.125
  end
  
  2.times do
    s=synth :square, note: :e4, sustain: 0.875, release: 0.25, note_slide: 0.0625, amp: 0.3
    #tick_reset
    7.times do
      control s, note: notesa.tick+12
      sleep 0.125
    end
    sleep 0.125
  end
end


# DRUMS

# amen sample riff
define :amenriff do |r,d,s,f|
  if (r)
    r.times do
      sample breakvar, start: s, finish: f
      sleep sample_duration(breakvar)*d
    end
  else
    loop do
      sample breakvar, start: s, finish: f
      sleep sample_duration(breakvar)*d
    end
  end
end

#slowbass
define :drums do
  in_thread(name: :drumloop) do
    loop do
      beatZero
    end
  end
end


# CONTROLS

define :startAmenCue do
  in_thread do
    loop do
      cue :tick
      sleep sample_duration(breakvar);
    end
  end
end

define :startAmenSync do
  in_thread do
    loop do
      sync :tick
      sample breakvar
    end
  end
end


# TESTS


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

comment do
  buckety
end

comment do
  1.times do
    tick_reset
    rando
  end
end

comment do
  2.times do
    tick_reset
    echorandomy
  end
end



#comment do
#amenriff
#end



# SONGS

define :amenintro do
  
  2.times do
    amenriff 1,1, 0, 1
    amenriff 1,1, 0, 1
    amenriff 1,1, 0, 1
    amenriff 2,0.5, 0.0, 0.5
    amenriff 2,0.25,0.0,0.25
    amenriff 2,0.125,0.125,0.25
    amenriff 2,0.125,0.125,0.25
  end
end

#echorandomy;

#amenintro

in_thread do
  dur = block_duration do
    in_thread do
      amenintro
    end
    2.times do
      rando
    end
  end
end


define :opening do
  dur = block_duration do
    in_thread do
      sync :next
      rando
      echorandomy
    end
  end
end
sleep dur;

comment do
  2.times do
    opening
    sleep block_duration(opening);
  end
end


#1.times do
#  echorandomy
#end
#sleep 16
