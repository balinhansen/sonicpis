use_bpm 66

define :saturate do |n,d,c|
  synth :sine, note: n+17, amp: 5, attack: c/2, sustain: d, release: c/2
  synth :saw, note: n+12, amp: 1, attack: c/2, sustain: d, release: c/2
  synth :tri, note: n+5, amp: 2.5, attack: c/2, sustain: d, release: c/2
  synth :saw, note: n+12, amp: 1, attack: c/2, sustain: d, release: c/2
  synth :cnoise, amp: 0.03, attack: c/4, sustain: d, release: c/2
end


define :saturated do |n,d,c|
  v=1
  2.times do
    in_thread do
      sleep rand()*0.0625
      use_synth_defaults amp: v
      v=v/2
      saturate n+rand()*0.125,d,c
    end
  end
  
end

in_thread do
  with_fx :reverb do
    # with_fx :echo, phase: 0.0667, decay:0.4  do
    6.times do
      saturated :as1,0,0.25
      sleep 0.5
      saturated :as1,0,0.25
      sleep 0.5
      saturated :as1,0,0.25
      sleep 0.5
      saturated :as1,0,0.25
      sleep 0.5
      saturated :c2,0,0.25
      sleep 0.5
      saturated :c2,0,0.25
      sleep 0.5
      saturated :c2,0,0.25
      sleep 0.5
      saturated :d2,0,0.25
      sleep 0.5
      saturated :d2,0,0.25
      sleep 0.5
      saturated :a1,0,0.25
      sleep 0.5
      saturated :a1,0,0.25
      sleep 0.5
      saturated :a1,0,0.25
      sleep 0.5
      4.times do
        saturated :as1,0,0.25
        sleep 0.5
      end
    end
    #end
  end
end

in_thread do
  6.times do
    with_fx :ring_mod  do
      sleep 7
      use_synth :dull_bell
      use_synth_defaults amp: 0.25
      play :b6
      sleep 0.5
      play :ds7
      sleep 0.5
    end
  end
end



in_thread do
  sleep 8
  5.times do
    16.times do
      sample :drum_bass_hard
      sleep 0.5
    end
  end
end


in_thread do
  sleep 16
  
  4.times do
    with_fx :reverb do
      with_fx :distortion, distort: 0.5 do
        use_synth :saw
        use_synth_defaults attack: 0, release: 0.125, sustain: 0.125,pitch: 12
        play_pattern_timed [:cs4, :cs4, :ds4, :ds4,:gs4,:gs4,:f4,:f4,:f4,:ds4],[0.375]
        play_pattern_timed [:cs4],[0.25]
        play_pattern_timed [:ds4, :ds4, :f4, :cs4, :ds4, :ds4],[0.375]
        sleep 1.75
      end
    end
  end
end




in_thread do
  with_fx :reverb do
    with_fx :distortion, distort: 0.5 do
      sleep 8*6
      in_thread do
        1.times do
          use_synth :tri
          use_synth_defaults amp: 0.25, attack: 0.0, release: 0.125, sustain: 0.125,pitch: 12
          play_pattern_timed [:cs1, :cs1, :ds1, :ds1,:gs1,:gs1,:f1,:f1,:f1,:ds1],[0.375]
          play_pattern_timed [:cs1],[0.25]
          play_pattern_timed [:ds1, :ds1, :f1, :cs1, :ds1, :ds1],[0.375]
          sleep 1.75
        end
      end
      
      in_thread do
        1.times do
          use_synth :saw
          use_synth_defaults amp: 0.25, attack: 0.0, release: 0.125, sustain: 0.125,pitch: 12
          play_pattern_timed [:cs1, :cs1, :ds1, :ds1,:gs1,:gs1,:f1,:f1,:f1,:ds1],[0.375]
          play_pattern_timed [:cs1],[0.25]
          play_pattern_timed [:ds1, :ds1, :f1, :cs1, :ds1, :ds1],[0.375]
          sleep 1.75
        end
      end
      
    end
  end
end


in_thread do
  sleep 8*7
  32.times do
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
  end
  
end

