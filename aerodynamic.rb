bt=1 #big time
ks=1 #kill switch
o=-2 #all octaves
ac=1 #use 1, 2, 4 or 8
r=1 #repeat mode
so=2 #solo octaves
sn=0 #solo notes
sy=0 #sync solo

live_loop :aerodynamica do
  t=bt
  use_synth :dsaw
  with_fx :reverb do
    if r==0
      play (ring :fs3, :fs4, :a4,:fs3,:fs4,:a4, :fs3, :fs4,
            :d3,:fs4,:gs4,:d3,:fs4,:gs4,:d3, :fs4,
            :e3,:fs4,:b4,:e3,:fs4,:b4,:e3,:fs4,
            :fs2,:fs4,:a4,:fs2,:fs4,:a4,:fs2,:fs4
            ).tick,  pitch: sn+so*12+o*12, amp: 1*ks, sustain: t, release: t*0.25
    else
      
      play (ring :fs3, :fs4, :a4,:fs3,:fs4,:a4, :fs3, :fs4,
            :d3,:fs4,:gs4,:d3,:fs4,:gs4,:d3, :fs4,
            :fs3, :fs4, :a4,:fs3,:fs4,:a4, :fs3, :fs4,
            :d3,:fs4,:gs4,:d3,:fs4,:gs4,:d3, :fs4
            ).tick,  pitch: sn+so*12+o*12, amp: 1*ks, sustain: t, release: t*0.25
    end
    
    sleep t
  end
end

live_loop :aerodynamicb do
  t=bt*ac
  if sy==1
    sync :aerodynamica
  end
  use_synth :dsaw
  with_fx :reverb do
    play (ring :cs4, :b3, :b3, :fs3, :fs4, :cs4, :b3, :fs3).tick,  sustain: t, amp: 1*ks, pitch: o*12
    
    sleep t
  end
end