
define :simple_record do |n,d,v|
  with_fx :record, buffer: [n,d] do
    synth :sound_in, sustain: d, amp: v
    sleep d
  end
end


define :beep_record do |f,n,d,v|
  with_fx :record, buffer: [f,d] do
    synth :beep, note: n, attack: d/3, sustain: d/3, release: d/3, amp: v
  end
end

beep_record("beep5",[:A5],0.015625,0.25)


#simple_record("whatever4",1,1)
#sample "~/.sonic-pi/store/default/cached_samples/whatever4.wav"