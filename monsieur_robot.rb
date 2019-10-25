# Welcome to Sonic Pi v3.0.1
use_synth :sine

slack=1
space=0.0;

define :robot do
  in_thread do
    use_synth_defaults amp: 0.5, attack: 1, sustain:16,release: 1, decay: 0
    play 54
    play 59
    sleep 3
    
    play 66
    sleep 4
    play 67
    sleep 4
    play 64
    sleep 8
    
    
    use_synth :saw
    use_synth_defaults amp: 1, attack: 0, sustain: 0.5,release: 3,decay: 0.25
    
    play 47
    sleep space
    play 54
    sleep space
    play 59
    sleep space
    play 63
    
    sleep 3
    
    play 47
    sleep space
    play 54
    sleep space
    play 59
    sleep space
    play 64
    
    sleep 1
    
    play 47
    sleep space
    play 54
    sleep space
    play 59
    sleep space
    play 62
    
    sleep 4
    
    play 47
    sleep space
    play 54
    sleep space
    play 59
    sleep space
    play 63
    
  end
end


#robot

