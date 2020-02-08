define :buah do |n, d|
  use_synth :saw
  use_synth_defaults attack: 0, sustain: d, release: d
  with_fx :nrbpf, centre: n-12, centre_slide: d do |f|
    play n
    control f, centre: n+12
    
  end
end

comment do
  
  live_loop :aerodynamicd do
    with_fx :reverb do
      
      #with_fx :echo, phase: 0.25+0.25/4/2, decay: 0.25 do
      buah :b3, 0.125
      sleep 0.5
      buah :a3, 0.125
      sleep 0.25
      buah :b3, 0.125
      sleep 0.5
      buah :a3, 0.125
      sleep 0.25
      buah :b3, 0.125
      sleep 0.25
      buah :a3, 0.125
      sleep 0.25
      buah :g3, 0.125
      sleep 0.5
      buah :fs3, 0.125
      sleep 0.25
      buah :g3, 0.125
      sleep 0.5
      buah :fs3, 0.125
      sleep 0.25
      buah :g3, 0.125
      sleep 0.25
      buah :a3, 0.125
      sleep 0.25
      #end
    end
  end
end
use_bpm 60
live_loop :aerodynamicc do
  use_synth :tri
  use_synth_defaults amp: 1, sustain: 0.125, attack: 0, release: 0, amp: 0.0
  
  4.times do
    play_pattern_timed [:d4,:fs3,:b3,:fs3],[0.125]
  end
  
  4.times do
    play_pattern_timed [:d4,:gs3,:b3,:gs3],[0.125]
  end
  
  4.times do
    play_pattern_timed [:g4,:cs4,:e4,:cs4],[0.125]
  end
  
  4.times do
    play_pattern_timed [:e4,:a3,:cs4,:a3],[0.125]
  end
end

live_loop :aerodynamicf do
  use_synth :tb303
  use_synth_defaults amp: 0.0
  play_pattern_timed [:f3, :gs3, :g3,:as3],[2]
  play_pattern_timed [:c4, :ds4, :d4,:f4],[2]
end



use_bpm 60
live_loop :aerodynamicf do
  use_synth :dsaw
  use_synth_defaults sustain: 0.125, attack: 0, release: 0, amp: 0.0
  
  3.times do
    play_pattern_timed [:d4,:fs3,:b3,:fs3],[0.125]
  end
  play_pattern_timed [:d4,:e4,:d4,:b3],[0.125]
  
  3.times do
    play_pattern_timed [:cs4,:e3,:a3,:e3],[0.125]
  end
  play_pattern_timed [:cs4,:d4,:cs4,:e3],[0.125]
  
  4.times do
    play_pattern_timed [:g4,:cs4,:e4,:cs4],[0.125]
  end
  
  4.times do
    play_pattern_timed [:e4,:a3,:cs4,:a3],[0.125]
  end
  
end


live_loop :aerodynamice do
  use_synth :tb303
  use_synth_defaults attack: 0, sustain: 0.125, release: 0, amp: 0.0
  
  3.times do
    play_pattern_timed [:d4,:b3,:fs3,:a3,:b3,:d4,:b3],[0.25,0.25,0.25,0.125,0.125,0.25,0.75]
  end
  play_pattern_timed [:d4,:b3,:fs3,:a3,:b3,:d4,:b3],[0.25,0.25,0.25,0.125,0.125,0.25,0.75]
end


live_loop :human do
  use_synth :tb303
  use_synth_defaults attack: 0, release: 0.0625, sustain: 0.25, amp: 0
  4.times do
    play_pattern_timed [:c3, :c3],[0.25]
    play_pattern_timed [:c2, :c2],[0.25]
    
  end
  4.times do
    play_pattern_timed [:ds3, :ds3],[0.25]
    play_pattern_timed [:ds2, :ds2],[0.25]
  end
  4.times do
    play_pattern_timed [:f3, :f3],[0.25]
    play_pattern_timed [:f2, :f2],[0.25]
  end
  2.times do
    play_pattern_timed [:gs3, :gs3],[0.25]
    play_pattern_timed [:gs2, :gs2],[0.25]
  end
  2.times do
    play_pattern_timed [:as3, :as3],[0.25]
    play_pattern_timed [:as2, :as2],[0.25]
  end
end