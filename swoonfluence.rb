use_bpm 60;

comment do
  
  define :threadname do
    use_synth :saw
    use_synth_defaults attack: 0.125, amp: 0.25, release: 0.125
    play :A6
    sleep 0.125
    play :g6
    sleep 0.125
    play :f6
    sleep 0.125
    play :d6
    sleep 0.125
  end
  
  
  8.times do
    threadname
  end
end

define :threadtwo do
  use_synth :prophet
  use_synth_defaults attack: 0.25, release: 1, note_slide: 0.25
  twid=play :f6
  sleep 0.25
  control twid, note: :g6
  sleep 0.25
  control twid, note: :f6
  
  sleep 0.5
  use_synth_defaults attack: 0.25, sustain: 1, note_slide: 0.25, release: 0.125
  twid=play :c6
  sleep 0.25
  control twid, note: :c7
  
  sleep 1
  
  twid=play :d6
  sleep 0.25
  control twid, note: :c6
  sleep 0.25
  control twid, note: :d6
  
  sleep 0.5
  
  twid=play :e6
  sleep 0.25
  control twid, note: :d6
  sleep 0.25
  control twid, note: :e6
  
  
  sleep 0.5
  use_synth_defaults attack: 0.25, sustain: 0.5 , note_slide: 0.25, release: 0.125
  twid=play :d7
  sleep 0.25
  control twid, note: :d6
  
  sleep 1
end


1.times do
  threadtwo
end



comment do
  
end

comment do
  
  #I was under the influence
  use_bpm 60
  use_synth :square
  use_synth_defaults attack: 0.0625, release: 0.0625, sustain: 0.125, env_curve: 7,pitch: 0
  loop do
    play :as6
    sleep 0.125
    play :g6
    sleep 0.125
    play :a6
    sleep 0.125
    play :f6
    sleep 0.125
    play :g6
    sleep 0.125
    play :a6
    sleep 0.125
    play :g6
    sleep 0.125
    play :a6
    sleep 0.125
  end
end

