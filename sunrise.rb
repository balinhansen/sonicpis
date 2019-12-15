# Sprach Zarathustra, Op. 30 (ha, I wish)


use_synth :saw

play_pattern_timed [:a4, :b4, :c5, :d5, :e5, :f5, :g5, :a5, :b5, :c6],
  [0.25,0.25,1,0.5,0.5,1,2,1,1,2]

synth :saw, note: :c3, pan: -1, sustain: 7
sleep 0.5
synth :saw, note: :g3, pan: 0, sustain: 6.5
sleep 0.5
synth :saw, note: :c4, pan: 1, sustain: 6
sleep 2
s=synth :saw, note: :e4, pan: 0, sustain: 4, note_slide: 1, pan_slide: 1, pan: 1
sleep 1
control s, note: :ds4, pan: -1
sleep 2


4.times do
  sample :drum_tom_hi_hard, pan: 1
  sleep 0.25
  sample :drum_tom_lo_hard, pan: -1
  sleep 0.25
end

synth :saw, note: :c3, pan: -1, sustain: 7
sleep 0.5
synth :saw, note: :g3, pan: 0, sustain: 6.5
sleep 0.5
synth :saw, note: :c4, pan: 1, sustain: 6
sleep 2
s=synth :saw, note: :ds4, sustain: 4, note_slide: 0.5, pan_slide: 0.5, pan: -1
sleep 0.5
control s, note: :e4, pan: 1

sleep 2


4.times do
  sample :drum_tom_hi_hard, pan: -1
  sleep 0.25
  sample :drum_tom_lo_hard, pan: 1
  sleep 0.25
end

synth :saw, note: :c3, pan: -1, sustain: 7
sleep 0.5
synth :saw, note: :g3, pan: 0, sustain: 6.5
sleep 0.5
synth :saw, note: :c4, pan: 1, sustain: 6
sleep 2
synth :saw, note: :e4, sustain: 0.25, note_slide: 0.25, pan_slide: 0.25, pan: 0
sleep 0.25
synth :saw, note: :a4, sustain: 2, note_slide: 0.25, pan_slide: 0.25, pan: 0
sleep 2
synth :saw, note: :e4, sustain: 2, note_slide: 0.25, pan_slide: 0.25, pan: 0

