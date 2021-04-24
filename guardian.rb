use_synth :tb303
use_synth_defaults attack: 0, sustain: 0, release: 0.09375, res: 0.01
#use_bpm 54

define :progress do |n|
  c=0
  (n.length-2).times do
    play_pattern_timed [n[c],n[c],n[c]],[0.25]
    
    2.times do
      play_pattern_timed [n[c],n[c+1]],[0.125]
      sleep 0.125
    end
    
    play n[c+1]
    sleep 0.125
    play_pattern_timed [n[c],n[c+1],n[c+2]],[0.125]
    c=c+1
  end
  
end

with_fx :reverb, mix: 0.5, room: 1 do
  with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*10 do
    
    loop do
      in_thread do
        progress chord(:c2, :major, num_octaves: 4).reverse #[:a5,:g5,:fs5,:e5,:d5,:cs5,:b4,:a4]
        
      end
      sleep 4
    end
  end
end