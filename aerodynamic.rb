bt=1
ks=1
o=-2
ac=1 #use 1, 2, 4 or 8

live_loop :aerodynamica do
  t=bt
  use_synth :dsaw
  play (ring :fs3, :fs4, :a4,:fs3,:fs4,:a4, :fs3, :fs4,
        :d3,:fs4,:gs4,:d3,:fs4,:gs4,:d3, :fs4,
        :e3,:fs4,:b4,:e3,:fs4,:b4,:e3,:fs4,
        :fs2,:fs4,:a4,:fs2,:fs4,:a4,:fs2,:fs4
        ).tick,  pitch: 0+o*12, amp: 1*ks, sustain: t, release: t*0.25
  sleep t
end

live_loop :aerodynamicb do
  t=bt*ac
  sync :aerodynamica
  use_synth :dsaw
  play (ring :cs4, :b3, :b3, :fs3, :fs4, :cs4, :b3, :fs3).tick,  sustain: t, amp: 1*ks, pitch: 0+o*12
  sleep t
end