firstList = (ring (chord :E, :minor), (chord :G, :major), (chord :B, :minor), (chord :A, '7sus4'))
secondList = (ring (chord :E, :minor), (chord :G, :major), (chord :D, :major), (chord :A, '7sus4'), (chord :C, :major), (chord :D, :major), (chord :A, '7sus4'))
thirdList = (ring (chord :E, :minor), (chord :G, :major), (chord :D, :major), (chord :A, '7sus4'), (chord :E, :minor), (chord :G, :major), (chord :D, :major), (chord :A, '7sus4'))
preChorusList = (ring (chord :C, :major), (chord :D, :major), (chord :E, :minor),(chord :C, :major), (chord :D, :major), (chord :E, :minor), (chord :C, :major), (chord :D, :major), (chord :G, :major), (chord :D, :major), (chord :E, :minor), (chord :D, :major), (chord :A, '7sus4'))
chorusList = (ring (chord :C, :major), (chord :E, :minor), (chord :G, :major), (chord :E, :minor))

live_loop :syncing do
  cue :blip
  sleep 0.25
end

define :intro do |speed|
  4.times do
    play_pattern_timed firstList.ring.tick, speed
    sleep 0.25
  end
end

define :verse1 do |speed|
  2.times do
    play_pattern_timed firstList.ring.tick, speed
    sleep 0.25
  end
  
  1.times do
    play_pattern_timed secondList.ring.tick, speed
    sleep 0.25
  end
end

define :verse2 do |speed|
  2.times do
    play_pattern_timed firstList.ring.tick, speed
    sleep 0.25
  end
  
  1.times do
    play_pattern_timed thirdList.ring.tick, speed
    sleep 0.25
  end
end

define :chorus do |speed|
  1.times do
    play_pattern_timed preChorusList.ring.tick, speed
    sleep 0.25
  end
  
  4.times do
    play_pattern_timed chorusList.ring.tick, speed
    sleep 0.25
  end
  
end

live_loop :testRing do
  sync :blip
  use_synth :blade
  
  intro(0.25)
  verse1(0.25)
  verse2(0.25)
  chorus(0.25)
  
  verse2(0.25)
  chorus(0.25)
end

live_loop :bass do
  sync :blip
  sample :drum_bass_soft
  sleep 0.75
end

live_loop :cymbalLoop do
  sync :blip
  sample :drum_cymbal_pedal, amp: 0.2
  sleep 0.25
end

live_loop :cowbellLoop do
  sync :blip
  sample :drum_snare_soft, amp: 0.5
  sleep 1
end

live_loop :tomSoft do
  sync :blip
  sample :drum_tom_mid_soft, amp: 0.5
  sleep 2
end

live_loop :tomLowSoft do
  sync :blip
  sample :drum_tom_lo_soft, amp: 0.5
  sleep 2.5
end

live_loop :drumExtra do
  sync :blip
  sample :elec_filt_snare, amp: 0.5
  sleep 5
end

live_loop :drumAnotherExtra do
  sync :blip
  sample :elec_hollow_kick, amp: 0.5
  sleep 1
end

live_loop :guitarFifths do
  sync :blip
  sample :guit_e_fifths, amp: 0.4
  sleep 2
end