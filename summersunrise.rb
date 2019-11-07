define :drumsone do
  in_thread do
    2.times do
      sample :drum_bass_soft
      sleep 0.25
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_snare_soft
      sleep 0.125
      sample :drum_bass_soft
      sleep 0.25
      sample :drum_snare_soft
      sleep 0.125
      sample :drum_bass_soft
      sleep 0.25
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_snare_soft
      sleep 0.5
    end
  end
end

define :chordsone do
  in_thread do
    use_synth :saw
    use_synth_defaults attack:0.5, sustain: 1, release: 1.5, amp: 0.25
    play :d4
    play :A3
    
    sleep 2
    play :c4
    play :f3
    
    sleep 2
    play :b3
    play :e3
    
    sleep 2
    
    play :d4
    play :g4
    sleep 2
  end
end

define :synthone do
  in_thread do
    2.times do
      play :e4
      sleep 0.5
      play :d4
      sleep 0.5
      play :Cs4
      sleep 1
      play :e3
      sleep 0.5
      play :B3
      sleep 0.25
      play :A3
      sleep 0.125
      play :B3
      sleep 0.25
      play :A3
      sleep 0.125
      play :b3
      sleep 0.75
    end
  end
end


define :bellsone do
  in_thread do
    
    use_synth :pretty_bell
    use_synth_defaults amp: 0.25
    play :a5
    sleep 0.5
    play :d5
    sleep 0.25
    play :g5
    sleep 0.25
    play :fs5
    sleep 1
    play :c5
    sleep 0.5
    play :d5
    sleep 0.25
    play :a4
    sleep 0.75
    
    play :b4
    sleep 1
    play :c5
    sleep 1
    play :d5
    sleep 1
    play :e5
    sleep 0.25
    play :d5
    sleep 1.25
  end
end



in_thread do
  9.times do
    drumsone
    sleep 4
  end
end

sleep 4


in_thread do
  4.times do
    chordsone
    sleep 8
  end
end

sleep 32

in_thread do
  2.times do
    synthone
    sleep 8
  end
end

sleep 8

in_thread do
  2.times do
    drumsone
    sleep 4
  end
end
