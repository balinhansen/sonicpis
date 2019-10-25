# Welcome to Sonic Pi v2.11

$localBPM=120
use_bpm $localBPM

for i in 0..3
  play 56;
  sleep bt(i);
end

sleep bt(1);

for i in 0..3
  play 56;
  sleep bt(1);
end

sleep bt(1);

play 56
play 59
play 63
play 68

sleep(bt(1))
theChord=[56,59,63,68];

play_chord([56,59,63,68])
sleep bt(1);

for i in 0..2
  play_chord(theChord);
  sleep bt(1);
end

play_chord(theChord);
sleep bt(1);

play_chord(newChord=[54,57,62,66]);
sleep bt(1);

notes=Array.[](newChord,newChord,newChord,newChord)
puts notes[0];

for i in notes
  play_chord(i);
  sleep bt(1);
end

for i in notes
  play_chord(i);
  sleep bt(1);
end

for i in (0..7)
  play_chord(theChord);
  sleep bt(1);
end


for i in (0..3)
  play_chord(newChord);
  sleep bt(1);
end

sleep bt(1);

for i in (0..2)
  play_chord(newChord);
  sleep bt(1);
end