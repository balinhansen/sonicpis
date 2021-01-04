use_bpm 54

in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.375
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_heavy_kick
    sleep 2.625
  end
end

sleep 4
in_thread do
  loop do
    sample :drum_cymbal_closed
    sleep 0.6666
  end
end

sleep 8

loop do
  sample :drum_tom_lo_soft
  sleep 0.5
  sample :drum_tom_lo_soft
  sleep 0.1666
  sample :drum_tom_mid_soft
  sleep 0.3333
  sample :drum_tom_hi_soft
  sleep 0.3333
  sample :drum_tom_hi_soft
  sleep 0.6666
  sample :drum_tom_mid_soft
  sleep 2
end