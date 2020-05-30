use_bpm 45


define :drum_riff do
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_bass_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.125
  sample :drum_snare_soft
  sleep 0.125
end

in_thread do
  sleep 8
  use_synth :sine
  use_synth_defaults attack: 1, sustain: 1, release: 1
  
  loop do
    with_fx :distortion, distort: 0.15 do
      play :Ds3
      play :Gs3
      sleep 4
      play :Cs3
      play :Fs3
      sleep 4
    end
  end
  
end

in_thread do
  8.times do
    with_fx :reverb, room: 0.6, mix: 1 do
      drum_riff
    end
  end
  8.times do
    with_fx :reverb, room: 0.2, mix: 0.5 do
      drum_riff
    end
  end
  
  4.times do
    with_fx :reverb, room: 0.6, mix: 1 do
      drum_riff
    end
  end
  
  loop do
    with_fx :reverb, room: 0.2, mix: 0.5 do
      drum_riff
    end
  end
  
end


in_thread do
  sleep 36
  use_synth_defaults attack: 0, release: 2
  play_pattern_timed [:Ds4,:Cs4, :C4,:B3,:C4],[0.5,0.5,3,4,4]
  sleep 4
  play_pattern_timed [:Ds4, :Cs4,:B3,:Cs4,:Ds4,:B3,:C4],[0.5,0.5,0.25,0.25,0.25,2.5,4]
  sleep 4
  
end
