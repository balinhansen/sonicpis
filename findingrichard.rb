use_bpm 45

define :sinechorus do |n,d,c|
  ct=0
  n.count.times do
    in_thread do
      c.times do
        in_thread do
          sleep 0.0625*rand()
          play n[ct]+(rand_i(2)==1?-1:1)*0.25*rand(), duration: d[ct]
        end
        
      end
    end
    sleep d[ct]
    ct=ct+1
  end
end


use_synth :sine
#use_synth_defaults attack: 0, sustain: 1, release: 1

in_thread do
  loop do
    with_fx :echo, phase: 0.25+0.25/4, decay: 8 do
      with_fx :reverb, room: 1, mix: 1 do
        #sinechorus [:Ds4,:As3,:D4,:As3,:Cs4,:As3,:D4,:As3],[1.5,0.5,1.5,0.5,1.5,0.5,1.5,0.5],12
        sinechorus [:Ds4,:F4,:D4,:As3,:Cs4,:Ds4,:C4,:As3],[3,1,3,1,3,1,3,1],3
        
        #play_pattern_timed [:Ds4,:As3,:D4,:As3],[1.5,0.5,1.5,0.5]
        #play_pattern_timed [:Cs4,:As3,:D4,:As3],[1.5,0.5,1.5,0.5]
      end
    end
  end
end

loop do
  with_fx :reverb, room: 1 do
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
  end
  
end
