chords_two = (ring (chord :a2, :minor), (chord :b2, :minor), (chord :c2, :minor))
chords_three = (ring (chord :a3, :minor), (chord :b3, :minor), (chord :c3, :minor))
chords_four = (ring (chord :a4, :minor), (chord :b4, :minor), (chord :c4, :minor))

live_loop :beat do
  cue :boop
  sleep 0.25
end

live_loop :bass_drum do
  sync :boop
  sample :drum_bass_hard
  sleep 0.75
end

live_loop :cymbal_beat do
  sync :boop
  sample :drum_cymbal_pedal
  sleep 1.75
end

live_loop :snare_drum do
  sync :boop
  sample :drum_snare_soft
  sleep 0.25
end

live_loop :bd_drum do
  sync :boop
  sample :elec_blip, amp: 0.3
  sleep 0.25
end

live_loop :bd_drum_two do
  sync :boop
  sample :elec_blip2, amp: 0.3
  sleep 0.25
end

live_loop :synth_pop do
  sync :boop
  use_synth :chipbass
  #play choose(chord(:a4, :minor)), sustain: 0.2, amp: 0.4
end

live_loop :synth_pop_two do
  sync :boop
  use_synth :chipbass
  #play choose(chord(:a2, :minor)), sustain: 0.2, amp: 0.4
end

live_loop :synth_pop_three do
  sync :boop
  use_synth :fm
  #play_pattern_timed chord(:a3, :minor), 0.25, amp: 0.3
end

live_loop :synth_pop_four do
  sync :boop
  use_synth :fm
  play chords_three.ring.tick, amp: 0.5
end