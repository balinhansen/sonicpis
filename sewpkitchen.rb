use_synth :square

define :sewp do |n, d|
  s=play note: n, note_slide: d, sustain: d, release: 0, amp: 10
  control s, note: n-24
end

notes=[:f4,:e4,:c4,:a3]

c=0;
c2=0;


loop do
  use_synth :saw
  sewp notes[c2%notes.count], 2
  use_synth :sine
  sewp notes[c2%notes.count]+12, 2
  
  use_synth :pulse
  
  2.times do
    3.times do
      sewp notes[c%notes.count], 0.125
      sleep 0.25
    end
    sleep 0.25
    sewp notes[c%notes.count], 0.125
    sleep 0.25
    3.times do
      sewp notes[c%notes.count], 0.0625
      sleep 0.125
    end
    sleep 0.25
    5.times do
      sewp notes[c%notes.count], 0.0625
      sleep 0.125
    end
    c+=1
  end
  c2+=1
end

