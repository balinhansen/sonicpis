comment do
  play_pattern_timed [:G5,:F5,:G5,:C5],[0.25]
  sleep 0.75
  play_pattern_timed [:G5,:F5,:G5,:D5],[0.25]
  sleep 0.75
  play_pattern_timed [:F5,:E5,:F5,:D5],[0.25]
  sleep 0.25
  play :F5
  sleep 0.5
  play_pattern_timed [:F5,:E5,:D5,:C5],[0.25]
  sleep 0.75
end

play_pattern_timed [:G5,:F5,:G5,:C5],[0.25]
sleep 0.75
play_pattern_timed [:G5,:F5,:G5,:D5],[0.25]
sleep 0.75
play_pattern_timed [:F5,:E5,:F5,:D5],[0.25]
sleep 0.25
play_pattern_timed [:F5,:E5,:F5,:D5],[0.25]
sleep 0.25
play_pattern_timed [:F5,:E5,:D5,:C5],[0.25]