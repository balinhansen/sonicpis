synth :noise, attack: 0, release: 0, sustain: 0.001, amp: 10
with_fx :nbpf,  centre: :a2, amp: 1, centre_slide: 0.125 do |f|
  n=synth :saw, note: :a2, note_slide: 0.125, sustain: 0.0, attack: 0, release: 0.125
  
  synth :noise, note: :a4, sustain: 0.125, attack: 0, release: 0
  control f, centre: :a7
  control n, note: :a7
end
