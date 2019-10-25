# Welcome to Sonic Pi v3.0.1

space=0.0625

use_bpm 60

uke=[:g4,:c4,:e4,:a4];
revuke=[:a4,:e4,:c4,:g4];

altuke=[:a4, :d4, :f4, :b4 ];
altrevuke=[:b4, :f4, :d4, :a4 ];

alttoouke=[:b4, :e4, :g4, :c5];
alttoorevuke=[:c5, :g4, :e4, :b4];

comment do
  detuke=[:a4, :bs3, :f4, :g4];
  detrevuke=[:g4, :f4, :bs3, :a4];
end

detuke=[:c5, :d4, :f4, :g4];
detrevuke=[:g4, :f4, :d4, :c5];

define :ukulele do
  counter = 0
  play :g4
  sleep space
  play :c4
  sleep space
  play :e4
  sleep space
  play :a4
end


define :alohastrum do |somenotes, somerevnotes|
  2.times do
    play_pattern_timed somenotes, [0.0625/4]
    sleep 0.25
    
    play_pattern_timed somerevnotes, [0.0625/4]
    sleep 0.0625
    play_pattern_timed somenotes, [0.0625/4]
    sleep 0.25
    
    play_pattern_timed somerevnotes, [0.0625/4]
    sleep 0.0625
    play_pattern_timed somenotes, [0.0625/4]
    sleep 0.25
    play_pattern_timed somerevnotes, [0.0625/4]
    
    sleep 0.375
    play_pattern_timed somerevnotes, [0.0625/4]
    sleep 0.0625
    
  end
end


define :liststrum do |somenotes, somerevnotes|
  1.times do
    play_pattern_timed somenotes, [0.0625/4]
    sleep 0.0625
    play_pattern_timed somerevnotes, [0.0625/4]
    sleep 0.0625
  end
end


define :saahc do
  play_pattern_timed uke, [0.0625/8]
  sleep 0.5
  play_pattern_timed uke, [0.0625/8]
  sleep 0.25
  play_pattern_timed uke, [0.0625/8]
  sleep 0.25
  play_pattern_timed uke, [0.0625/8]
  sleep 0.5
  play_pattern_timed uke, [0.0625/8]
  sleep 1
  play_pattern_timed uke, [0.0625/8]
  sleep 0.5
  play_pattern_timed uke, [0.0625/8]
  sleep 0.5
end

use_synth :pluck
use_synth_defaults decay: 0, release: 0.0625/4, sustain: 0, attack: 0;


define :introstrum do
  ukulele
  sleep 2
end

define :intro do
  use_synth_defaults
  play_pattern_timed uke, [0.25]
  
  sleep 1
  play_pattern_timed altuke, [0.25]
  
  sleep 1
  play_pattern_timed alttoouke, [0.25]
  
  sleep 1
  
  play_pattern_timed detuke, [0.25]
  
  sleep 2
end

define :melody do
  
  alohastrum uke, revuke
  alohastrum altuke, altrevuke
  alohastrum alttoouke, alttoorevuke
  alohastrum detuke, detrevuke
  
end


define :outro do
  liststrum uke, revuke
  liststrum altuke, altrevuke
  liststrum alttoouke, alttoorevuke
  liststrum detuke, detrevuke
end

define :song do
  introstrum
  intro
  
  2.times do
    melody
  end
  outro
end

song