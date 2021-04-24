use_synth :bnoise
use_synth_defaults attack: 0, sustain: 0.03125, release: 0

define :step do |n|
  synth :sine, note: n
  with_fx :nbpf, centre: n, res: 0.0001, centre_slide: 0.03125 do |f|
    synth :bnoise, note: n+12
    control f, centre: n-36
  end
end

use_bpm 60

in_thread do
  loop do
    3.times do
      step :a3
      sleep 1
    end
    step :b3
    sleep 1
    
  end
end

sleep 8


use_synth :sine
use_synth_defaults attack: 0, sustain: 0.125, release: 0, res: 0.0001

in_thread do
  4.times do
    with_fx :echo, phase: 1*0.75, decay: 1*0.75*10 do
      play_pattern_timed [:A3, :A3, :C4, :A3, :D4, :A3, :E4, :A3, :G4, :A3, :A4, :A3],[0.5]
    end
    sleep 2
  end
end

in_thread do
  8.times do
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*10 do
      play_pattern_timed [:A3, :A3, :C4, :A3, :D4, :A3, :E4, :A3, :G4, :A3, :A4, :A3],[0.25]
      sleep 1
    end
  end
end
