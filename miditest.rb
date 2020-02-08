

notes=(scale :C, :major, num_octaves: 3)

define :midi_pattern do |n|
  ct=0
  n.count.times do
    midi n[ct]
    ct=ct+1
    sleep 0.125
  end
  
end

define :midi_chord do |n|
  ct=0
  n.count.times do
    midi n[ct]
    ct=ct+1
  end
end

define :midi_pattern_timed do |n,t,*args|
  cnt=0
  puts args
  use_synth :saw
  n.count.times do
    ct=cnt%t.count
    kwargs = if args.last.is_a?(Hash) then args.last else {} end
    kwargs[:sustain] ||= t[ct]
    midi(n[cnt], *[kwargs])
    sleep t[ct]
    cnt=cnt+1
  end
end

2.times do
  2.times do
    midi_pattern_timed [:C2,:E2,:G2, :A2],[0.5,0.25,0.5,0.25], channel: 0
    sleep 0.5
  end
  
  2.times do
    midi_pattern_timed [:D2,:E2,:G2, :A2],[0.5,0.25,0.5,0.25], channel: 0
    sleep 0.5
  end
end