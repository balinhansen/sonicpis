
in_thread do
  use_synth :pluck
  use_synth_defaults
  loop do
    2.times do
      4.times do
        play_pattern_timed [:cs3,:as3,:cs4,:f4,:cs4, :as3],[0.5,0.2,0.3,0.5,0.2,0.3,0.5]
      end
      
      4.times do
        play_pattern_timed [:ds3,:as3,:cs4,:ds4,:cs4, :as3],[0.5,0.2,0.3,0.5,0.2,0.3,0.5]
      end
    end
    2.times do
      4.times do
        play_pattern_timed [:cs3,:as3,:cs4,:f4,:cs4, :as3,:cs4],[0.3,0.2,0.3,0.5,0.2,0.3,0.2]
      end
      
      4.times do
        play_pattern_timed [:ds3,:as3,:cs4,:ds4,:cs4, :as3,:cs4],[0.3,0.2,0.3,0.5,0.2,0.3,0.2]
      end
    end
  end
end

sleep 8

use_synth :saw
in_thread do
  loop do
    use_synth_defaults attack: 0.5, sustain: 3, release: 0.5, amp: 0.2
    play :ds3
    sleep 2
    play :as3
    sleep 2
    use_synth_defaults attack: 0.5, sustain: 5, release: 0.5, amp: 0.2
    play :cs4
    sleep 4
    use_synth_defaults attack: 0.5, sustain: 3, release: 0.5, amp: 0.2
    play :cs3
    sleep 2
    play :as3
    sleep 2
    use_synth_defaults attack: 0.5, sustain: 5, release: 0.5, amp: 0.2
    play :cs4
    sleep 4
    
  end
end
