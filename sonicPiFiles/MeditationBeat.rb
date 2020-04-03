##| sample :guit_em9
##| sample :glitch_robot1
##| sample :glitch_robot2
##| sample :glitch_bass_g

use_bpm 60

##| Start off with the amp as 0 and bring it up to 1
##| add the panslicer at somepoint
##| add the echo after that
##| eventually remove those and bring down the amp
live_loop :hindu do
  ##| with_fx :panslicer, phase: 0.2, smooth: 0.2 do
  ##| with_fx :echo, phase: 0.4, mix: 1 do
  use_synth :pluck
  use_synth_defaults amp: 0
  play choose(scale :C3, :indian)
  sleep 0.2
  ##| end
  ##| end
end

##| Bring this at some point first, maybe before the echo and panslicer
live_loop :drone do
  use_synth :tech_saws
  ##| play :C3, release: 5, amp: 1, attack: 0.5, decay: 0.5
  sleep 10
end

##| This is something of a solo compliment after the first drone
live_loop :drone_two do
  use_synth :blade
  ##| play :C3, release: 5, amp: 1, attack: 0.5, decay: 0.5
  sleep 1
end


live_loop :bass_drum do
  sample :tabla_ghe8
  sleep 4
end

live_loop :drums do
  sample :tabla_tas1
  sleep 0.4
  sample :tabla_tas2
  sleep 0.4
  sleep 0.2
end

live_loop :drums_2 do
  sample :tabla_te1
  sample :tabla_na_o
  sleep 0.4
  sample :tabla_ghe2
  sleep 0.2
  sample :tabla_na_o
end