in_thread do
  with_fx :echo, phase: 0.25+0.25/4, decay: 1 do
    with_fx :reverb, room: 1, mix: 0.75 do
      
      synth :tri, attack: 0.0625, release: 0, sustain: 0, note: :Fs4
      n=synth :sine, note: :Fs4, note_slide: 0.25
      control n, note: :G4
      sleep 1
      synth :tri, attack: 0.0625, release: 0, sustain: 0, note: :Fs4
      n=synth :sine, note: :Fs4, note_slide: 0.25
      control n, note: :G4
      sleep 0.5
      synth :tri, attack: 0.0625, release: 0, sustain: 0, note: :B4
      n=synth :sine, note: :B4, note_slide: 0.25
      control n, note: :A4
      sleep 0.5
      synth :tri, attack: 0.0625, release: 0, sustain: 0, note: :Fs4
      n=synth :sine, note: :Fs4, note_slide: 0.25
      control n, note: :G4
      sleep 1
      
      synth :tri, attack: 0.0625, release: 0, sustain: 0, note: :Fs4
      n=synth :sine, note: :Fs4, note_slide: 0.25
      control n, note: :G4
      sleep 0.5
      synth :tri, attack: 0.0625, release: 0, sustain: 0, note: :e4
      n=synth :sine, note: :E4, note_slide: 0.25
      control n, note: :Fs4
      sleep 0.5
      synth :tri, attack: 0.0625, release: 0, sustain: 0, note: :D4
      n=synth :sine, note: :D4, note_slide: 0.25
      control n, note: :E4
      sleep 0.5
    end
  end
end

#sleep 3.5

in_thread do
  play_pattern_timed [:Fs4,:G4,:Fs4,:G4,:B4,:A4,:Fs4,:G4],[0.25,1,0.25,0.5,0.25,0.5,0.25,1]
  puts "time"
  play_pattern_timed [:Fs4,:G4,:E4,:Fs4,:D4,:E4],[0.25,0.25]
end
