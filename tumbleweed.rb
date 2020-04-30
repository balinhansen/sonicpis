
use_bpm 85


define :supersonic do |s, e, t|
  in_thread do
    use_synth :noise
    with_fx :nbpf, centre: s, centre_slide: t/2 do |f|
      p=play :A3, attack: t/4, sustain: 5*t/4, release: t/2, amp_slide: t/4
      sleep t/2
      control f, centre: e
      sleep t/4
      control p, amp: 0
    end
    
  end
  in_thread do
    use_synth :square
    n=play s, attack: t/4, sustain: 5*t/4, release: t/2, note_slide: t/2, amp_slide: t/4
    sleep t/2
    control n, note: e
    sleep t/4
    control n, amp: 0
  end
  
end

supersonic :C6-12, :As9, 16
sleep 16

use_synth :pulse
use_synth_defaults attack: 0, sustain: 0.0625, release: 0

with_fx :reverb, mix: 0.2, room: 0.5 do
  with_fx :echo, max_phase: 1.25+1.25/4, phase: 0.25+0.25/4 do
    play_pattern_timed [:As2,:Cs3,:F3,:Cs3,:F3,:Fs3,:As3,:Fs3,:F3,:Fs3,:F3,:Cs3],[0.25]
  end
end



in_thread do
  loop do
    sample :drum_bass_hard
    sleep 1
    sample :drum_snare_hard
    sleep 1
  end
end

use_synth :sine
use_synth_defaults
sleep 8

live_loop :melody do
  use_synth :sine
  4.times do
    play :Ds4
    sleep 0.5
    play :Ds4
    sleep 0.25
    play :Ds4
    sleep 0.25
    play :F4
    sleep 0.25
    play :Fs4
    sleep 0.75
  end
  
  2.times do
    play :Cs4
    sleep 0.5
    play :Cs4
    sleep 0.25
    play :Cs4
    sleep 0.25
    play :F4
    sleep 0.25
    play :Fs4
    sleep 0.75
  end
  
  2.times do
    play :E4
    sleep 0.5
    play :E4
    sleep 0.25
    play :E4
    sleep 0.25
    play :Fs4
    sleep 0.25
    play :Gs4
    sleep 0.75
  end
  
end

sleep 32

use_synth :pulse
use_synth_defaults attack: 1, sustain: 3, release: 1

live_loop :wharble do
  with_fx :reverb, mix: 0.5 do
    with_fx :panslicer do
      2.times do
        play :Ds4, sustain: 7
        sleep 8
        play :Cs4
        sleep 4
        play :F4, sustain: 1
        sleep 2
        play :Fs4, sustain: 1
        sleep 2
      end
      sleep 32
    end
  end
  
end

sleep 32

live_loop :arpeggio do
  use_synth :saw
  use_synth_defaults attack: 0, sustain: 0.125, release: 0.25
  comment do
    play :As2
    sleep 0.25
    play :Cs3
    sleep 0.25
    play :F3
    sleep 0.25
    play :Cs3
    sleep 0.25
    play :F3
    sleep 0.25
    play :Fs3
    sleep 0.25
    play :As3
    sleep 0.25
    play :Fs3
    sleep 0.25
    play :F3
    sleep 0.25
    play :Fs3
    sleep 0.25
    play :F3
    sleep 0.25
    play :Cs3
    sleep 0.25
  end
  with_fx :reverb, mix: 0.7, room: 1.0 do
    play_pattern_timed [:As2,:Cs3,:F3,:Cs3,:F3,:Fs3,:As3,:Fs3,:F3,:Fs3,:F3,:Cs3],[0.25]
  end
  
end

sleep 64



#live_loop :jets do
supersonic :Ds7, :Ds0, 4
sleep 16
supersonic :Cs7, :Cs0, 4
sleep 16
supersonic :B6, :B0-12, 4
sleep 16
supersonic :As6, :As0-12, 4
sleep 16
#end

sleep 128

supersonic :Ds7, :Ds0-12, 32
sleep 64


live_loop :sos do
  use_synth :pulse
  use_synth_defaults attack: 0.0625, sustain: 0.0625, release: 0.0625
  with_fx :reverb, mix: 1, room: 0.2 do
    play_pattern_timed [:A5,:A5,:A5],[0.25]
  end
  sleep 0.5
  use_synth_defaults attack: 0.0625, sustain: 0.01875, release: 0.0625
  with_fx :reverb, mix: 1, room: 0.2 do
    play_pattern_timed [:A5,:A5,:A5],[0.5]
  end
  sleep 0.5
  use_synth_defaults attack: 0.0625, sustain: 0.0625, release: 0.0625
  with_fx :reverb, mix: 1, room: 0.2 do
    play_pattern_timed [:A5,:A5,:A5],[0.25]
  end
  sleep 0.5
  sleep 11.5
end
