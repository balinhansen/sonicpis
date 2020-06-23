use_synth :sine

in_thread do
  loop do
    sample :drum_snare_soft
    sleep 1
  end
end
sleep 8

define :chime do
  play_pattern_timed [:Fs5,:D5,:A4,:E5,:D5],[0.5,1.5,0.5,0.5,1]
  sleep 4
end

with_fx :reverb, room: 1, mix: 1 do
  2.times do
    chime
  end
end

define :octaver do |n|
  return n.map{|x| [x,x+12,x+24,x+36]}.flatten
end

loop do
  use_synth :saw
  play (octaver [:D0]), attack: 2, sustain: 4, release: 4
  sleep 4
  
  4.times do
    play (octaver [:D0]), attack: 0.25, sustain: 0, release: 0
    sleep 0.5
  end
  
  in_thread do
    16.times do
      play (octaver [:D0]), attack: 0.25, sustain: 0, release: 0
      sleep 0.125
      play (octaver [:D0]), attack: 0.25, sustain: 0, release: 0
      sleep 0.375
      3.times do
        
        play (octaver [:D0]), attack: 0.25, sustain: 0, release: 0
        sleep 0.25
      end
      sleep 0.75
    end
  end
  
  sleep 8
  
  use_synth :sine
  with_fx :reverb, room: 1, mix: 1 do
    2.times do
      chime
    end
  end
  sleep 8
end