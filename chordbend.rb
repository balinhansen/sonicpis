use_synth :tri

use_bpm 85

define :chordbend do |n,t,s,d|
  test_array=Array.new();
  count=0;
  n.length.times do
    p=play n[count], note_slide: s
    test_array << p
    sleep t[count];
    count=count+1;
  end
  count=0
  n.length.times do
    control test_array[count], note: n[count]+d
    count=count+1;
  end
end



in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.25
    
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.25
  end
end

sleep 8

loop do
  
  use_synth_defaults sustain: 2, release: 1
  chordbend [:a3,:b3,:c4,:d4,:e4,:f4,:G4],[0.125,0.125,0.125,0.125,0.125,0.125,0.125],2,48
  
  sleep 7.125
  
  use_synth_defaults attack: 0, sustain: 2, release: 1
  with_fx :reverb do
    n1=play :Cs6, note_slide: 1
    sleep 0.125
    n2=play :e5, note_slide: 1
    sleep 0.125
    n3=play :f5, note_slide: 1
    sleep 0.125
    n4=play :cs5, note_slide: 1
    sleep 0.125
    n5=play :d5, note_slide: 1
    sleep 0.5
    
    control n1, note: :Fs6
    control n2, note: :A5
    control n3, note: :As5
    control n4, note: :Fs5
    control n5, note: :G5
    
  end
  
  
  sleep 7.0
  
  use_synth_defaults sustain: 0.125, release: 0, attack: 0.03125
  play :cs5
  sleep 0.125
  play :D5
  sleep 0.125
  play :e5
  sleep 0.125
  play :f5
  sleep 0.125
  play :g5
  sleep 0.125
  play :gs5
  sleep 0.125
  play :A5
  
  sleep 7.25
end
