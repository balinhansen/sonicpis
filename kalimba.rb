use_bpm 45

#notes=[:G3,:A3,:B3,:C4,:D4,:E4,:Fs4,:G4,:A4,:B4,:C5,:D5,:E5,:Fs5,:G5]
notes=[:B3,:C4,:E4,:F4,:G4,:A4,:As4,:B4,:C5,:D5,:E5,:F5,:G5,:A5,:As5]

define :bellsine do |n,d,s|
  use_synth :pretty_bell
  use_synth_defaults attack: 0, sustain: 0, release: d
  play n
  
  use_synth :sine
  use_synth_defaults attack: 0, sustain: 0, release: s
  play n
end

define :bellsinepattern do |n,d,s|
  ct=0
  n.count.times do
    bellsine n[ct], d[ct], s[ct]
    sleep d[ct]
    ct=ct+1
  end
end


with_fx :reverb, room: 1, damp: 1 do
  comment do
    
    ct=0
    notes.count.times do
      bellsine notes.reverse[ct]+7, 0.0625, 0.5
      sleep 0.0625
      bellsine notes.reverse[ct], 0.0625, 0.5
      sleep 0.0625
      ct=ct+1
    end
  end
  in_thread do
    11.times do
      bellsine [:Fs4,:D4], 0.25, 2
      sleep 2
      bellsine [:E4,:A4], 0.25, 2
      sleep 2
      bellsine [:Fs4,:D4], 0.25, 2
      sleep 2
      bellsine [:E4,:B3], 0.25, 2
      sleep 2
    end
  end
  sleep 8
  in_thread do
    10.times do
      
      2.times do
        sample :drum_bass_soft
        sleep 1
        sample :drum_snare_soft
        sleep 1
        sample :drum_bass_soft
        sleep 0.25
        sample :drum_bass_soft
        sleep 0.75
        sample :drum_snare_soft
        sleep 1
      end
    end
    
    
  end
  2.times do
    sleep 8
    2.times do
      #play_pattern_timed [:A4,:b4,:a4,:g4,:Fs4,:a4],[0.5,0.5,0.5,0.5,1,1]
      bellsinepattern [:A4,:b4,:a4,:g4,:Fs4,:a4],[0.5,0.5,0.5,0.5,1,1],[2,2,2,2,2,2]
      sleep 4
    end
    sleep 8
    2.times do
      #play_pattern_timed [:cs5,:d4,:b4,:a4,:a3],[1,1,1,2,3]
      bellsinepattern [:cs5,:d4,:b4,:a4,:a3],[1,1,1,2,3],[2,2,2,2,2]
    end
  end
  sleep 8
  #play_pattern_timed [:d4, :b4,:a4,:cs5,:d5],[0.5]
  bellsinepattern [:d4, :b4,:a4,:cs5,:d5],[0.5,0.5,0.5,0.5,0.5],[2,2,2,2,2]
  
end
