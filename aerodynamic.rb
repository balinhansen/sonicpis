bt=1 #big time eq: 0.1111, 0.125, 0.15, 0.166 0.175, 0.2, 0.25, 0.333, 0.5, 0.75, 1.0
ks=1 #kill switch off
o=0 #all octaves
ac=8 #use 1, 2, 4 or 8
r=0 #repeat mode
so=0 #solo octaves
sn=0 #solo notes
sy=0 #sync solo
tw=0 #tweaknotes
e=1 #endnoise off
syn=:supersaw

#use_synth

live_loop :aerodynamica do
  t=bt
  use_synth syn
  with_fx :reverb do
    if r==0
      play (ring :fs3, :fs4, :a4,:fs3,:fs4,:a4, :fs3, :fs4,
            :d3,:fs4,:gs4,:d3,:fs4,:gs4,:d3, :fs4,
            :e3+tw,:fs4+tw,:b4+tw,:e3+tw,:fs4+tw,:b4+tw,:e3+tw,:fs4+tw,
            :fs2,:fs4,:a4,:fs2,:fs4,:a4,:fs2,:fs4
            ).tick,  pitch: sn+so*12+o*12, amp: 1*ks*e, sustain: t, release: t*0.25
    else
      
      play (ring :fs3, :fs4, :a4,:fs3,:fs4,:a4, :fs3, :fs4,
            :d3,:fs4,:gs4,:d3,:fs4,:gs4,:d3, :fs4,
            :fs3, :fs4, :a4,:fs3,:fs4,:a4, :fs3, :fs4,
            :d3,:fs4,:gs4,:d3,:fs4,:gs4,:d3, :fs4
            ).tick,  pitch: sn+so*12+o*12, amp: 1*ks*e, sustain: t, release: t*0.25
    end
    
    sleep t
  end
end

live_loop :aerodynamicb do
  t=bt*ac
  if sy==1
    sync :aerodynamica
  end
  use_synth syn
  with_fx :reverb do
    play (ring :cs4, :b3, :b3, :fs3, :fs4, :cs4, :b3, :fs3).tick,  sustain: t, amp: 1*ks*e, pitch: o*12
    
    sleep t
  end
end

live_loop :aerodynamicend do
  use_synth syn
  use_synth_defaults sustain: bt, attack: 0, release: 0, delay: 0
  if (e==0)
    with_fx :reverb do
      play [:fs0,:fs1,:fs2,:fs3,:fs4,:fs5]
    end
    
  end
  sleep bt
  
end
