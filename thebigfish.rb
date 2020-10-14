use_synth_defaults attack: 0, sustain:0, release: 0.125

#comment do
in_thread do
  loop do
    sample :drum_bass_hard
    sleep 0.5
  end
  
end

sleep 8

in_thread do
  loop do
    play_pattern_timed [:ds5,nil,:Ds5,:Ds5, :Fs5,:f5,:f5,:gs5,nil,:fs5,:f5,:F5,nil,:fs5,:f5,:fs5],[0.125]
    puts "tick";
  end
end

sleep 16
use_synth :saw
in_thread do
  loop do
    sleep 1.25
    play_pattern_timed [:as5,nil,:as5,:gs5,:as5,:ds5],[0.125]
  end
end

sleep 16

define :bigdrums do
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.125
  
  sample :drum_bass_hard
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  sample :drum_tom_lo_hard
  sleep 0.125
  
  sample :drum_cymbal_open
  sleep 0.125
  sample :drum_tom_lo_hard
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
end

in_thread do
  1.times do
    bigdrums
  end
end

sleep 8

use_synth :tech_saws
use_synth_defaults attack: 1, sustain: 1, release: 1


in_thread do
  loop do
    play_pattern_timed [[:as5,:fs4],[:gs5,:ds4],[:b5,:f4],[:cs6,:fs4]],[2]
  end
end


sleep 24


define :smalldrums do
  sample :drum_bass_hard
  sleep 0.1875*2
  
  sample :drum_bass_hard
  sleep 0.0625*2
  sample :drum_snare_hardd
  sleep 0.125*2
  
  sample :drum_bass_hard
  sleep 0.0625*2
  sample :drum_snare_hard
  sleep 0.1875*2
  
  
  sample :drum_bass_hard
  sleep 0.0625*2
  sample :drum_snare_hard
  sleep 0.125*2
  sample :drum_bass_hard
  sleep 0.0625*2
  sample :drum_snare_hard
  sleep 0.125*2
end

in_thread do
  8.times do
    smalldrums
  end
end

sleep 32

in_thread do
  12.times do
    bigdrums
  end
end

#end


sleep 32

#end

#comment do

use_synth :zawa
use_synth_defaults release: 0.125, sustain: 2, range: 12, phase: 0.0625

in_thread do
  loop do
    play_pattern_timed [:As4,:as4,:as4],[0.5], sustain: 0, release: 0.25
    
    n=play :As4, note_slide: 0.25, sustain: 0.5
    sleep 0.25;
    control n, note: :As5
    sleep 0.5
    play_pattern_timed [:As5,:as5],[0.5], sustain: 0, release: 0.25
    
    n=play :As5, note_slide: 0.25, sustain: 0.5
    sleep 0.25
    control n, note: :gs5
    sleep 0.5
    play_pattern_timed [:gs5,:gs5],[0.5], sustain: 0, release: 0.25
    
    n=play :Gs5, note_slide: 0.25, sustain: 0.5
    sleep 0.25
    control n, note: :f5
    sleep 0.5
    play_pattern_timed [:f5],[0.5], sustain: 0, release: 0.25
    #sleep 0.5
    
    n=play :f5, note_slide: 0.25, sustain: 0.5
    sleep 0.25
    control n, note: :Fs5
    sleep 0.5
    #end
    
    n=play :fs5, note_slide: 0.25, sustain: 0.75
    sleep 0.1667
    control n, note: :f5
    sleep 0.1667
    control n, note: :fs5
    sleep 0.6667
  end
end

sleep 32

in_thread do
  loop do
    smalldrums
  end
end
