use_bpm 85

define :flub do |n, d|
  use_synth :sine
  with_fx :distortion, distort: 0.8 do
    use_synth_defaults attack: 0.0625, sustain: d-0.125, release: 0.0625
    with_fx :nrbpf, centre: n-24, centre_slide: d do |f|
      play n
      control f, centre: n+24
      
    end
    use_synth :noise
    s=play n, amp: 0.00, amp_slide: d
    control s, amp: 0.1
  end
  use_synth :sine
  play n
end

define :beatloop do |n|
  
  flub n, 0.125
  sleep 0.25
  flub n, 0.125
  sleep 0.5
  flub n, 0.125
  sleep 0.25
  flub n, 0.125
  sleep 0.125
  flub n, 0.125
  sleep 0.125
  flub n, 0.125
  sleep 0.25
  flub n, 0.125
  sleep 0.5
  
end

live_loop :backin do
  with_fx :reverb do
    
    2.times do
      beatloop :b2
    end
    2.times do
      beatloop :A2
    end
    2.times do
      beatloop :g2
    end
    2.times do
      beatloop :fs2
    end
  end
end

#sleep 16

live_loop :drumbeat do
  with_fx :reverb do
    30.times do
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
    end
    8.times do
      sample :drum_snare_hard
      sleep 0.125
    end
    sample :drum_splash_hard
  end
end

#sleep 32


live_loop :solo do
  with_fx :reverb do
    use_synth :dsaw
    
    play :fs4
    sleep 1
    play :a4
    sleep 0.5
    play :b3
    sleep 1
    play :cs4
    sleep 1
    play :d4
    sleep 1
    play :e4
    sleep 0.5
    play :fs4
    sleep 3
    
    play :fs4
    sleep 1
    play :b4
    sleep 0.5
    play :b3
    sleep 1
    play :cs4
    sleep 1
    play :d4
    sleep 1
    play :e4
    sleep 0.5
    play :fs4
    sleep 3
  end
end

live_loop :solob do
  use_synth :prophet
  play_pattern_timed [:fs4,:a4,:b3,:cs4,:d4,:e4,:fs4],[1,0.5,1,1,1,0.5,1]
  sleep 2
  play_pattern_timed [:fs4,:b4,:b3,:cs4,:d4,:e4,:fs4],[1,0.5,1,1,1,0.5,1]
  sleep 2
end
