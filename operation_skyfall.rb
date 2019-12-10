use_synth :tri

# we want answers - you can't do this - make it stop - stop it right now
# we will have your head - you're a dead man

bassnotes=[:a0, :C1, :D1, :F1, :g1, :a1, :c2, :d2]

play_pattern_timed [
  :A4, :c5, :B4, :c5, :d5, :c5, :b4, :c5,
  :b4, :g4, :a4, :b4, :a4, :c5, :b4, :a4,
  :b4, :f4, :g4, :a4, :g4, :b4, :a4, :g4,
  :a4, :e4, :f4, :g4, :a4, :b4, :c5, :d5
],[0.125,0.25];

sleep 2

use_synth :square
use_synth_defaults attack: 0, sustain: 0.0625, release: 0.0625
play_pattern_timed bassnotes,[0.125];

use_synth :saw

define :drumintro do
  sample :drum_tom_hi_hard
  sleep 0.25
  sample :drum_tom_mid_hard
  sleep 0.5
  sample :drum_tom_mid_hard
  sleep 0.25
  sample :drum_tom_lo_hard
  sleep 0.5
  sample :drum_tom_lo_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_bass_hard
  sleep 0.03125
  sample :drum_snare_hard
  sleep 0.21875
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_splash_hard
  sleep 0.5
  sample :drum_splash_hard
  sleep 0.25
  sample :drum_splash_hard
  sleep 0.25
end

define :grohldrumintro do
  sample :drum_bass_hard
  sleep 0.03125
  sample :drum_tom_hi_hard
  sample :drum_snare_hard
  sleep 0.21875
  sample :drum_tom_mid_hard
  sleep 0.5
  
  sample :drum_bass_hard
  sleep 0.03125
  sample :drum_tom_mid_hard
  sample :drum_snare_hard
  sleep 0.21875
  sample :drum_tom_lo_hard
  sleep 0.5
  
  
  sample :drum_bass_hard
  sleep 0.03125
  sample :drum_tom_lo_hard
  sample :drum_snare_hard
  sleep 0.21875
  sample :drum_bass_hard
  
  sleep 0.5
  sample :drum_bass_hard
  sleep 0.03125
  sample :drum_snare_hard
  sleep 0.21875
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_splash_hard
  sleep 0.5
  sample :drum_splash_hard
  sleep 0.25
  sample :drum_splash_hard
  sleep 0.25
end


define :drumnote do |n|
  play_pattern_timed [n,n,n,n,n,n,n,n,n,n,n,n,n],[0.5,0.25,0.5,0.25,0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25]
end

define :drumnotefast do |n|
  play_pattern_timed [n,n,n ,n,n,n,n, n,n, n,n,n,n, n, n,n,n, n,n,n,n,n,n,n, n],
    [0.125,0.125, 0.25,0.125,0.125,0.125, 0.25,0.125, 0.25,0.125,0.125,0.125, 0.25, 0.25,0.125,0.125,  0.25,0.125,0.125,0.125,0.125,0.125,0.125, 0.25, 0.125]
end

define :chorus do | n, c, d, v, a |
  c.times do
    in_thread do
      sleep rand*d
      use_synth_defaults attack: d, amp: a
      play n+(rand_i(2)==0?1:-1)*rand()*v
    end
  end
end

define :dronemelody do |n, d, i|
  counter=0
  n.count.times do
    (d/i).times do
      chorus n[counter], 4, i, 0.25, 0.75
      sleep i
    end
    counter+=1
  end
  
end


define :ohm do |n|
  chorus n, 1, 0.125, 0.25, 0.5
end


#dronemelody([:d2,:f2],8,0.125)

in_thread do
  
  2.times do
    dronemelody(bassnotes,8,0.125)
  end
  
  
end


use_synth :sine
use_synth_defaults amp: 0.5, attack: 0.0, sustain: 0.0625, release: 0.0625

in_thread do
  loop do
    drumnotefast(:a3)
    drumnotefast(:c4)
    drumnotefast(:d4)
    drumnotefast(:f4)
  end
end


use_synth :sine
use_synth_defaults amp: 1

in_thread do
  loop do
    drumnote(:a2)
    drumnote(:c3)
    drumnote(:d3)
    drumnote(:f3)
  end
end

loop do
  sleep 12
  grohldrumintro
end

