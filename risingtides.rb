use_synth :hoover

use_synth_defaults attack: 1, release: 2, sustain: 6

with_fx :reverb do
  play :A1
  sleep 8
  play :G1
  sleep 8
  play :C1
  sleep 8
  play :F1
  sleep 8
  play :A0
  sleep 8
  play :D1
  sleep 8
  play :C1
  sleep 8
  play :F1
  sleep 8
  play :G1
  sleep 8
  play :E1
  sleep 9
end

use_synth :sine
use_synth_defaults attack: 0, release: 0, sustain: 0.06125
with_fx :reverb do
  play_pattern_timed [:a4, :C5, :d5, :e5, :g5, :a6], [0.125]
end
sleep 0.1875
play :a7
sleep 0.125


in_thread do
  8.times do
    with_fx :reverb do
      play_pattern_timed [:a5, :g5, :c5, :f5, :a4, :d5, :c5, :f5, :g5, :e5], [0.125]
    end
    
  end
end


sleep 1.25
play :g7
sleep 1.125
play :f7
sleep 1
play :d7
sleep 0.875
play :c7
sleep 0.625
play :e7
sleep 0.5
play :a6

sleep 0.375
play :d7
sleep 1.125
play :c7
sleep 1
play :f7
sleep 0.875
play :g7
sleep 0.75
play :e7
sleep 0.625
play :d7
sleep 1

use_synth :pnoise
use_synth_defaults attack: 1, sustain: 2, release: 3
play :A0

