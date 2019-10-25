define :setsaw do
  use_synth :saw
  use_synth_defaults attack: 0, release: 0.125, amp: 2
end


define :intro do
  play :Bs3
  sleep 0.25
  play :A3
  sleep 0.25
  play :A4
  sleep 0.25
  play :G4
  sleep 0.25
  play :Bs3
  sleep 0.25
  play :A3
  sleep 0.25
  play :F4
  sleep 0.25
  play :E4
  sleep 0.25
end


chord_one = [:G2, :A3, :C4]
chord_two = [:G2, :A3, :c4, :G4]
chord_three = [:G2, :A3, :c4, :F4]
chord_four = [:G2, :A3, :c4, :E4]
chord_five = [:g2, :a3, :c4, :A4]


define :riff_one do |chord|
  play chord
  sleep 0.25
  2.times do
    2.times do
      play chord
      sleep 0.125
    end
    sleep 0.125
  end
  play chord
  sleep 0.25;
end

define :riff_two do |chord|
  play chord
  sleep 0.25
  5.times do
    play chord
    sleep 0.125
  end
end

define :riff_twopointfive do |chord|
  play chord
  sleep 0.25
  4.times do
    play chord
    sleep 0.125
  end
  sleep 0.125
  play chord
  sleep 0.125
end

define :prog_one do
  riff_one chord_one
  riff_one chord_two
  riff_one chord_three
  riff_one chord_four
end

define :prog_two do
  riff_one chord_one
  riff_two chord_two
  riff_twopointfive chord_three
  riff_two chord_four
  riff_twopointfive chord_five
  riff_two chord_four
  riff_twopointfive chord_two
  riff_two chord_three
  2.times do
    riff_twopointfive chord_three
  end
end

define :beat_one do
  sample :drum_bass_hard
  sleep 0.375
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.375
end

define :beat_three do
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.125
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.25
end


in_thread do
  cue :onebeat
  sleep 14
  8.times do
    beat_one
  end
end


in_thread do
  cue :twobeat
  sleep 22
  16.times do
    beat_three
  end
  sleep 2
  16.times do
    beat_three
  end
  
end




intro

setsaw

2.times do
  beat_one
end

2.times do
  prog_one
end


2.times do
  2.times do
    prog_one
  end
  
  1.times do
    1.times do
      prog_two
    end
  end
  use_synth :sine
  use_synth_defaults
  intro
  setsaw
end

2.times do
  beat_three
end

#play :Bs3;
#play :D4
#play :F4
#play :G4
#play :A4