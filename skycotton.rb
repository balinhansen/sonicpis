
use_bpm 60

define :perc do |n,t|
  use_synth :gnoise
  with_fx :nbpf, centre: n, centre_slide: 0.25, amp: 0.25  do |f|
    play n, sustain: t, release: 0
    control f, centre: n-24
  end
end



in_thread do
  loop do
    perc :a5, 0.0625
    sleep 0.125
    perc :b5, 0.0625
    sleep 0.125
    perc :c6, 0.0625
    sleep 0.125
    perc :d6, 0.0625
    sleep 0.125
    
    perc :f6, 0.0625
    sleep 0.125
    perc :e6, 0.0625
    sleep 0.125
    perc :d6, 0.0625
    sleep 0.125
    perc :c6, 0.0625
    sleep 0.125
  end
  
end

in_thread do
  loop do
    3.times do
      sample :drum_bass_hard
      sleep 0.375
    end
    
    
    2.times do
      sample :drum_bass_hard
      sleep 0.1875
    end
    puts "drum"
  end
end

sleep 3

in_thread do
  loop do
    use_synth :tri
    3.times do
      play :G4
      sleep 2.375
      play :G4
      sleep 0.25
      play :G4
      sleep 0.125
      play :F4
      sleep 0.125
      play :D4
      sleep 0.125
    end
    play :G4
    sleep 0.25
    play :G4
    sleep 0.125
    play :A4
    sleep 0.25
    play :A4
    sleep 0.125
    play :As4
    sleep 0.25
    play :As4
    sleep 0.125
    play :D5
    sleep 0.25
    play :D5
    sleep 0.125
  end
end

sleep 10.5

define :bwah do |n|
  use_synth :saw
  #with_fx :vowel, voice: 2, vowel: 4, vowel_slide: 0.125 do |f|
  play n, sustain: 0.125, release: 0.125
  #end
end


with_fx :reverb, room: 0.2, mix: 0.5 do
  loop do
    f=0.375
    h=0.1875
    3.times do
      bwah :As3
      sleep f
      
      2.times do
        bwah :As3
        sleep h
      end
      sleep h
      
      2.times do
        bwah :As3
        sleep h
      end
      sleep h
      
      
      2.times do
        bwah :As3
        sleep h
      end
      sleep h
      
      bwah :As3
      sleep f
      
      bwah :As3
      sleep f
      bwah :As3
      sleep h
      puts "beat"
    end
    
    bwah :A3
    sleep f
    bwah :A3
    sleep h
    bwah :As3
    sleep f
    bwah :As3
    sleep h
    bwah :D4
    sleep f
    
    
    puts "time"
  end
end
