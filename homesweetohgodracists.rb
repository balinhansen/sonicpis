use_synth :piano

#play_pattern_timed [:A4],[1]


chord=[[:E3,:A3,:Cs4,:A4],[:E3,:A3,:Cs4,:Gs4],[:D3,:A3,:D4,:Fs4]]
repchord=chord.map{|row| [row.map{|col| col},row.map{|col| col},row.map{|col| col}]}.reduce(:concat)
play_pattern_timed repchord,[1,0.5,1]
sleep 1


chord=[[:D3,:A3,:D4,:Fs4],[:D3,:A3,:D4,:E4],[:D3,:A3,:D4,:Fs4],[:E3,:A3,:Cs4,:E4]]
repchord=chord.map{|row| [row.map{|col| col},row.map{|col| col},row.map{|col| col}]}.reduce(:concat)
play_pattern_timed repchord,[1,0.5,1]
sleep 1




play_pattern_timed [:E3,:A3,:Cs4,:Fs4,:E4],[0.5,0.5,0.5,1,1]
play [:E3,:A3,:Cs4,:A4]
sleep 1
play [:E3,:A3,:Cs4,:Gs4]
sleep 1
play [:E3,:A3,:Cs4,:E4]
sleep 2

play_pattern_timed [:D3,:A3,:Cs4,:D4],[0.5,0.5,0.5,1,1]
play_pattern_timed [:Fs4,:E4,:D4,:Cs4],[0.5]
sleep 1
play_pattern_timed [:A3,:B3,:Cs4,:B3,:A3],[0.5]
sleep 2
play_pattern_timed [[:E3,:A3,:Cs4,:A4]].map{|x| [x,x,x]},[1]