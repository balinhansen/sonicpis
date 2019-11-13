use_synth :piano
use_synth_defaults pitch:-5

define :openscale do
  play :g3
  sleep 0.5
  play :c4
  sleep 0.5
  play :e4
  sleep 0.5
  play :a4
end

define :tenor_c do
  play [:g3, :c4, :e4, :c5]
end

tenor_c