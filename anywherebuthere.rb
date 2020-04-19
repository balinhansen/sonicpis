use_bpm 42.5

slps=0
lslps=0
solo=1
soloamp=0.5
solophase=(0.625/2+0.625/8)*2
solosynth=:saw
solodecay=solophase*8
solopanphase=solophase*2
solomaxphase=solophase*5

live_loop :bassbeat do
  
  #sample :drum_bass_hard
  sleep 0.25
  #sample :drum_bass_hard
  sleep 0.25
  #sample :drum_snare_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  #sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  #sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.25
  #sample :drum_snare_hard
  sleep 0.25
  # sample :drum_bass_hard
  sleep 0.125
  #sample :drum_snare_hard
  sleep 0.125
end

if (slps==1) then
  sleep 6
end


live_loop :beat do
  with_fx :reverb, mix: 0.2, room: 1 do
    loop do
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
end


if (slps==1) then
  sleep 4
end

if (lslps==1 && slps==1) then
  sleep 10
end

live_loop :slide do
  if (slps==0) then
    sleep 20
  end
  
  use_synth :tri
  use_synth_defaults attack: 1, sustain: 1, release: 1
  
  with_fx :reverb, mix: 1, room: 1 do
    play :A3
    sleep 2
    play :Cs4
    sleep 2
    play :C4
    sleep 2
    play :E4
    sleep 4
    play :D4
  end
  if (slps==1) then
    sleep 20
  else
    sleep 0
  end
  
end


if (slps==1) then
  sleep 20
end

if (lslps==1 && slps==1) then
  sleep 30
end


live_loop :melodious do
  if (slps==0) then
    sleep 10
  end
  
  with_fx :reverb, mix: 0.5, room: 1 do
    with_fx :echo, phase: 0.375+0.375/4, decay: 0.375*8 do
      use_synth :sine
      play :E4
      sleep 0.375
      play :Gs4
      sleep 1.625
      play :E4
      sleep 0.375
      play :Fs4
      sleep 1.625
      play :E4
      sleep 0.375
      play :G4
      sleep 1.625
      play :D4
      sleep 0.375
      play :Fs4
      sleep 1.625
      play :E4
      if (slps==1) then
        sleep 20
      end
      sleep 2
    end
    
  end
  if (slps==0) then
    sleep 10
  end
  
end

if (slps==1) then
  sleep 6
end

live_loop :chimes do
  with_fx :reverb, mix: 0.5, room: 1 do
    if (slps==0) then
      sleep 6
    else
      sleep 20
    end
    
    play :A4
    sleep 0.25
    play :Gs4
    sleep 0.375
    play :E4
    sleep 0.5
    play :B3
    
    sleep 2.875
    if (slps ==1 && slps==1) then
      sleep 6
    else
      sleep 20
    end
    
    
  end
end

if (slps==1) then
  sleep 4
end

if (lslps==1 && slps==1) then
  sleep 30
end


define :melodya do
  play :B3
  sleep 0.25
  play :Cs4
  sleep 0.375
  play :D4
  sleep 0.875
  play :D4
  sleep 0.375
  play :B3
  sleep 0.25
  play :Cs4
  sleep 0.875
  play :B3
  sleep 0.375
  play :A3
  sleep 0.25
  play :B3
  sleep 1.375
  
  play :B3
  sleep 0.25
  play :Cs4
  sleep 0.375
  play :D4
  sleep 0.875
  play :D4
  sleep 0.375
  play :B3
  sleep 0.25
  play :Cs4
  sleep 0.875
  play :B3
  sleep 0.375
  play :A3
  sleep 0.25
  play :Gs3
  sleep 1.375
end

if (lslps == 1  && slps==1) then
  sleep 60
end

live_loop :solo do
  if (solo ==1) then
    
    with_fx :reverb, mix: 0, room: 1 do
      with_fx :panslicer, phase: solopanphase, mix: 1 do
        with_fx :echo, max_phase: solomaxphase, phase: solophase, decay: solodecay do
          use_synth solosynth
          use_synth_defaults attack: 0.0, sustain: 0.625/2, release: 1.25, amp: soloamp
          
          if (slps==1) then
            sleep 10
          end
          
          melodya
          
          melodya
          
          if (slps==0) then
            sleep 10
          end
        end
      end
    end
  else
    sleep 30
  end
  
end

