use_bpm 52

in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.75
    sample :drum_snare_hard
    sleep 0.25
  end
end

sleep 4

in_thread do
  with_fx :reverb, room: 1, mix: 1 do
    use_synth :tech_saws
    use_synth_defaults attack: 1, sustain: 1, release: 1
    loop do
      play :C4
      sleep 2
      play :Ds4
      sleep 1
      play :D4
      sleep 1
      play :As3
      sleep 3
      play :C4
      sleep 1
      play :A3
      sleep 8
    end
  end
end

sleep 16

use_synth :sine
use_synth_defaults sustain: 1
in_thread do
  loop do
    play :F4
    sleep 0.5
    play :G4
    sleep 1.5
    
    play :As4
    sleep 0.5
    play :A4
    sleep 0.5
    play :F4
    sleep 0.5
    play :C4
    sleep 2.5
    
    play :Ds4
    sleep 0.5
    play :F4
    sleep 1.5
    
    play :G4
    sleep 0.5
    play :Ds4
    sleep 0.5
    play :F4
    sleep 7
  end
end

sleep 32

in_thread do
  with_fx :reverb, room: 0.7, mix: 0.5 do
    loop do
      use_synth :tri
      use_synth_defaults attack: 0, sustain: 0.0625, release: 0
      play_pattern_timed [:As4,:As4,:As4,:As4,:As4,:As4],[0.25,0.125,0.25,0.125]
      play_pattern_timed [:As4,:As4,:D5,:As4,:C5],[0.125]
      sleep 2.25
      
      play_pattern_timed [:G4,:G4,:G4,:G4,:G4,:G4],[0.25,0.125,0.25,0.125]
      play_pattern_timed [:G4,:As4,:C5,:D5,:C5],[0.125]
      sleep 2.25
    end
  end
end

sleep 32

in_thread do
  loop do
    use_synth :pulse
    n=play :A3, attack: 1, sustain: 2, release: 3, note_slide: 1
    control n, note: :As4
    sleep 2
    control n, note: :A4
    sleep 2
    control n, note: :G4
    sleep 4
    
    n=play :G3, attack: 1, sustain: 2, release: 3, note_slide: 1
    control n, note: :Gs4
    sleep 2
    control n, note: :G4
    sleep 2
    control n, note: :F4
    sleep 2
    play :Ds4, attack: 1, release: 0;
    sleep 2
    sleep 16
  end
end

