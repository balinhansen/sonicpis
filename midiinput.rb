
live_loop :midi_piano do
  use_real_time
  note, velocity =sync "/midi/usb_oxygen_49/0/1/note_on"
  #velocity=if velocity!=0 then 127 else 0 end
  #if (velocity != 0)
  in_thread do
    
    #with_fx :echo, mix: 0.5, phase: 0.25+0.25/4 do
    # with_fx :reverb do
    #  with_fx :compressor, slope_below: 1  do
    synth :piano, note: note, amp: velocity/127.0, attack: 0.0, sustain: 1, release:0.0
    
  end
  #end
  # end
  #end
end
#end
