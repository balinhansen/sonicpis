in_thread do
  loop do
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.125
    sample :drum_cymbal_closed
    sleep 0.25
    
    sample :drum_cymbal_closed
    sleep 0.25
  end
end

in_thread do
  loop do
    2.times do
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.375
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
    end
    
    2.times do
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.375
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
    end
    
  end
end


use_synth :zawa
use_synth_defaults sustain: 0.0625, release: 0, attack: 0

with_fx :reverb, room: 0.7, mix: 0.5 do
  loop do
    play_pattern_timed [:d3, :F3, :E3,:a2],[0.25,0.25,0.0625]
    sleep 0.1875+0.25+1;
    play_pattern_timed [:g3,:a3,:g3,:e3,:f3,:D3],[0.125]
    sleep 1
  end
end