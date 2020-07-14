
use_synth :saw

with_fx :reverb, room: 0.6, mix: 0.5 do
    
    with_fx :distortion, distort: 0.7 do
      
      2.times do
        play_pattern_timed [:C4,:D4,:C4,:B3],[0.5], release: 0
      end
      3.times do
        play_pattern_timed [:C4,:D4,:C4,:B3],[0.25], release: 0
      end
      6.times do
        play_pattern_timed [:C4,:D4,:C4,:B3],[0.125], release: 0
      end
      
      
      p=play :B3, note_slide: 0.375, duration: 0.5, release: 0
      control p, note: :C4, note_slide: 0.125
      sleep 0.375
      control p, note: :b3
      sleep 0.125
      
      p=play :B3, note_slide: 0.375, duration: 0.5, release: 0
      control p, note: :C4, note_slide: 0.125
      sleep 0.375
      control p, note: :b3
      sleep 0.125
      
      p=play :B3, note_slide: 2, release: 2
      control p, note: :C4
      sleep 1
      
      play :A4, attack: 1, duration: 3
      
      sleep 2
      
      play_pattern_timed [:A3,:C4,:A3,:C4,:A3,:F3],[0.5,0.5,0.5,0.5,1,1]
      2.times do
        play_pattern_timed [:A3,:C4,:A3,:F3],[0.5,0.5,0.5,0.5]
      end
      2.times do
        play_pattern_timed [:A3,:C4,:A3,:F3],[0.25,0.25,0.25,0.25]
      end
      
      4.times do
        play_pattern_timed [:A3,:C4,:A3,:F3],[0.125,0.125,0.125,0.125]
      end
      
      ct=0;
      4.times do
        play_pattern_timed [:A3+ct,:C4+ct,:A3+ct,:F3+ct],[0.125,0.125,0.125,0.125]
        ct=ct+1
      end
      
      play_pattern_timed [:A4,:C5,:A4,:C5,:A4,:C5,:A4,:C5],[0.125,0.125,0.125,0.125]
      sleep 0.5
      
      p=play :A4, note_slide: 1, duration: 3, attack: 1
      control p, note: :f5
      sleep 1
      p=play :C6, note_slide: 2, duration: 3, attack: 1
      control p, note: :B5
      sleep 1
      control p, note: :C6
      
      
      play_pattern_timed [:A4,:F4,:G4,:A4,:F4,:G4,:A4,:G4,:F4,:G4,:F4],[0.5]
      
      2.times do
        play_pattern_timed [:A4,:F4,:G4,:A4,:F4,:G4,:A4,:G4,:F4,:G4,:F4],[0.25]
      end
      
      4.times do
        play_pattern_timed [:A4,:F4,:G4,:A4,:F4,:G4,:A4,:G4,:F4,:G4,:F4],[0.125]
      end
      
      play_pattern_timed [:A3,:D4,:C4,:B3,:C4,:D4,:C4,:B3],[0.5]
      p=play :A3, note_slide: 1, duration: 2
      control p, note: :C4
      sleep 2
      p=play :G5, note_slide: 1, duration: 2
      control p, note: :Fs5
      sleep 1
      control p, note: :G5
      sleep 1
      play :C6, attack: 1, duration: 2
      sleep 1
      
      
      play_pattern_timed [:C4,:C4,:A4,:G4,:F4,:G4,:F4,:G4,:F4,:E4],[0.5]
      2.times do
        play_pattern_timed [:C4,:C4,:A4,:G4,:F4,:G4,:F4,:G4,:F4,:E4],[0.25]
      end
      4.times do
        play_pattern_timed [:C4,:C4,:A4,:G4,:F4,:G4,:F4,:G4,:F4,:E4],[0.125]
      end
      
      play_pattern_timed [:D4,:E4,:D4,:E4,:F4,:E4,:F4,:E4,:C4,:A3,:C4,:A3,:F3],[0.5]
      p=play :C5, note_slide: 1, duration: 2
      control p, note: :F5
      sleep 2
      p=play :C6, note_slide: 1, duration: 3
      control p, note: :B5
      sleep 1
      control p, note: :C6
    end
    
    in_thread do
      loop do
        sample :drum_snare_hard
        sleep 0.5
        sample :drum_snare_hard
        sleep 0.5
        sample :drum_snare_hard
        sleep 0.5
        
        sample :drum_snare_hard
        sleep 0.25
        sample :drum_snare_hard
        sleep 0.25
      end
    end
    
    sleep 8
    
    
    with_fx :echo, phase: 0.5*0.75, max_phase: 0.5*0.75*20 do
      with_fx :distortion, distort: 0.7 do
        
        use_synth_defaults attack: 0, sustain: 0.0625, release: 0
        
        4.times do
          play_pattern_timed [:A3,:C4,:A3,:F3],[0.5]
        end
        play_pattern_timed [:A4,:C5,:A4,:C5,:A4,:C5,:A4,:C5],[0.5]
        play_pattern_timed [:A3,:D4,:C4,:B3,:C4,:D4,:C4,:B3],[0.5]
        
        
        4.times do
          in_thread do
            
            play_pattern_timed [:C4,:A3,:F3,:A3,:C4,:F4,:A4,:G4,:F4,:A3,:B3,:C4],[0.5]
            sleep 2
            
            play_pattern_timed [:C4,:C4,:A4,:G4,:F4,:E4,:D4,:E4,:F4,:F4,:C4,:A3,:F3],[0.5]
            sleep 1.5
            
            play_pattern_timed [:A4,:A4,:A4,:As4,:C5,:C5,:As4,:A4,:G4,:A4,:As4,:As4],[0.5]
            
            sleep 2
            
            play_pattern_timed [:As4,:A4,:G4,:F4,:E4,:D4,:E4,:F4,:A3,:B3,:C4],[0.5]
            sleep 2.5
            
            play_pattern_timed [:C4,:F4,:F4,:F4,:E4,:D4,:D4,:D4,:G4,:As4,:A4,:G4,:F4,:F4,:E4],[0.5]
            sleep 0.5
            
            play_pattern_timed [:C4,:C4,:F4,:G4,:A4,:As4,:C5,:F4,:G4,:A4,:As4,:G4,:F4],[0.5]
            sleep 1.5
          end
          
          sleep 8
        end
        
        sleep 48
        
        use_synth_defaults attack: 0, sustain: 0.625, release: 0
        
        
        in_thread do
          1.times do
            play_pattern_timed [:C4,:A3,:F3,:A3,:C4,:F4,:A4,:G4,:F4,:A3,:B3,:C4],[0.25]
            sleep 1
          end
        end
        sleep 4
        
        in_thread do
          1.times do
            play_pattern_timed [:C4,:C4,:A4,:G4,:F4,:E4,:D4,:E4,:F4,:F4,:C4,:A3,:F3],[0.25]
            sleep 0.75
          end
        end
        
        sleep 4
        
        in_thread do
          1.times do
            play_pattern_timed [:A4,:A4,:A4,:As4,:C5,:C5,:As4,:A4,:G4,:A4,:As4,:As4],[0.25]
            sleep 1
          end
        end
        
        sleep 4
        
        in_thread do
          1.times do
            play_pattern_timed [:As4,:A4,:G4,:F4,:E4,:D4,:E4,:F4,:A3,:B3,:C4],[0.25]
            sleep 1.25
          end
        end
        
        sleep 4
        
        in_thread do
          1.times do
            play_pattern_timed [:C4,:F4,:F4,:F4,:E4,:D4,:D4,:D4,:G4,:As4,:A4,:G4,:F4,:F4,:E4],[0.25]
            sleep 0.25
          end
        end
        
        sleep 4
        
        in_thread do
          1.times do
            play_pattern_timed [:C4,:C4,:F4,:G4,:A4,:As4,:C5,:F4,:G4,:A4,:As4,:G4,:F4],[0.25]
            sleep 0.75
          end
        end
        
        sleep 4
        
        
        
      end
    end
  
  with_fx :distortion, distort: 0.7 do
    use_synth_defaults attack: 0, sustain: 0.0625, release: 0.25
    r=8
    
    r.times do
      play_pattern_timed [:C4,:A3,:C4,:A3,:C4,:A3,:F3],[0.125]
    end
    
    r.times do
      play_pattern_timed [:F4,:C4,:F4,:C4,:F4,:C4,:A3],[0.125]
    end
    
    r.times do
      play_pattern_timed [:A4,:G4,:A4,:G4,:A4,:G4,:F4],[0.125]
    end
    
    r.times do
      play_pattern_timed [:A3,:D4,:C4,:B3,:C4,:D4,:C4,:B3],[0.125]
    end
    
    r.times do
      play_pattern_timed [:C4,:C4,:F4,:F4,:E4,:D4,:D4,:D4],[0.125]
    end
    
    r.times do
      play_pattern_timed [:G4,:As4,:A4,:G4,:As4,:g4,:F4,:E4],[0.125]
    end
    
    r.times do
      play_pattern_timed [:C4,:C4,:F4,:G4,:A4,:As4,:C5,:A4],[0.125]
    end
    
    r.times do
      play_pattern_timed [:F4,:g4,:A4,:F4,:G4,:A4,:As4,:G4],[0.125]
    end
    
    r.times do
      play_pattern_timed [:F4,:C4,:F4,:c4,:A3,:f3,:a3,:f3],[0.125]
    end
    
  end
  
  with_fx :distortion, distort: 0.7 do
    with_fx :echo, phase: 0.5*0.75, decay: 0.5*0.75 do
      use_synth_defaults attack: 0, sustain: 0.125, release: 0
      r=4
      d=0.25
      r.times do
        play_pattern_timed [:C4,:A3,:C4,:A3,:C4,:A3,:F3],[d]
      end
      
      r.times do
        play_pattern_timed [:F4,:C4,:F4,:C4,:F4,:C4,:A3],[d]
      end
      
      r.times do
        play_pattern_timed [:A4,:G4,:A4,:G4,:A4,:G4,:F4],[d]
      end
      
      r.times do
        play_pattern_timed [:A3,:D4,:C4,:B3,:C4,:D4,:C4,:B3],[d]
      end
      
      r.times do
        play_pattern_timed [:C4,:C4,:F4,:F4,:E4,:D4,:D4,:D4],[d]
      end
      
      r.times do
        play_pattern_timed [:G4,:As4,:A4,:G4,:As4,:g4,:F4,:E4],[d]
      end
      
      r.times do
        play_pattern_timed [:C4,:C4,:F4,:G4,:A4,:As4,:C5,:A4],[d]
      end
      
      r.times do
        play_pattern_timed [:F4,:g4,:A4,:F4,:G4,:A4,:As4,:G4],[d]
      end
      
      
      r.times do
        play_pattern_timed [:F4,:C4,:F4,:c4,:A3,:f3,:a3,:f3],[d]
      end
    end
    
    
  end
  
end




