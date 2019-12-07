use_synth :saw
# we want answers - you can't do this - make it stop - stop it right now
# we will have your head - you're a dead man


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

define :ohm do |n|
  chorus n, 1, 0.125, 0.25, 0.5
end

in_thread do
  loop do
    
    64.times do
      chorus :a0, 3, 0.125, 0.25, 0.5
      sleep 0.125
    end
    
    64.times do
      chorus :C1, 3, 0.125, 0.25, 0.5
      sleep 0.125
    end
    
  end
end

#sleep 32




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

#sleep 32


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

#sleep 32



loop do
  sleep 12
  grohldrumintro
end