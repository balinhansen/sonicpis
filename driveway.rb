use_bpm 120


sample :drum_cymbal_closed
sleep 0.5

sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.5

sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.5

sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.25
sample :drum_cymbal_closed
sleep 0.5

sample :drum_snare_hard
sleep 0.25

in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.5
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
  end
end


use_synth :pulse

define :riff do |n|
  play n
  sleep 0.625
  5.times do
    play n
    sleep 0.25
  end
  sleep 0.25
  
  5.times do
    play n
    sleep 0.25
  end
  sleep 0.25
  
  3.times do
    play n
    sleep 0.25
  end
  
  play n
  sleep 0.25
end

define :prog do
  2.times do
    riff [:Fs3,:As3,:Cs4,:Fs4]
    riff [:G3,:B3,:D4,:G4]
    riff [:Fs3,:As3,:Cs4,:Fs4]
    riff [:E3,:Gs3,:B3,:E4]
  end
end

with_fx :reverb, mix: 0.5, room: 0.2 do
  with_fx :distortion, distort: 0.999, amp: 1 do
    
    use_synth_defaults attack: 0, sustain: 0.125, release: 0.0
    prog
    
    use_synth_defaults attack: 0, sustain: 0.125, release: 0.25
    prog
    
    sleep 4
    
    use_synth_defaults attack: 0, sustain: 0.125, release: 1
    
    2.times do
      prog
    end
    
    in_thread do
      2.times do
        prog
      end
    end
    
  end
  in_thread do
    loop do
      play_pattern_timed [:Fs3, :Fs4, :Cs4, :As4, :Fs4, :Cs4, :Fs4, :Cs4],[0.25]
    end
  end
  
  sleep 128 
  
  in_thread do
    2.times do
      prog
    end
  end
  
  in_thread do
    loop do
      use_synth :saw
      play_pattern_timed [:Fs3, :As3, :Gs3, :Fs3, :Gs3],[0.5,1.5,0.5,0.5]
    end
  end
  
end


