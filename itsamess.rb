use_synth :sine
#use_synth_defaults attack: 0, sustain: 0.125, release: 0

play_pattern_timed [:a3,:b3,:c4,:e4,:fs4,:d6],[0.0625]
sleep 0.1875+1

in_thread do
  loop do
    play_pattern_timed [:d4,:d4,:d4,:d4, :d4,:a4],[0.25,0.125,0.25,0.125,0.25,0.5]
    play_pattern_timed [:A3,:B3,:C4,:d4,:C4,:e4,:e4,:d4],[0.25,0.25,1,0.25,1,0.25,0.25,1]
  end
end

sleep 13

in_thread do
  loop do
    use_synth_defaults
    use_synth :pretty_bell
    play :a4
    sleep 0.25
    play :g4
    sleep 1
    play :b4
    sleep 0.25
    play :fs4
    sleep 1
    play :d6
    sleep 2
  end
  
end
