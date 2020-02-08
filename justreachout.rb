use_synth :sine
#play_pattern_timed [:g4, :a4, :b4, :a4, :fs4, :a4, :b4, :a4],[1]
comment do
  in_thread do
    loop do
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
      
      sample :drum_bass_soft
      sleep 0.125
      sample :drum_snare_hard
      sleep 0.25
      
      sample :drum_snare_hard
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.375
    end
  end
end

in_thread do
  loop do
    use_synth :tri
    use_synth_defaults attack: 0, sustain: 0.125, release: 0.125
    play_pattern_timed [:g4,:a4,:g4,:a4,:g4,:a4,:g4,:a4,:g4,:a4,:g4,:a4],[0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25]
    play_pattern_timed [:fs4,:a4,:fs4,:a4,:fs4,:a4,:fs4,:a4,:fs4,:a4,:fs4,:a4],[0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25]
    play_pattern_timed [:e4,:g4,:a4,:b4,:a4,:g4,:e4,:g4,:a4,:b4,:a4,:g4],[0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25]
    play_pattern_timed [:ds4,:fs4,:a4,:b4,:a4,:g4,:ds4,:fs4,:a4,:b4,:a4,:g4],[0.5,0.25,0.5,0.25,0.25,0.25,0.5,0.25,0.5,0.25,0.25,0.25]
  end
end

sleep 16

use_synth :dsaw
use_synth_defaults sustain: 0.25, release: 0.125, amp: 0.25

play_pattern_timed [:g4, :A4, :b4],[0.5,0.25,3.25]
play_pattern_timed [:g4, :A4, :b4, :b4],[0.5,0.25,0.375,2.875]
play_pattern_timed [:g4, :A4, :b4, :b4, :D5, :b4],[0.5,0.25,0.375,0.25,0.25,2.375]
play_pattern_timed [:g4, :A4, :b4, :b4, :a4, :G4, :fs4, :g4, :a4],[0.5,0.25,0.375,0.25,0.25,0.25,0.5,0.25,1.375]

play_pattern_timed [:g4, :A4, :b4, :b4, :D5, :b4],[0.5,0.25,0.375,0.25,0.25,2.375]
play_pattern_timed [:g4, :A4, :b4, :b4, :a4, :G4, :fs4, :g4, :a4],[0.5,0.25,0.375,0.25,0.25,0.25,0.5,0.25,1.375]
play_pattern_timed [:fs4, :g4, :a4, :a4, :g4, :fs4, :e4, :fs4, :g4],[0.5,0.25,0.375,0.25,0.25,0.25,0.5,0.25,1.375]

#play_pattern_timed [:g4, :fs4, :g4, :g4, :g4, ],[0.5,0.25,0.375,0.25,0.25,0.25,0.5,0.25]
