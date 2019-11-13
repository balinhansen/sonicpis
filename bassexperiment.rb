define :basshit do |n, t, r|
  use_synth :sine
  use_synth_defaults amp: 0.25, attack: 0.03125, sustain: 0, release: 0.0078125
  play n+24;
  
  use_synth :sine
  use_synth_defaults amp: 0.25, attack: 0.0315, sustain: 0.0625, release: t
  play n+12
  
  use_synth :sine
  use_synth_defaults amp: 1, attack: 0.125, sustain: t, release: r
  play n
  
end

in_thread do
  loop do
    basshit :A0, 1, 2
    sleep 2
    basshit :B0, 1, 2
    sleep 2
    basshit :C1, 1, 2
    sleep 2
    basshit :D1, 1, 2
    sleep 4
  end
end


loop do
  sleep 8
  basshit :G1 , 0.25, 0.125
  sleep 0.25
  basshit :B1 , 0.25, 0.125
  sleep 0.125
  basshit :C1 , 0.25, 0.125
  sleep 0.125
  basshit :B1 , 0.25, 0.125
  sleep 0.25
  basshit :G1 , 0.125, 0.125
  sleep 0.125
  basshit :F1, 0.125, 0.125
  sleep 0.125
end
