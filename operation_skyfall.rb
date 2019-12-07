use_synth :saw

# we want answers - you can't do this - make it stop - stop it right now
# we will have your head - you're a dead man

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
  chorus n, 12, 0.125, 0.25, 10
end

in_thread do
  loop do
    
    64.times do
      chorus :a0, 12, 0.125, 0.25, 1.0
      sleep 0.125
    end
    
    64.times do
      chorus :C1, 12, 0.125, 0.25, 1.0
      sleep 0.125
    end
    
  end
end

comment do
  sleep 32
  
  
  use_synth :sine
  ohm :c3
  sleep 1
  ohm :Ds3
  sleep 1
  ohm :A2
end
