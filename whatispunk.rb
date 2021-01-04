

use_bpm 60*12/21


in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.0625
  end
  
end

in_thread do
  loop do
    puts "splash"
    sample :drum_splash_hard
    sample :drum_snare_hard
    sleep 0.125+0.0625
    sample :drum_snare_hard
    sleep 0.375+0.0625
    sample :drum_snare_hard
    sleep 0.25+0.0625
    sample :drum_snare_hard
    sleep 0.125+0.0625
    sample :drum_snare_hard
    sleep 0.125+0.0625
    sample :drum_snare_hard
    sleep 0.375+0.0625
    sample :drum_snare_hard
    sleep 0.25
  end
end

define :power do |n|
  play n
  sleep 0.03125/4
  play n+7
  sleep 0.03125/4
  play n+12
  sleep 0.03125/4
  play n+16
  sleep 0.03125/4
  
  sleep 0.0625
  play n+16
  sleep 0.03125/4
  play n+12
  sleep 0.03125/4
  play n+7
  sleep 0.03125/4
  play n
  sleep 0.03125/4
end

use_synth :blade
use_synth_defaults attack: 0, sustain: 0, release: 0.125


sleep 4


use_bpm 60



with_fx :distortion, distort: 0.99, amp: 0.5 do
  loop do
    16.times do
      power :D3
      sleep 0.1875/2
    end
    puts "loop"
    4.times do
      power :As2
      sleep 0.1875/2
    end
    4.times do
      power :E2
      sleep 0.1875/2
    end
    
    8.times do
      power :F2
      sleep 0.1875/2
    end
  end
end
