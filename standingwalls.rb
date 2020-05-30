use_bpm 60

live_loop :drums do
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_mid_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.5
  sample :drum_tom_hi_hard
  
  sleep 0.25
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_mid_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_mid_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  
  sleep 0.25
  sample :drum_tom_hi_hard
  sleep 0.25
end

sleep 8


notes=[:C4,:G3,:Gs3,:F3,:Ds3,:G3,:D3,:D3]

use_synth :pulse


define :played do |n|
  play n
end


define :echoed do |n|
  in_thread do
    c=play n, note_slide: 0.0625
    sleep 0.0625
    control c, note: n+12
    
  end
end

define :bounced do |n|
  in_thread do
    3.times do
      play n
      sleep 0.125
      play n+12
      sleep 0.25
    end
    play n
    sleep 0.125
    play n
    sleep 0.125
    play n+12
    sleep 0.125
  end
end

define :slided do |n|
  in_thread do
    c=play n, note_slide: 0.25
    sleep 0.25
    control c, note: n+12
    
  end
end





count=0
notes.count.times do
  with_fx :echo, mix: 1, phase: 0.25+0.25/4, decay: (0.25+0.25/4)*7 do
    
    played notes[count]
    count=count+1
    sleep 2
  end
  
end


sleep 8

count=0
notes.count.times do
  with_fx :echo, mix: 1, phase: 0.25+0.25/4, decay: (0.25+0.25/4)*7 do
    
    echoed notes[count]-12
    count=count+1
    sleep 2
  end
  
end

sleep 8


use_synth_defaults attack: 0, sustain: 0.0625, release: 0.0625
count=0
with_fx :reverb, mix: 0.5, room: 0.5 do
  
  notes.count.times do
    
    bounced notes[count]-12
    count=count+1
    sleep 2
  end
  
end


sleep 8


use_synth :prophet
use_synth_defaults attack: 0.0, sustain: 0.0625, release: 0.0625
in_thread do
  loop do
    play_pattern_timed [:c3,:c3,:c4,:gs3,:gs3,:g3,:f3,:f3,:ds3,:ds3,:f3,:g3,:g3,:gs3,:gs3,:g3],[0.125]
  end
end



sleep 8


use_synth :sine
use_synth_defaults attack: 0, release: 0.25, duration: 2
count=0
with_fx :reverb, mix: 0.5, room: 0.5 do
  
  notes.count.times do
    
    slided notes[count]
    count=count+1
    sleep 2
  end
  
end

sleep 8



use_synth :saw
use_synth_defaults attack: 0, release: 0.25, duration: 1
count=0
with_fx :reverb, mix: 1, room: 1 do
  
  notes.count.times do
    in_thread do
      4.times do
        slided notes[count]
        
        sleep 0.25+0.25/4
      end
    end
    count=count+1
    
    sleep 2
  end
end

