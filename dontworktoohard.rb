1.times  do
  2.times do
    play_pattern_timed [:e5, :cs5, :b4,:as4,:b4,:cs5],[0.25,0.25,0.25,0.5,0.25,0.5]
  end
  2.times do
    play_pattern_timed [:fs5, :cs5, :b4,:as4,:b4,:cs5],[0.25,0.25,0.25,0.5,0.25,0.5]
  end
end

#use_synth :pluck
#play_pattern_timed [:fs3,:g3,:a3,:D4,:cs4,:A3,:cs4,:a3,:d3],[0.25,0.25,0.5,0.5,0.5,0.5,0.5,0.25,0.75]

sleep 2

with_fx :reverb do
  with_fx :echo, phase: 0.25+0.25/4 do
    use_synth :dsaw
    use_synth_defaults attack: 0.125, release: 0, sustain: 0.0625
    play_pattern_timed [:fs3,:g3,:a3,:D4,:cs4,:A3,:cs4,:a3,:d3],[0.25,0.25,0.5,0.5,0.5,0.5,0.5,0.25,0.75]
  end
  
end

sleep 2

use_synth :tri
use_synth_defaults
play_pattern_timed [:fs4, :e4, :d4, :e4, :d4, :cs4, :d4, :cs4, :A3],[0.5,0.25,0.25,0.5,0.25,0.25,0.25,0.25,0.25]