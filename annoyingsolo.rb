2.times do
  sample :drum_bass_hard
  s=synth :saw, note: :A4, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :c5
  sleep 0.25
  
  sample :drum_bass_hard
  s=synth :saw, note: :e5, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :c5
  sleep 0.25
  
  sample :drum_bass_hard
  s=synth :saw, note: :g4, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :b4
  sleep 0.25
  
  sample :drum_bass_hard
  s=synth :saw, note: :d5, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :b4
  sleep 0.25
  
  
  sample :drum_bass_hard
  s=synth :saw, note: :f4, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :a4
  sleep 0.25
  
  sample :drum_bass_hard
  s=synth :saw, note: :c5, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :a4
  sleep 0.25
  
  sample :drum_bass_hard
  s=synth :saw, note: :g4, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :b4
  sleep 0.25
  
  sample :drum_bass_hard
  s=synth :saw, note: :d5, note_slide: 0.125, attack: 0, sustain: 0.375, release: 0
  sleep 0.125
  control s, note: :b4
  sleep 0.25
  
end

play_pattern_timed [:c7,:b6,:a6,:e6,:c6,:b5,:a5],[0.1875]

