use_bpm 30

use_synth_defaults attack: 0, sustain: 0.125, release: 0.125

2.times do
  play_pattern_timed [:A5, :G5, :G5, :Fs5],[1,1,1,1]
end

use_synth_defaults attack: 0, sustain: 0.125, release: 0.125

2.times do
  play_pattern_timed [:A5, :A5, :A5, :E5, :A5],[0.25,0.25,0.125,0.125,0.125]
  play_pattern_timed [:G5, :G5, :G5, :E5, :G5],[0.25,0.25,0.125,0.125,0.125]
  play_pattern_timed [:G5, :G5, :G5, :D5, :G5],[0.25,0.25,0.125,0.125,0.125]
  play_pattern_timed [:Fs5, :Fs5, :Fs5, :D5, :Fs5],[0.25,0.25,0.125,0.125,0.125]
end

use_synth_defaults attack: 0, sustain: 0.125, release: 0.125

2.times do
  play_pattern_timed [:A5, :E5, :A5, :G5, :E5, :G5, :Fs5,:D5, :Fs5, :E5, :Cs5,:D5, :E5],[0.75,0.125,0.125,0.75,0.125,0.125,0.75,0.125,0.125,0.75,0.125,0.125,0.125,0.125]
end


use_synth :tri

use_synth_defaults attack: 0.0625, sustain: 0.0625, release: 0
loop do
  play_pattern_timed [:E4,:E3,:G3,:A3,:B3,:D4],[0.125,0.375,0.5,0.5,0.125,0.125]
end