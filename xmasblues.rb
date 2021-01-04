in_thread do
  loop do
    play_pattern_timed [:d5,:d5,:d5],[0.5,0.5,0.5]
    play_pattern_timed [:f5,:ds5,:ds5,:ds5],[0.25,0.5,0.5,0.25]
    play_pattern_timed [:d5,:c5,:As4],[0.25,0.25,0.25]
    play_pattern_timed [:a5,:a5,:a5],[0.5,0.5,0.5]
    play_pattern_timed [:as5,:ds5],[0.25,1]
    sleep 1.5
  end
end

sleep 8

in_thread do
  loop do
    play_pattern_timed [:g4,:ds4,:f4,:d4,:ds4,:c4,:d4,:f4],[1]
    play_pattern_timed [:ds4,:c4,:d4,:as3,:c4,:ds4,:d4,:f4],[1]
  end
end

sleep 16

loop do
  sample :drum_cymbal_closed
  sleep 1
end
