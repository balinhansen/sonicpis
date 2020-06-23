use_bpm 42

in_thread do
  loop do
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_snare_soft
    sleep 0.5-0.1875/2-0.125
    
    sample :drum_bass_soft
    sleep 0.1875/2
    sample :drum_snare_soft
    sleep 0.125
    
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    
    sleep 0.5
  end
end


sleep 4


use_synth :pluck
in_thread do
  loop do
    play :Fs5
    sleep 2
    play_pattern_timed [:Cs5,:D5,:E5],[0.375,0.375,0.5]
    sleep 0.75
    play_pattern_timed [:A4,:B4,:E5],[0.375,0.375,0.5]
    sleep 0.75
    play_pattern_timed [:Gs4,:A4,:Cs5],[0.375,0.375,0.5]
    sleep 4.75
  end
end

sleep 32

comment do
  
  
  use_synth :saw
  with_fx :reverb, room: 0.5, mix: 0.5 do
    #with_fx :distortion, distort: 0.5, amp: 0.25 do
    
    play :Fs4, attack: 1, sustain: 1.5
    sleep 2
    n=play :Gs4, attack: 0.0625, duration: 1, release: 0.125, note_slide: 0.25
    sleep 0.25
    control n, note: :A4
    sleep 0.5
    
    n=play :Gs4, attack: 0.0625, duration: 0.75, release: 0.125, note_slide: 0.125
    sleep 0.125
    control n, note: :Fs4
    sleep 0.375
    play :E4, duration: 1.5
    sleep 2.5
    play :Cs4
    sleep 0.25
    play :E4
    sleep 0.25
    play :Fs4, duration: 1.5
    
    sleep 5.5
    
    
    play_pattern_timed [:Fs4,:A4,:Fs4,:A4],[0.25]
    n=play :C5, note_slide: 0.125, duration: 0.25
    
    control n, note: :Cs5
    sleep 0.5
    play :E5
    sleep 0.55
    
    play :Cs5
    sleep 0.25
    play :B4
    sleep 2
    
    play_pattern_timed [:A4,:B4,:A4,:B4,:A4,:B4,:A4,:Cs5,:B4,:Cs5,:B4,:Cs5,:B4],[0.1875,0.125]
    play_pattern_timed [:A4,:B4,:Cs5,:B4,:A4,:B4,:Cs5,:B4,:A4,:B4,:Cs5,:B4],[0.125,0.125,0.125,0.1875]
    play_pattern_timed [:A4,:B4,:B4,:A4,:Cs5,:B4,:B4,:A4,:B4,:A4,:Fs4],[0.125,0.125,0.125,0.125]
    #end
  end
end
