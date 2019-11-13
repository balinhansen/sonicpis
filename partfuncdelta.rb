use_synth :saw
use_synth_defaults amp: 0.25, attack: 0, sustain: 0.125, release: 1

play_pattern_timed [:Gs3,:As3,:B3,:Cs4,:Ds4,:E4,:Fs4,:Gs4],[0.5]

with_fx :reverb do
  with_fx :echo, phase: 0.125, decay: 4 do
    2.times do
      2.times do
        play :Gs3
        sleep 1.875
        play :Gs3
        sleep 0.125
        play :As3
        sleep 1.875
        play :As3
        sleep 0.125
        play :B3
        sleep 1.875
        play :B3
        sleep 0.125
        play :Cs4
        sleep 1.875
        play :Ds4
        sleep 0.25
      end
      4.times do
        play :Ds4
        sleep 0.5
      end
      play :Cs4
      sleep 0.125
      
      play :Cs4
      sleep 0.125
      4.times do
        play :Ds4
        sleep 0.5
      end
      
      play :Fs4
      sleep 0.125
      4.times do
        play :Ds4
        sleep 0.5
      end
      
      play :Cs4
      sleep 0.125
      4.times do
        play :Ds4
        sleep 0.5
      end
      
      play :E4
      sleep 0.125
      4.times do
        play :Ds4
        sleep 0.5
      end
      
      play :Cs4
      sleep 0.125
      4.times do
        play :Ds4
        sleep 0.5
      end
    end
    
  end
end
