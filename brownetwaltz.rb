#use_synth :saw
#play :c2

in_thread do
  loop do
    2.times do
      play_pattern_timed [:c4, :g4,:f4,:as4,:a4,:as4,:c5,:g4],[0.66,0.33,0.66,0.33,0.66,0.33,0.66,0.33]
    end
    2.times do
      play_pattern_timed [:c4, :g4, :f4, :ds4, :f4, :g4, :c4, :as3],[0.66,0.33,0.66,0.33,0.66,0.33,0.66,0.33]
    end
  end
end

in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.166
    sample :drum_bass_hard
    sleep 0.166
    sample :drum_tom_lo_hard
    sleep 0.33
    sample :drum_snare_hard
    sleep 0.33
  end
end
