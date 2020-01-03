use_bpm 60
use_synth :sine
use_synth_defaults attack: 0.5, sustain: 0.5, release: 0.5

comment do
  #with_fx :record, buffer: "whaat" do
  n=play :a5, note_slide: 0.125
  sleep 0.125
  control n, note: :g5
  sleep 0.25
  n=play :e5, note_slide: 0.125
  sleep 0.125
  control n, note: :g5
  sleep 0.125
  control n, note: :e5
  sleep 0.375
  n=play :g4, note_slide: 0.125
  sleep 0.125
  control n, note: :a4
  sleep 0.25
  n=play :g4, note_slide: 0.125
  sleep 0.125
  control n, note: :d5
  sleep 0.125
  control n, note: :c5
  sleep 0.25
  control n, note: :b4
  #end
end

play :a4, sustain: 1
sleep 1
play :ds4, sustain: 1


#run_file "~/Desktop/sonicpis/airplanes.rb"
#sample "~/.sonic-pi/store/default/cached_samples/whaat.wav"