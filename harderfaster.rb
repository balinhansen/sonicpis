
live_loop :foo do
  use_synth :sine
  t=0.25
  use_synth_defaults attack: 0, sustain: t, release: t, pitch: 12, amp: 1
  play (ring :fs3,:fs3,:a3,:a3,:d3,:d3,:b3,:b3,:e3,:e3,:d4,:d4,:g3,:g3,:g4,:g4).tick, release: 0.1
  sleep 0.25
end

live_loop :arp do
  use_synth :sine
  play (scale :e3, :minor_pentatonic, num_octaves: 1.5).tick, release: 0.25, amp: 1
  sleep 0.25
end

live_loop :arp2 do
  
  play (scale :e3, :minor_pentatonic).tick, release: 0.1, amp: 1
  sleep 0.125
end


live_loop :arp3 do
  
  play (scale :e4, :minor_pentatonic,num_octaves: 2).reverse.tick, release: 0.1, amp: 1
  sleep 0.5
end
