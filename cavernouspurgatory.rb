comment do
  play_pattern_timed [:c4,:d4,:ds4,:g4,:a4,:as4,:c5,:d5],[0.25]
  sleep 0.5
  play_pattern_timed [:c5,:d5,:ds5,:g5,:a5,:as5,:c6,:d6],[0.25]
  sleep 0.5
end

in_thread do
  loop do
    play_pattern_timed [:c4,:d4,:ds4,:g4,:a4,:as4,:as4,:a4,:g4,:ds4,:d4,:c4],[0.25]
  end
end

use_synth :tri
#use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
sleep 6

puts "6"
play_pattern_timed [:as4, :as4, :a4],[0.5,0.25]
sleep 1.75
puts "9"
play_pattern_timed [:as4, :as4, :a4],[0.5,0.25]
sleep 1.75
puts "12"
play_pattern_timed [:as4, :as4, :a4, :g4, :ds4, :d4, :c4, :ds4],[0.5,0.25,0.5,0.25,0.25,0.25,0.25,0.25,0.25,1]