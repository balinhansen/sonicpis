use_bpm 60
strum=0.005

in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.25
    
    
  end
end

sleep 6


in_thread do
  loop do
    sample :drum_splash_hard
    sample :drum_snare_soft
    sleep 0.375
    
    2.times do
      sample :drum_snare_soft
      sleep 0.125
      sample :drum_snare_soft
      sleep 0.125
      sample :drum_snare_soft
      sleep 0.125
      sample :drum_snare_soft
      sleep 0.375
      
    end
    2.times do
      3.times do
        sample :drum_snare_soft
        sleep 0.125
      end
      
    end
    
    3.times do
      sample :drum_snare_soft
      sleep 0.125
    end
    
    puts "loop"
  end
end

sleep 6

define :power do |n,t|
  in_thread do
    play n, sustain: t
    sleep strum
    play n+7, sustain: t
    sleep strum
    play n+12, sustain: t
    sleep strum
    play n+16, sustain: t
    sleep strum
  end
end

define :powerback do |n,t|
  in_thread do
    play n+16, sustain: t
    sleep strum
    play n+12, sustain: t
    sleep strum
    play n+7, sustain: t
    sleep strum
    play n, sustain: t
  end
end

define :riff do |b|
  3.times do
    power b, 0.25
    sleep 0.25
    
    
    power b, 0.125
    sleep 0.125
    powerback b, 0.125
    sleep 0.125
    power b, 0.125
    sleep 0.125
    
  end
  4.times do
    power b, 0.125
    sleep 0.125
    powerback b, 0.125
    sleep 0.125
  end
  power b, 0.125
  sleep 0.125
  
  
end

use_synth :tb303

with_fx :reverb, mix: 0.5, room: 0.7 do
  with_fx :distortion, distort: 0.999, amp: 0.125 do
    comment do
      n=play [:d2,:g2,:D3], note_slide: 1, sustain: 2, release: 0, attack: 0
      control n, note: [:d3,:g3,:D4]
      sleep 2
      control n, note: [:d0,:g0,:D1]
    end
    use_synth_defaults release: 0,  sustain: 0.125
    in_thread do
      loop do
        riff :d2
        riff :as1
        riff :c2
        riff :e2
      end
    end
    
    sleep 12
    in_thread do
      loop do
        riff :d4
        riff :as3
        riff :c4
        riff :e4
      end
    end
  end
end


sleep 12

in_thread do
  loop do
    puts "newsplash"
    3.times do
      sleep 1.5
      sample :drum_splash_hard
    end
    sleep 1.5
  end
end



sleep 12

in_thread do
  loop do
    puts "newsplash"
    4.times do
      sleep 0.75
      sample :drum_splash_hard
      sleep 0.75
    end
  end
end


define :pullup do |p|
  n=play p, sustain: 0.75, note_slide: 0.1875
  control n, note: p+12
end

define :pulldown do |p|
  n=play p+12, sustain: 0.75, note_slide: 0.1875
  control n, note: p
end

define :updowns do |n|
  count=0
  (n.count/2).times do
    pullup n[count*2]
    sleep 0.75
    pulldown n[count*2+1]
    sleep 0.75
    count+=1
  end
end


use_synth :tb303
with_fx :reverb, mix: 0.5, room: 0.7 do
  with_fx :distortion, distort: 0.000, amp: 0.125 do
    in_thread do
      loop do
        updowns [:A3,:G4,:F4,:D4,:As4,:A4,:G4,:A4,:D5, :C5,:A4,:As4,:F5,:Ds5,:D5,:C5]
      end
    end
  end
end
