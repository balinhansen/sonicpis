use_bpm 52

define :introdrum do
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  
  sample :drum_tom_hi_hard
  sleep 0.125
  sample :drum_tom_mid_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.125
  
  sample :drum_snare_hard
  sample :drum_splash_hard
  sleep 0.125
end

define :strumdown do |c|
  ct=0
  in_thread do
    c.count.times do
      play c[ct]
      sleep 0.03125/2
      ct=ct+1
    end
  end
end

define :strumup do |c|
  ct=0
  in_thread do
    c.count.times do
      play c[c.count-1-ct]
      sleep 0.03125/2
      ct=ct+1
    end
  end
end


define :thrash do |c|
  8.times do
    strumdown c
    sleep 0.125
    strumup c
    sleep 0.125
  end
end

define :power do |*n|
  return n.map{|q| [q,q+5,q+12,q+16]}.flatten
end

define :pegg do |*n|
  return n.map{|q| [q,q+12,q+5,q+4]}.flatten
end

notes=[:D3,:A3,:Ds3,:As3,:C4,:A3,:Fs3,:G3,:As3,:D4,:C4,:Ds3]


use_synth :piano
with_fx :reverb, mix: 0.5, room: 0.25 do
  with_fx :echo, phase: 0.125+0.125/4, decay: (0.25+0.25/4)*5, mix: 1 do
    play_pattern_timed notes,[0.25]
  end
end
sleep 1

introdrum

in_thread do
  sleep 2*notes.count
  use_synth :saw
  ct=0
  notes.count.times do
    4.times do
      in_thread do
        with_fx :reverb, mix: 0.5, room: 1, amp: 0.25 do
          play_pattern_timed (pegg notes[ct]+12),[0.125]
          #end
        end
        
      end
      sleep 0.5
    end
    ct=ct+1
  end
end



in_thread do
  loop do
    2.times do
      sample :drum_snare_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.125
    end
    
    sample :drum_snare_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sleep 0.125
    
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
    sample :drum_snare_hard
    sample :drum_splash_hard
    sleep 0.125
    sample :drum_bass_hard
    sleep 0.125
  end
end

use_synth :tb303
use_synth_defaults attack: 0, sustain: 0.125, release: 0.25

loop do
  with_fx :reverb, mix: 0.5, room: 0.7 do
    with_fx :distortion, distort: 0.999, mix: 1, amp: 0.25 do
      ct=0
      notes.count.times do
        
        thrash (power notes[ct])
        ct=ct+1
      end
      
    end
  end
end