use_bpm 60

in_thread do
  with_fx :reverb do
    15.times do
      synth :pulse, note: [:as5], attack: 0, sustain: 0.125, release: 0
      synth :saw, note: [:as5], attack: 0, sustain: 0.125, release: 0
      synth :tri, note: [:as5], attack: 0, sustain: 0.125, release: 0
      synth :sine, note: [:as5], attack: 0, sustain: 0.125, release: 0
      sleep 0.50
    end
  end
end

sleep 4

use_synth :tb303

notes=[:f3,:a3,:as3,:f4,:as3,:a3,:as3,:a3,:f3]

with_fx :reverb do
  with_fx :echo, phase: 0.25+0.25/4 do
    
    4.times do
      play_pattern_timed notes.map{|x| [x]},[0.5,0.25,0.5,0.5,0.5,0.5,0.25,0.25,0.25], attack: 0, release: 0
      sleep 0.5
    end
  end
  
end

sleep 1


use_synth :pluck

2.times do
  play_pattern_timed [:f3,:a3,:as3,:f4,:as3,:a3,:as3,:a3,:as3,:c4].map{|x| [x]},[0.375,0.25,0.375,0.5,0.75,0.25,0.375,0.25], attack: 0, release: 1
  sleep 0.25
end


use_synth :tb303
with_fx :reverb do
  with_fx :echo, phase: 0.25+0.25/4 do
    use_synth_defaults attack: 0, sustain: 0.0625, release: 0
    play_pattern_timed [:f3,:a3,:as3,:d4, :as3, :c4,:f4,:f3],[1,1,1,1.5,0.5,0.5,0.5]
  end
end
