in_thread do
  26.times do
    sample :drum_bass_hard
    sleep 1
    sample :drum_snare_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 1
    sample :drum_snare_hard
    sleep 1
  end
  
end

sleep 8
2.times do
  play_pattern_timed [:gs4,:a4,:e4],[0.5]
  sleep 2.5
end

play_pattern_timed [:gs4,:a4,:e4,:gs4,:a4,:e4,:gs4,:a4, :d4],[0.5]
sleep 3.5

play_pattern_timed [:gs4,:a4,:d4,:gs4,:a4,:d4],[0.5]

sleep 4.0
play_pattern_timed [:e4,:d4],[0.5]
n=synth :sine, amp:0, amp_slide: 1, note: :a3, sustain: 1.5
control n, amp: 1
sleep 0.5
synth :sine, note: :cs4, sustain: 0, attack: 1
play [:cs4, :a3]
sleep 3.0
use_synth_defaults attack: 0, sustain: 0.125, release: 0
play_pattern_timed [:a3,:cs4,:e4,:a4],[0.125]
use_synth_defaults
sleep 4

use_synth_defaults attack: 0, sustain: 1, release: 1
play_pattern_timed [:a3, :b3,:cs4,:d4,:e4,:gs4,:a4],[2]
sleep 6
2.times do
  2.times do
    use_synth_defaults attack: 0, sustain: 1, release: 1
    play_pattern_timed [[:a3,:cs4],[:b3,:d4],[:cs4,:e4],[:b3,:d4]],[2]
  end
  sleep 3.5
  use_synth_defaults attack: 0, sustain: 0.125, release: 0
  play_pattern_timed [:a4,:e4,:cs4,:a3],[0.125]
  sleep 4
end
