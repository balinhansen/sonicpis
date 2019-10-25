# Welcome to Sonic Pi v2.11
use_bpm 240;

play_chord(newChordA=[56,59,63,68]);
sleep bt(1);
play_chord(newChordB=[54,57,61,66]);
sleep bt(1);
play_chord(newChordC=[50,53,57,62]);
sleep bt(1);
play_chord(newChordD=[49,52,56,61]);

sleep bt(1);

for b in 0..3
  
  for i in 0..2
    sample :drum_heavy_kick
    sleep bt(4);
    sample :drum_snare_soft
    sleep bt(4);
  end
  
  for i in 0..0
    sample :drum_snare_soft
    sleep bt(1);
    sample :drum_heavy_kick
    sleep bt(1);
    sample :drum_heavy_kick
    sleep bt(1);
    sample :drum_snare_soft
    sleep bt(1);
  end
  sample :drum_heavy_kick
  sleep bt(1);
  sample :drum_heavy_kick
  sleep bt(1);
  sample :drum_heavy_kick
  sleep bt(1);
  sample :drum_snare_soft
  sleep bt(1);
  
end
sample :drum_snare_soft
sleep bt(1);
sample :drum_snare_soft
sleep bt(1);