use_bpm 60

use_synth :chiplead
use_synth_defaults attack: 0, sustain: 0.25, release: 0, amp: 0.25

define :sirenone do
  in_thread do
    with_fx :reverb do
      1.times do
        play_pattern_timed [:g4,:g4,:g4,:g4,:f4,:d4,:d4,:d4,:d4,:as3,:c4,:c4,:c4,:c4,:as3,:g3,:g3,:g3,:as3,:d4,:f4],
          [0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.25,0.25,0.25,0.25];
      end
    end
  end
end

define :sirentwo do
  in_thread do
    with_fx :reverb do
      1.times do
        play_pattern_timed [:g4,:g4,:g4,:g4,:a4,:as4,:as4,:as4,:d5,:as4,:c5,:c5,:c5,:d5,:c5,:as4,:g4,:g4,:as3,:d4,:f4],
          [0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.25,0.25,0.25,0.25];
      end
    end
  end
end

define :sirenthree do
  in_thread do
    with_fx :reverb do
      1.times do
        play_pattern_timed [:g4,:g4,:g4,:g4,:a4,:as4,:as4,:as4,:as4,:c5,:d5,:d5,:d5,:d5,:f5,:g5,:G5,:g5,:f5,:d5,:as4],
          [0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.25,0.25,0.25,0.25];
      end
    end
  end
end

define :sirenfour do
  in_thread do
    with_fx :reverb do
      1.times do
        play_pattern_timed [:g5,:g5,:g5,:g5,:f5,:d5,:d5,:d5,:d5,:as4,:c5,:c5,:c5,:c5,:as4,:g4,:g4,:g4,:as4,:d5,:f5],
          [0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.25,0.25,0.25,0.25];
      end
    end
  end
end


define :drumsone do
  in_thread do
    4.times do
      sample :drum_heavy_kick
      sleep 0.5
    end
  end
end

in_thread do
  120.times do
    drumsone
    sleep 2
  end
end

in_thread do
  2.times do
    sirenone
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirentwo
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenthree
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenfour
    sleep 8
  end
end

sleep 16


in_thread do
  2.times do
    sirenone
    sirentwo
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenone
    sirenthree
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenone
    sirenfour
    sleep 8
  end
end


sleep 16

in_thread do
  2.times do
    sirentwo
    sirenthree
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirentwo
    sirenfour
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenthree
    sirenfour
    sleep 8
  end
end


sleep 16

in_thread do
  2.times do
    sirenone
    sirentwo
    sirenthree
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenone
    sirentwo
    sirenfour
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenone
    sirenthree
    sirenfour
    sleep 8
  end
end


sleep 16

in_thread do
  2.times do
    sirentwo
    sirenthree
    sirenfour
    sleep 8
  end
end

sleep 16

in_thread do
  2.times do
    sirenone
    sirentwo
    sirenthree
    sirenfour
    sleep 8
  end
end