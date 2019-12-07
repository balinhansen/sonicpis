use_synth :pretty_bell
use_synth_defaults sustain: 0.05, amp: 0.05

bells=[:gs4, :b4, :cs5, :d5, :fs5, :gs5, :a5, :b5, :cs6, :e6, :gs6, :b6, :d7, :f7]

with_fx :reverb do
  play_pattern_timed bells.map{|x| [x,x,x]}.flatten,[0.125,0.125,0.125]
  play_pattern_timed bells.reverse.map{|x| [x,x,x]}.flatten,[0.125,0.125,0.125]
end

sleep 0.5

2.times do
  2.times do
    in_thread do
      play_pattern_timed bells.map{|x| [x-(rand/8)*(rand_i(2)==0?1:-1),x-(rand/8)*(rand_i(2)==0?1:-1),x-(rand/8)*(rand_i(2)==0?1:-1)]}.flatten,bells.map{|x| 0.125+rand*1/50}
    end
    sleep 0.05
    in_thread do
      play_pattern_timed bells.reverse.map{|x| [x-(rand/8)*(rand_i(2)==0?1:-1),x-(rand/8)*(rand_i(2)==0?1:-1),x-(rand/8)*(rand_i(2)==0?1:-1)]}.flatten,bells.map{|x| 0.125+rand*1/50}
    end
    
    sleep 0.01;
  end
  sleep 0.05;
end