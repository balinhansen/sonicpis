use_bpm 48

in_thread do
  loop do
    3.times do
      sample :perc_snap
      sleep 0.5
    end
    sample :perc_snap2
    sleep 0.5
  end
end

sleep 4


in_thread do
  loop do
    sample :drum_snare_soft
    sleep 0.1
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.1
    sample :drum_bass_soft
    
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.1
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.45
  end
end
sleep 4

with_fx :reverb, room: 0.4, mix: 0.5 do
  2.times do
    play_pattern_timed [:f4, :e4],[0.25]
    play_pattern_timed [:d4, :e4],[0.25]
    sleep 0.25
    play_pattern_timed [:d4, :c4, :d4],[0.25]
    sleep 0.25
    play_pattern_timed [:c4, :as3, :c4],[0.25]
    sleep 1
  end
  
  
  2.times do
    use_synth :sine
    n=play :F5, note_slide: 0.25
    control n, note: :E5
    sleep 0.75
    
    n=play :D5, note_slide: 0.25
    control n, note: :E5
    sleep 0.75
    
    n=play :d5, note_slide: 0.25
    control n, note: :c5
    sleep 0.25
    control n, note: :d5
    sleep 0.75
    
    n=play :c5, note_slide: 0.25
    control n, note: :As4
    sleep 0.25
    control n, note: :c5
    sleep 1.25
  end
  
end