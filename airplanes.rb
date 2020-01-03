use_synth :square

define :pansewp do |n, d|
  s=play note: n, pan: -1, note_slide: d, amp_slide: d, pan_slide: d, sustain: d, release: 0, amp: 0
  control s, note: n-60, amp: 10, pan: 1.0
end

define :pansewpbpf do |n, d|
  with_fx :nrbpf, centre: n, centre_slide: d do |f|
    s=play note: n, pan: -1, note_slide: d, amp_slide: d, pan_slide: d, sustain: d, release: 0, amp: 0
    control s, note: n-60, amp: 10, pan: 1.0
    control f, centre: n-60
  end
  
end

notes=[:e4,:c4,:a3]

c=0;
c2=0;

4.times do
  use_synth :pulse
  sleep rand()*0.0625
  pansewp notes[c2%notes.count]+rand()*0.5, 60
  sleep rand()*0.0625
  use_synth :saw
  pansewp notes[c2%notes.count]+rand()*0.5, 60
  sleep rand()*0.0625
  use_synth :tri
  pansewp notes[c2%notes.count]+rand()*0.5, 60
  sleep rand()*0.0625
  use_synth :sine
  pansewp notes[c2%notes.count]+rand()*0.5, 60
  use_synth :cnoise
  pansewpbpf notes[c2%notes.count]+rand()*0.5, 60
end


