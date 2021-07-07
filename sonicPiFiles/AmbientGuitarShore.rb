live_loop :waves do
  use_synth :noise
  with_fx :tremolo do
    ##| play 60
    play 60, attack: 1, release: 1, sustain: 2
    sleep rand(3)
  end
end

live_loop :ambient_noise do
  if one_in(6)
    sample :ambi_glass_hum, pitch: 0, pitch_dis: 0
    sleep sample_duration(:ambi_glass_hum)
  end
  
  sleep 5
end

live_loop :ambient_guitar do
  sample "C:/Users/gkirilloff/Downloads/ambien-rock-x-alternative-rock-guitar-loop-20-94.wav", rate: 1, amp: 2
  sleep sample_duration("C:/Users/gkirilloff/Downloads/ambien-rock-x-alternative-rock-guitar-loop-20-94.wav")
end
