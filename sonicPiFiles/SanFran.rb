
drums_amp = 1

##| Start with this as the intro and outro
use_synth :tb303
with_fx :reverb, room: 1 do
  play :e1, cutoff: 100, release: 7, attack: 1, cutoff_attack: 4, cutoff_release: 4
  sleep 8
end

##| After the drums go for a bit, bring up the cutoff and resonance
use_synth :tb303
live_loop :squelch do
  n = (ring :e1, :e2, :e3).tick
  play n, release: 0.125, cutoff: 20, res: 0.5, wave: 0, amp: 0.5
  sleep 0.125
end

##| basic drum beat, the amp in controlled in the variable drums_amp (for the fadeout)
live_loop :drums do
  sample :drum_bass_hard, amp: drums_amp
  sleep 0.25
  sample :drum_cymbal_closed, amp: drums_amp
  sleep 0.25
end


##| fade in slightly with the amp, and eventually start the panslicer
with_fx :bitcrusher do
  live_loop :hindu do
    ##| with_fx :panslicer do
    ##| tech_saws, mod_beep, dsaw, prophet, supersaw - these are all possibilities
    ##| use_synth :prophet - to swap between the two
    use_synth :dsaw
    ##| use_synth_defaults amp: 0.3, release: 1.5
    ##| play choose(scale :e2, :aeolian)
    sleep 0.5
    ##| end
  end
end