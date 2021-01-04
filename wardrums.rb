use_bpm 27

in_thread do
  with_fx :reverb, mix: 0.5, room: 1 do
    loop do
      2.times do
        sample :drum_tom_lo_hard
        sleep 0.0625
        sample :drum_tom_lo_hard
        sleep 0.125
        sample :drum_tom_lo_hard
        sleep 0.1875
      end
      
      2.times do
        sample :drum_tom_lo_hard
        sleep 0.0625
        sample :drum_tom_lo_hard
        sleep 0.0625
        sample :drum_tom_lo_hard
        sleep 0.125
        sample :drum_tom_lo_hard
        sleep 0.125
      end
      
      2.times do
        sample :drum_tom_lo_hard
        sleep 0.125
        sample :drum_tom_lo_hard
        sleep 0.0625
        sample :drum_tom_lo_hard
        sleep 0.0625
        sample :drum_tom_lo_hard
        sleep 0.125
      end
    end
  end
end


sleep 2.25

use_synth :blade
with_fx :reverb, room: 1, mix: 0.7, amp: 0.5 do
  with_fx :distortion, distort: 0.99, mix:1 do
    loop do
      3.times do
        play [:D2, :A2, :D3, :Fs3], release: 0.125, sustain: 0
        sleep 0.125
        
        10.times do
          play [:D2, :A2, :D3, :Fs3], release: 0.0625, sustain: 0
          sleep 0.0625
        end
        puts "puts"
      end
      3.times do
        play [:As1, :F1, :As2, :D3], release: 0.125, sustain: 0
        sleep 0.125
        
        10.times do
          play [:As1, :F1, :As2, :D3], release: 0.0625, sustain: 0
          sleep 0.0625
        end
        puts "puts"
      end
      3.times do
        play [:C2, :G2, :C3, :E3], release: 0.125, sustain: 0
        sleep 0.125
        
        10.times do
          play [:C2, :G2, :C3, :E3], release: 0.0625, sustain: 0
          sleep 0.0625
        end
        puts "puts"
      end
    end
  end
end


# do a solo!