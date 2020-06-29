use_bpm 45

with_fx :reverb, room: 0.6, mix: 0.5 do
  
  4.times do
    sample :perc_snap
    sleep 0.5
  end
  
  define :drumbeat do
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
    2.times do
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.125
    end
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
  end
  
  in_thread do
    loop do
      drumbeat
    end
  end
  
  sleep 4
  
  
  define :tripleosc do |n|
    play n
    play n-12
    play n-24
  end
  
  define :chorosc do |n, h|
    in_thread do
      
      play n
      
      (h-1).times do
        in_thread do
          sleep 0.0625*rrand(0,1)
          play n+0.5*rrand(0,1)
        end
      end
    end
  end
  
  
  define :chordchorosc do |n, h|
    in_thread do
      ct=0;
      n.count.times do
        in_thread do
          play n[ct]
        end
        
        (h-1).times do
          in_thread do
            sleep 0.0625*rrand(0,1)
            play n[ct]+0.5*rrand(0,1)
          end
        end
        ct=ct+1
      end
    end
  end
  
  
  define :sinesolo do
    use_synth :sine
    use_synth_defaults attack: 1, sustain: 2, release: 1
    play :Fs4
    sleep 4
    play :E4
    sleep 4
    play :D4
    sleep 4
    play :E4
    sleep 4
    play :B3
    sleep 4
    play :D4
    sleep 4
    play :A3
    sleep 4
    play :Gs3
    sleep 4
    play :Fs3
    sleep 4
    play :A3
    sleep 4
    play :B3
    sleep 8
  end
  
  
  define :trioscsolo do
    use_synth :sine
    use_synth_defaults
    tripleosc :Fs4
    sleep 2
    tripleosc :E4
    sleep 2
    tripleosc :D4
    sleep 2
    tripleosc :Fs4
    sleep 0.25
    tripleosc :E4
    sleep 0.5
    tripleosc :D4
    sleep 0.5
    tripleosc :B3
    sleep 0.5
    tripleosc :A3
    sleep 2.25
    tripleosc :Gs3
    sleep 2
    tripleosc :B3
    sleep 4
    
    tripleosc :Cs4
    sleep 0.25
    tripleosc :D4
    sleep 0.5
    tripleosc :E4
    sleep 0.5
    tripleosc :D4
    sleep 0.5
    tripleosc :Cs4
    sleep 2.25
    tripleosc :A3
    sleep 2
    tripleosc :B3
    sleep 6
    
  end
  
  
  define :bladesolo do
    use_synth :blade
    chorosc :Fs1, 6
    sleep 0.25
    chorosc :B1, 6
    sleep 1.75
    chorosc :Cs2, 6
    sleep 0.5
    chorosc :D2, 6
    sleep 0.25
    chorosc :E2, 6
    sleep 0.5
    chorosc :D2, 6
    sleep 0.5
    chorosc :Cs2, 6
    sleep 1.25
    chorosc :A1, 6
    sleep 2
    chorosc :B1, 6
    sleep 2
  end
  
  sinesolo
  trioscsolo
  bladesolo
  
  
  define :bassblade do
    use_synth :blade
    use_synth_defaults attack: 1, sustain: 2, release: 1
    2.times do
      chorosc :Fs1, 6
      sleep 4
      chorosc :A1, 6
      sleep 4
      chorosc :B1, 6
      sleep 4
      chorosc :Gs1, 6
      sleep 4
      in_thread do
        chorosc :Fs1,6
      end
      chorosc :A1, 6
      sleep 4
    end
    
    chorosc :Fs1, 6
    sleep 4
    chorosc :Fs1, 6
    sleep 12
  end
  
  define :ambientecho do
    use_synth :sine
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*10 do
      play :Cs4
      sleep 0.5
      play :Fs4
      sleep 1.5
      
      play :Gs4
      sleep 0.5
      play :A4
      sleep 0.5
      play :B4
      sleep 0.5
      play :Gs4
      
      sleep 2.5
      play :Cs5
      sleep 0.5
      play :A4
      sleep 0.5
      play :B4
      sleep 0.5
      play :Gs4
      sleep 2
      
      play :A4
      sleep 0.5
      play :Fs4
      sleep 1.5
      
      play :A4
      sleep 0.5
      play :Fs4
      sleep 1.5
      
      play :A4
      sleep 0.5
      play :Fs4
      sleep 1.5
      
      play :A4
      sleep 0.5
      play :Fs4
      sleep 5.5
    end
  end
  
  ambientecho
  
  define :soloecho do
    use_synth :blade
    use_synth_defaults attack: 0, sustain: 0.125, release: 0
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75*20 do
      2.times do
        play_pattern_timed [:Cs4,:fs4, :Gs4, :A4, :B4, :Cs5, :A4, :B4, :Gs4, :A4, :Fs4, :Gs4, :E4, :fs4,:d4],[0.5]
        sleep 4
      end
    end
  end
  
  soloecho
  ambientecho
  soloecho
  
end