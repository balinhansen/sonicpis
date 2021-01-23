
use_synth_defaults attack: 0.03125, sustain: 0.25, release: 0
in_thread do
  loop do
    with_fx :echo, phase: 0.125*0.85, decay: 0.125*0.85*20 do
      play_pattern_timed [:A5,:G5,:A5,:As5],[0.25]
      play_pattern_timed [:A5,:G5,:A5,:As5],[0.25]
      play_pattern_timed [:A5,:G5,:A5,:As5],[0.25]
      play_pattern_timed [:A5,:G5,:as5],[0.25]
      sleep 0.25
    end
    
  end
end


sleep 8

use_synth :saw
in_thread do
  loop do
    play_pattern_timed [:G5,:g5,:g5,nil,:g5,:g5],[1,0.25,0.25,0.25,0.125,0.125]
    play_pattern_timed [:F5,:F5,:F5,nil,:F5,:F5],[1,0.25,0.25,0.25,0.125,0.125]
    play_pattern_timed [:A5,:A5,:a5,nil,:A5,:A5],[1,0.25,0.25,0.25,0.125,0.125]
    play_pattern_timed [:D5,:D5,:D5,nil,:D5,:D5],[1,0.25,0.25,0.25,0.125,0.125]
  end
end


sleep 16

use_synth :tb303
in_thread do
  
  loop do
    
    play_pattern_timed [:G1,:G1,:G1,nil,:G1],[1,0.25,0.25,0.25,0.25]
    play_pattern_timed [:F1,:F1,:F1,nil,:F1],[1,0.25,0.25,0.25,0.25]
    play_pattern_timed [:A1,:a1,:a1,nil,:a1],[1,0.25,0.25,0.25,0.25]
    play_pattern_timed [:D1,:d1,:D1,nil,:D1],[1,0.25,0.25,0.25,0.25]
  end
end

sleep 32

in_thread do
  3.times do
    use_synth :tb303
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
      use_synth_defaults release: 0, sustain: 0.125
      play_pattern_timed [:D6,:D6,:d6],[0.25]
      sleep 0.5
      
      play_pattern_timed [:d6],[0.25]
      play_pattern_timed [:D6,:D6,:d6],[0.125]
      sleep 0.125
      
      play_pattern_timed [:D6,:D5,:d5],[0.25]
      sleep 0.5
      
      play_pattern_timed [:d5],[0.25]
      play_pattern_timed [:D5,:D5,:d5],[0.125]
      sleep 0.125
      
      play_pattern_timed [:Ds5,:Ds5,:Ds5],[0.25]
      sleep 0.5
      
      play_pattern_timed [:ds5],[0.25]
      play_pattern_timed [:Ds5,:Ds5,:ds5],[0.125]
      sleep 0.125
      
      play_pattern_timed [:F5,:F5,:F5],[0.25]
      sleep 0.5
      
      play_pattern_timed [:f5],[0.25]
      play_pattern_timed [:f5,:F5,:F5],[0.125]
      sleep 0.125
    end
  end
end

sleep 32

in_thread do
  loop do
    sample :drum_splash_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_splash_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_splash_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_splash_hard
    sleep 0.125
    sample :drum_splash_hard
    sleep 0.125
    sample :drum_tom_hi_hard
    sleep 0.125
    sample :drum_tom_mid_hard
    sleep 0.125
    sample :drum_tom_lo_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
  end
end

sleep 32

in_thread do
  loop do
    use_synth :tb303
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
      use_synth_defaults release: 0, sustain: 0.125
      play_pattern_timed [:D6,:D6,:d6],[0.25]
      sleep 0.5
      
      play_pattern_timed [:d6],[0.25]
      play_pattern_timed [:D6,:D6,:d6],[0.125]
      sleep 0.125
      
      play_pattern_timed [:D6,:D5,:d5],[0.25]
      sleep 0.5
      
      play_pattern_timed [:d5],[0.25]
      play_pattern_timed [:D5,:D5,:d5],[0.125]
      sleep 0.125
      
      play_pattern_timed [:Ds5,:Ds5,:Ds5],[0.25]
      sleep 0.5
      
      play_pattern_timed [:ds5],[0.25]
      play_pattern_timed [:Ds5,:Ds5,:ds5],[0.125]
      sleep 0.125
      
      play_pattern_timed [:F5,:F5,:F5],[0.25]
      sleep 0.5
      
      play_pattern_timed [:f5],[0.25]
      play_pattern_timed [:f5,:F5,:F5],[0.125]
      sleep 0.125
    end
  end
end
