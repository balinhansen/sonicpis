# Welcome to Sonic Pi v2.11
inst=Array.[](:blade,:chiplead,:beep)
use_bpm 120



for i in inst
  use_synth i
  play [34,46,58,70], attack: bt(1),decay:bt(1)
end

sleep bt(2)

for i in inst
  use_synth i
  play [36,48,60,72], attack: bt(1),decay:bt(1)
end

sleep bt(2)

for i in inst
  use_synth i
  play [38,50,62,74], attack: bt(2),decay:bt(6)
end

sleep bt(8);





for i in inst
  use_synth i
  play [38,50,62,74], attack: bt(1),decay:bt(1)
end

sleep bt(2)

for i in inst
  use_synth i
  play [39,51,63,75], attack: bt(1),decay:bt(1)
end

sleep bt(2)

for i in inst
  use_synth i
  play [41,53,65,77], attack: bt(2),decay:bt(10)
end

sleep bt(8);





for i in inst
  use_synth i
  play [43,55,67,79], attack: bt(1),decay:bt(1)
end

sleep bt(2)

for i in inst
  use_synth i
  play [45,57,69,81], attack: bt(1),decay:bt(1)
end

sleep bt(2)

for i in inst
  use_synth i
  play [46,58,70,82], attack: bt(2),decay:bt(14)
end

sleep bt(4);

