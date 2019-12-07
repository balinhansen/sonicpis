in_thread do
  loop do
    sample :drum_cymbal_closed
    sleep 0.5
  end
end

sleep 2

loop do
  
  in_thread do
    sample :drum_tom_lo_soft
    sleep 0.25
    sample :drum_tom_lo_soft
    sleep 0.5
    sample :drum_tom_lo_soft
    sleep 0.09375
    sample :drum_tom_lo_soft
    sleep 0.09375
    sample :drum_tom_lo_soft
    sleep 0.09375
    sample :drum_tom_lo_soft
  end
  
  sleep 2
  
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.5
  4.times do
    sample :drum_bass_soft
    sleep 0.03125
  end
  
  sample :drum_snare_soft
  sleep 0.5
  
  8.times do
    use_synth_defaults attack: 0, sustain: 0.25, release: 0.5
    play_pattern_timed [:A2, :E2,:G2,:Cs2,:Cs2,:F2,:A2],[0.25,0.5,1,0.375,0.5,1,0.375]
  end
  
end