use_synth :piano
use_synth_defaults attack: 0, sustain: 0.0625, release: 0, res: 0.95

in_thread do
  loop do
    sample :drum_cymbal_closed
    #    play :ds4
    sleep 0.5
  end
end
sleep 4

with_fx :reverb, room: 0.8, mix: 0.5 do
  with_fx :echo, phase: 0.75*0.5, decay: 0.75*0.5*10 do
    loop do
      in_thread do
        play_pattern_timed [:F4,:d5,:c5,:f4,:fs4,:as4,:cs5,:d4, :Ds4],[0.25]
      end
      sleep 8
    end
  end
end
