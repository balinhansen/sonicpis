use_bpm 72
use_synth :saw
use_synth_defaults attack: 0, sustain: 0.1, release: 0, amp: 0.25

# ds gs c?

in_thread do
  loop do
    with_fx :echo, phase: 0.375 do
      with_fx :reverb do
        with_fx :distortion do
          4.times do
            2.times do
              2.times do
                play_pattern_timed [:e3,:a3,:e3,:a3,:cs4],[0.125,0.125,0.125,0.125,0.25]
              end
              play_pattern_timed [:e3,:a3,:cs4],[0.125,0.125,0.25]
            end
            #sleep 0.25
            2.times do
              2.times do
                play_pattern_timed [:e3,:gs3,:e3,:gs3,:cs4],[0.125,0.125,0.125,0.125,0.25]
              end
              play_pattern_timed [:e3,:gs3,:cs4],[0.125,0.125,0.25]
            end
            #sleep 0.25
          end
        end
      end
    end
    
    
    with_fx :echo, phase: 0.375 do
      with_fx :reverb do
        with_fx :distortion do
          
          2.times do
            2.times do
              play_pattern_timed [:fs3,:b3,:fs3,:b3,:ds4],[0.125,0.125,0.125,0.125,0.25]
              play_pattern_timed [:g3,:bs3,:g3,:bs3,:e4],[0.125,0.125,0.125,0.125,0.25]
              
              play_pattern_timed [:fs3,:b3,:ds4],[0.125,0.125,0.25]
            end
            #sleep 0.25
            2.times do
              play_pattern_timed [:f3,:as3,:f3,:as3,:ds4],[0.125,0.125,0.125,0.125,0.25]
              play_pattern_timed [:g3,:b3,:g3,:b3,:e4],[0.125,0.125,0.125,0.125,0.25]
              play_pattern_timed [:f3,:as3,:ds4],[0.125,0.125,0.25]
            end
            #sleep 0.25
          end
        end
      end
    end
    
  end
end


in_thread do
  loop do
    4.times do
      use_synth :square
      use_synth_defaults attack: 0, sustain: 0.25, release: 0, amp: 0.25
      play_pattern_timed [:a4,:a4,:a4,:a4,:a4],[1,1,1,0.5,0.5]
      play_pattern_timed [:gs4,:gs4,:gs4,:gs4,:gs4],[1,1,1,0.5,0.5]
    end
    sleep 16
    
  end
end


in_thread do
  loop do
    sleep 8
    3.times do
      use_synth :sine
      use_synth_defaults amp: 0.25
      play_pattern_timed [:cs5,:cs5,:e5,:e5,:fs5,:fs5,:e5,:e5,:gs4,:gs4,:b4,:b4,:cs5,:cs5,:b4,:b4],
        [0.75,0.25]
    end
    sleep 16
  end
end



loop do
  sleep 16
  8.times do
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.25
  end
  sleep 16
end