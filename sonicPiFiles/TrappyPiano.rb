use_bpm 150

live_loop :drum_bass do
  sample :bd_sone, amp: 0.3
  sleep 2
end

live_loop :drum_kick do
  sample :drum_heavy_kick, amp: 0.3
  sleep 4
end

live_loop :drum_cats do
  sample :drum_bass_soft, amp: 0.3
  sleep 1
end

live_loop :drum_cats_2 do
  sample :drum_cymbal_closed, amp: 0.3
  sleep 0.5
  sample :bd_klub, amp: 0.3
  sleep 0.5
  sample :bd_boom, amp: 0.3
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.3
  sleep 5
end

notes = (scale :Ds, :minor).shuffle

live_loop :foo do
  use_synth :piano
  ##| with_fx :tanh, reps: 8 do
  with_fx :panslicer, reps: 8, phase: 2 do
    with_fx :reverb, reps: 8, room: 1, damp: 1 do
      tick
      play notes.look, amp: 0.5, release: 1.5
      sleep 1
    end
  end
end

live_loop :flute do
  sample "C:/Users/gkirilloff/Downloads/simple-trap-melody-150-13.wav", rate: 1, amp: 2
  ##| sample "C:/Users/gkirilloff/Downloads/raia-flex-150-13.wav", rate: 1, amp: 1
  ##| sample "C:/Users/gkirilloff/Downloads/indian-flute-100.wav", pitch: 0.5, rate: 1, amp: 1.5
  ##| sample "C:/Users/gkirilloff/Downloads/spooky-synths.wav", rate: 1, amp: 1.5
  sleep 13
end