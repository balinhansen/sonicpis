use_bpm 45

with_fx :reverb, room: 1, mix: 0.75 do
  loop do
    play :A3, sustain: 0.125, release: 0
    n=play :F3, note_slide: 0.125, attack: 0, sustain: 0.25, release: 0
    sleep 0.125
    control n, note: :A4
    sleep 0.125
    
    15.times do
      play :D4, sustain: 0.125, release: 0
      play :A4, sustain: 0, release: 0.125
      sleep 0.25
    end
    
    play :E4, sustain: 0.125, release: 0
    n=play :B4, note_slide: 0.125, attack: 0, sustain: 0.25, release: 0
    sleep 0.125
    control n, note: :G4
    sleep 0.125
    
    15.times do
      play :B3, sustain: 0.125, release: 0
      play :G4, sustain: 0, release: 0.125
      sleep 0.25
    end
  end
end