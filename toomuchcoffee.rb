use_bpm 85

live_loop :drumbeat do
  
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_tom_mid_soft
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_tom_lo_soft
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
end

sleep 8
live_loop :slowbass do
  4.times do
    use_synth :dsaw
    use_synth_defaults attack: 0, sustain: 0.25,release: 0.125
    play_pattern_timed [:b0,:b0,:b0,:b0,:fs1,:a1],[1,1,0.5,0.5,0.5,0.5]
  end
  sleep 32
end

sleep 16

live_loop :fastbase do
  use_synth :dsaw
  use_synth_defaults attack: 0, sustain: 0.25,release: 0.125
  play_pattern_timed [:b0,:b0,:b0,:b0,:fs1,:a1],[0.5,0.5,0.25,0.25,0.25,0.25]
end

sleep 8

live_loop :sawsolo do
  4.times do
    use_synth :saw
    use_synth_defaults attack: 0, release: 0, sustain: 0.125
    play_pattern_timed [:B2,:a2,:b2,:b2],[0.125,0.125,0.25,0.5]
    play_pattern_timed [:B2,:a2,:b2,:a2,:b2,:b2],[0.125,0.125,0.125,0.125,0.25,0.25,0.25]
  end
  4.times do
    use_synth :saw
    use_synth_defaults attack: 0, release: 0, sustain: 0.125
    play_pattern_timed [:B2,:a2,:b2,:d3],[0.125,0.125,0.25,0.5]
    play_pattern_timed [:B2,:a2,:b2,:a2,:b2,:e3],[0.125,0.125,0.125,0.125,0.25,0.25,0.25]
  end
  4.times do
    use_synth :saw
    use_synth_defaults attack: 0, release: 0, sustain: 0.125
    play_pattern_timed [:B2,:a2,:b2,:b2],[0.125,0.125,0.25,0.5]
    play_pattern_timed [:B2,:a2,:b2,:a2,:b2,:b2],[0.125,0.125,0.125,0.125,0.25,0.25,0.25]
  end
  4.times do
    use_synth :saw
    use_synth_defaults attack: 0, release: 0, sustain: 0.125
    play_pattern_timed [:B2,:a2,:b2,:b2],[0.125,0.125,0.25,0.5]
    play_pattern_timed [:B2,:a2,:b2,:a2,:b2,:gs2],[0.125,0.125,0.125,0.125,0.25,0.25,0.25]
  end
end