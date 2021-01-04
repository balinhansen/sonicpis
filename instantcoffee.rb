use_synth :blade
use_synth_defaults release: 0.25

use_bpm 75

with_fx :reverb, room: 1, mix: 0.5 do
  with_fx :echo, phase: 0.75*0.5, max_phase: 0.75*0.5*20 do
    with_fx :distortion, distort: 0.7 do
      with_fx :compressor, mix: 1, threshold: 0.05, clamp_time: 0.005, slope_above: 0.0125, slope_below: 0.9875 do
        
        
        8.times do
          1.times do
            play_pattern_timed [:As2,:Cs3,:F3,:Cs3,:F3,:Gs3,:Fs3,:F3,:Fs3,:F3,:Cs3,:F3],[0.25]
            #sleep 1
            play_pattern_timed [:As2,:Cs3,:F3,:Cs3,:F3,:As3,:Fs3,:F3,:Fs3,:F3,:Cs3,:F3],[0.25]
            #sleep 1
            play_pattern_timed [:As2,:Cs3,:F3,:Cs3,:F3,:As3,:Gs3,:F3,:Fs3,:F3,:Cs3,:F3],[0.25]
            #sleep 1
            play_pattern_timed [:As2,:Cs3,:F3,:Cs3,:F3,:Gs3,:Fs3,:F3,:Fs3,:F3,:Cs3,:F3],[0.25]
            #sleep 1
          end
          
          2.times do
            play_pattern_timed [:Gs2,:C3,:Ds3,:C3,:Ds3,:Gs3,:Ds3,:C3,:Ds3,:C3,:Gs2,:C3],[0.25]
            # sleep 1
          end
          
          
        end
      end
    end
  end
end
