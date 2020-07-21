##| sample :misc_cineboom

use_bpm 90

##| sample :ambi_lunar_land
##| sleep sample_duration(:ambi_lunar_land)

live_loop :buup do
  cue :boop
  sleep 0.25
end

live_loop :piano do
  sync :boop
  ##| sample :ambi_piano
end

live_loop :bd do
  sync :boop
  ##| sample :drum_bass_hard
  sleep 0.75
end

live_loop :chm do
  sync :boop
  ##| sample :elec_chime, amp: 0.5
  sleep 9.75
end


live_loop :bd_sone do
  sync :boop
  ##| sample :bd_sone
  sleep 0.75
end

sleep 0.5
live_loop :tik do
  sync :boop
  ##| sample :drum_heavy_kick
  sleep 0.75
  ##| sample :drum_cymbal_pedal
end

live_loop :syncho_db do
  sync :boop
  ##| sample :drum_heavy_kick
  sleep 1.25
end

##| live_loop :syn do
##|   use_synth :growl
##|   use_synth_defaults amp: 0.3
##|   sync :boop
##|   with_fx :reverb, room: 1 do
##|     play 60, sustain: 0.5
##|     sleep 0.5
##|     play 60, sustain: 0.5
##|     sleep 0.5
##|     play 56, sustain: 0.5
##|     sleep 0.25
##|     play 56, sustain: 0.5
##|     sleep 0.5
##|     play 55, sustain: 0.5
##|     sleep 0.5
##|     play 53
##|     sleep 0.25
##|     play 55, sustain: 0.5
##|   end
##|   sleep 1.75
##| end

##| live_loop :syn_lead do
##|   use_synth :pluck
##|   use_synth_defaults amp: 0.3
##|   sync :boop
##|   with_fx :reverb, room: 1 do
##|     play 60, sustain: 0.5
##|     sleep 0.5
##|     play 60, sustain: 0.5
##|     sleep 0.5
##|     play 56, sustain: 0.5
##|     sleep 0.25
##|     play 56, sustain: 0.5
##|     sleep 0.5
##|     play 55, sustain: 0.5
##|     sleep 0.25
##|     play 53
##|     sleep 0.25
##|     play 55, sustain: 0.5
##|   end
##|   sleep 1.75
##| end

live_loop :spoken do
  sync :boop
  use_synth :tech_saws
  use_bpm 90
  with_fx :krush do
    if one_in(4)
      ##| sample "C:/Users/gkirilloff/Music/samples/OleBen.wav", rate: 0.75, amp: 2
      sleep sample_duration("C:/Users/gkirilloff/Music/samples/OleBen.wav")
    else if one_in(4)
      ##| sample "C:/Users/gkirilloff/Music/samples/helloThere.wav", rate: 0.75, amp: 2
      sleep sample_duration("C:/Users/gkirilloff/Music/samples/helloThere.wav")
    else if one_in(4)
      ##| sample "C:/Users/gkirilloff/Music/samples/ComeHere.wav", rate: 0.75, amp: 2
      sleep sample_duration("C:/Users/gkirilloff/Music/samples/ComeHere.wav")
    else
      if one_in(4)
        play 60, sustain: 0.5, release: 2, amp: 0.25
      end
    end
  end
end
end
end
