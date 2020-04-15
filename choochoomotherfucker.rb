use_bpm 60

define :intro do
  s=8
  with_fx :reverb do
    play :A1
    sleep s
    play :G1
    sleep s
    play :C1
    sleep s
    play :F1
    sleep s
    play :A0
    sleep s
    play :D1
    sleep s
    play :C1
    sleep s
    play :F1
    sleep s
    play :G1
    sleep s
    play :E1
  end
end

define :scaleone do
  in_thread do
    use_synth :sine
    use_synth_defaults attack: 0, release: 0, sustain: 0.06125
    with_fx :reverb do
      play_pattern_timed [:a4, :C5, :d5, :e5, :g5, :a6], [0.125]
    end
  end
  
end

define :riff do
  use_synth :saw
  use_synth_defaults attack: 0, release: 0, sustain: 0.06125
  with_fx :reverb do
    play_pattern_timed [:a5, :g5, :c5, :f5, :a4, :d5, :c5, :f5, :g5, :e5], [0.125]
    
  end
end

define :backing do
  in_thread do
    use_synth :sine
    use_synth_defaults attack: 0, release: 0, sustain: 0.06125
    
    play :a7
    sleep 0.125
    
    sleep 1.25
    play :g7
    sleep 1.125
    play :f7
    sleep 1
    play :d7
    sleep 0.875
    play :c7
    sleep 0.625
    play :e7
    sleep 0.5
    play :a6
    
    sleep 0.375
    play :d7
    sleep 1.125
    play :c7
    sleep 1
    play :f7
    sleep 0.875
    play :g7
    sleep 0.75
    play :e7
    sleep 0.125
    play :d7
    sleep 0.25
  end
end


define :opener do
  
  in_thread do
    8.times do
      riff
    end
  end
  
end

define :allbass do
  #comment do
  in_thread do
    use_synth :hoover
    use_synth_defaults attack: 1, release: 2, sustain: 6
    intro
  end
  
  in_thread do
    use_synth :chipbass
    use_synth_defaults attack: 1, release: 2, sustain: 6
    intro
  end
  
  in_thread do
    use_synth :prophet
    use_synth_defaults attack: 1, release: 2, sustain: 6
    intro
  end
  #end
  # use_synth :supersaw
  # use_synth_defaults attack: 1, release: 2, sustain: 6
  # intro
end

define :backingrun do
  in_thread do
    7.times do
      backing
      sleep 10
      sleep 1.25
    end
  end
end

define :trippybackingruntwo do
  in_thread do
    7.times do
      backing
      sleep 0.75
      sleep 1.25
    end
  end
end

define :trippybackingrun do
  in_thread do
    7.times do
      backing
      sleep 1.25
    end
  end
end


define :openrun do
  in_thread do
    8.times do
      opener
      sleep 10
    end
  end
end

define :slicerrun do
  in_thread do
    with_fx :panslicer do
      8.times do
        opener
        sleep 10
      end
    end
    
  end
end


define :braindance do
  in_thread do
    10.times do
      use_synth :sine
      with_fx :slicer do
        use_synth_defaults
        play_pattern_timed [:e4, :A3, :g4, :a4, :c4, :d4, :f4, :g4, :e4, :d4],[0.5,1.25,0.5,0.5,1.25]
      end
    end
  end
  
  in_thread do
    10.times do
      use_synth :saw
      with_fx :panslicer do
        use_synth_defaults
        play_pattern_timed [:e4, :A3, :g4, :a4, :c4, :d4, :f4, :g4, :e4, :d4],[0.5,1.25,0.5,0.5,1.25]
      end
    end
  end
end


define :riff_two do
  in_thread do
    use_synth :saw
    use_synth_defaults attack: 0.125, sustain: 0, release: 0.125
    1.times do
      play_pattern_timed [:a3, :c4, :e4, :f4, :e4, :f4, :g4, :e4, :d4],[0.5]
      
      sleep 0.5
      play_pattern_timed [:a3, :c4, :e4, :a4, :g4, :f4, :g4, :f4, :e4],[0.5]
      sleep 0.5
    end
    
  end
end



define :riffrun do
  in_thread do
    8.times do
      riff_two
      sleep(0.5/3*2)
      riff_two
      sleep(0.5/3*2)
      riff_two
      sleep 10
    end
    
  end
end


define :scalerun do
  in_thread do
    20.times do
      sleep 3.125
      scaleone
    end
  end
  
end

#song

#scaleone
#sleep 0.75

#backing
#sleep 10

#allbass
#scaleone
#sleep 0.75
#sleep 80

#allbass
#backingrun

#sleep 82

scaleone

allbass
openrun

sleep 80



allbass



braindance

sleep 80

scaleone

allbass
braindance
openrun

sleep 80

scaleone

allbass
braindance
backingrun
openrun
slicerrun

sleep 82

scaleone
backing


allbass
openrun
slicerrun
backingrun
braindance

riffrun

sleep 80


allbass
openrun
slicerrun
backingrun
braindance
scalerun
riffrun

in_thread do
  sleep 80
  use_synth :pnoise
  use_synth_defaults attack:0.125, sustain: 4, release: 1
  play :a0
  scaleone
  backing
  scaleone
end