in_thread do
  with_fx :reverb do
    with_fx :distortion, distort: 0.5 do
      sleep 8*7
      
      in_thread do
        5.times do
          use_synth :pulse
          use_synth_defaults amp: 0.25, attack: 0.125, release: 0.125, sustain: 0.25
          play_pattern_timed [:cs1, :cs1, :ds1, :ds1,:gs1,:gs1,:f1,:f1,:f1,:ds1],[0.375]
          play_pattern_timed [:cs1],[0.25]
          play_pattern_timed [:ds1, :ds1, :f1, :cs1, :ds1, :ds1],[0.375]
          sleep 1.75
        end
      end
      
      in_thread do
        5.times do
          use_synth :saw
          use_synth_defaults amp: 0.25, attack: 0.125, release: 0.125, sustain: 0.25
          play_pattern_timed [:cs1, :cs1, :ds1, :ds1,:gs1,:gs1,:f1,:f1,:f1,:ds1],[0.375]
          play_pattern_timed [:cs1],[0.25]
          play_pattern_timed [:ds1, :ds1, :f1, :cs1, :ds1, :ds1],[0.375]
          sleep 1.75
        end
      end
      
      in_thread do
        5.times do
          use_synth :pluck
          use_synth_defaults amp: 1, attack: 0.0, release: 0.125, sustain: 0.125
          play_pattern_timed [:cs4, :cs4, :ds4, :ds4,:gs4,:gs4,:f4,:f4,:f4,:ds4],[0.375]
          play_pattern_timed [:cs4],[0.25]
          play_pattern_timed [ :ds4, :ds4, :f4, :cs4, :ds4, :ds4],[0.375]
          sleep 1.75
        end
      end
      
      
    end
  end
end

in_thread do
  sleep 8*7
  sleep 8*2
  in_thread do
    1.times do
      use_synth :saw
      use_synth_defaults amp: 1, attack: 0.0, release: 0.125, sustain: 0.125
      play_pattern_timed [:cs4, :cs4, :ds4, :ds4,:gs4,:gs4,:as4,:as4,:as4,:as4],[0.375]
      play_pattern_timed [:gs4],[0.25]
      play_pattern_timed [:as4, :as4, :bs4, :bs4, :cs5,:cs5,:ds5,:ds5,:ds5,:ds5],[0.375]
      play :cs5
      sleep 0.25
      
    end
  end
end

in_thread do
  sleep 8*7
  sleep 8*3
  in_thread do
    1.times do
      use_synth :saw
      use_synth_defaults amp: 1, attack: 0.0, release: 0.125, sustain: 0.125
      play_pattern_timed [:cs4, :cs4, :ds4, :ds4,:gs4,:gs4,:as4,:as4,:as4,:as4],[0.375]
      play_pattern_timed [:gs4],[0.25]
      play_pattern_timed [:as4, :as4, :bs4, :bs4, :cs5,:cs5,:cs5,:f5,:f5,:cs5],[0.375]
      play :as4
      sleep 0.25
      
    end
  end
end

in_thread do
  sleep 8*7
  sleep 2*8
  2.times do
    sleep 6
    4.times do
      sample :drum_tom_hi_hard
      sleep 0.05
      sample :drum_tom_hi_hard
      sleep 0.0625
    end
    4.times do
      sample :drum_tom_mid_hard
      sleep 0.05
      sample :drum_tom_mid_hard
      sleep 0.0625
    end
    4.times do
      sample :drum_tom_lo_hard
      sleep 0.05
      sample :drum_tom_lo_hard
      sleep 0.0625
    end
    4.times do
      sample :drum_bass_hard
      sleep 0.05
      sample :drum_bass_hard
      sleep 0.0625
    end
    sleep 8
  end
  
end

in_thread do
  sleep 8*7
  sleep 3*8
  4.times do
    sample :drum_splash_hard
    2.times do
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.125
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.125
    end
  end
end

in_thread do
  sleep 8*7
  sleep 3*8
  2.times do
    use_synth :sine
    with_fx :reverb do
      use_synth_defaults attack: 0.125, sustain: 1.75, release: 0.125
      play :as3
      sleep 1.75
      use_synth_defaults attack: 0.125, sustain: 1.75, release: 0.125
      play :bs3
      sleep 1.75
      use_synth_defaults attack: 0.125, sustain: 0.5, release: 0.125
      play :d4
      sleep 0.25
      play :bs3
      sleep 0.25
      play :d4
      sleep 0.5
      use_synth_defaults attack: 0.125, sustain: 1.75, release: 0
      play :a3
      sleep 1.75
      play :as3
      sleep 1.75
    end
  end
end


in_thread do
  sleep 8*7
  sleep 8*4
  in_thread do
    1.times do
      use_synth :saw
      use_synth_defaults amp: 1, attack: 0.0, release: 0.125, sustain: 0.125
      play_pattern_timed [:cs5, :cs5, :ds5, :ds5,:gs5,:gs5,:as5,:as5,:as5,:as5],[0.375]
      play_pattern_timed [:gs5],[0.25]
      play_pattern_timed [:as5, :as5, :bs5, :bs5, :cs6,:cs6,:cs6,:f6,:f6,:f6],[0.375]
      play :f6
      sleep 0.25
      
    end
  end
end