
define :pebble do |n|
  with_fx :echo, phase: 0.25+0.25/4, phase_slide: 3, phase_slide_shape: 1, decay: 4 do |e|
    t=synth :tri, note: n, note_slide: 3, sustain: 0.125, attack: 0, release: 0
    u=synth :tri, note: n, note_slide: 3, sustain: 0.125, attack: 0, release: 0
    control t, note: n-60
    control u, note: n+60
    control e, phase: 0.03125
  end
end

define :pebblestep do |n, s|
  ct=0;
  n.count.times do
    pebble n[ct]
    ct=ct+1
    sleep s
  end
end

pebble :c4
sleep 4

loop do
  in_thread do
    pebblestep (scale :c4, :major_pentatonic, num_octaves: 2),1
  end
  sleep 25/4
end