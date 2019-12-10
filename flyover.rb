
define :flyby do |t|
  
  
  4.times do
    
    in_thread do
      use_synth :sine
      use_synth_defaults sustain: t, amp:0, pan: -1
      
      n=play [:a9+rand()*0.125,:a8+rand()*0.125], note_slide: t/2, amp_slide: t/2, pan_slide: t/2
      control n, amp: 1
      sleep t/3
      control n, note: [:g9+rand()*0.125,:g8+rand()*0.125], pan: 1
      sleep t/3
      control n, note: [:f9+rand()*0.125,:f8+rand()*0.125], amp: 0.1
    end
    
  end
  
  4.times do
    in_thread do
      use_synth :noise
      use_synth_defaults sustain: t, amp: 0, pan: -1
      n=play [:a2], note_slide: t/2, amp_slide: t/2, pan_slide: t/2
      control n, amp: 1
      sleep t/3
      control n, note: [:g2], pan: 1
      sleep t/3
      control n, note: [:f2], amp: 0.1
    end
    
  end
  
  comment do
    use_synth :saw
    use_synth_defaults sustain: t
    play :gs0
    
    use_synth :bnoise
    use_synth_defaults sustain: t
    play :gs0
  end
  
  
  12.times do
    in_thread do
      use_synth :sine
      use_synth_defaults sustain: t, amp: 0, pan: -1
      n=play :a1+rand()*12-12, note_slide: t/2, amp_slide: t/2, pan_slide: t/2
      control n, amp: 1
      sleep t/3
      control n, note: [:g0+rand()*12-12], pan: 1
      sleep t/3
      control n, note: [:f0+rand()*12-12], amp: 0.1
    end
  end
  
  12.times do
    in_thread do
      use_synth :square
      use_synth_defaults sustain: t, amp: 0, pan: -1
      n=play :a0+rand()*12-12, note_slide: t/2, amp_slide: t/2, pan_slide: t/2
      control n, amp: 10
      sleep t/3
      control n, pan: 1
      sleep t/3
      control n, amp: 0.1
    end
  end
  
end

flyby 2.2