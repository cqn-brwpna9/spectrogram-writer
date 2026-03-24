# Experimental!
S ~ "gh: cqn-brwpna9/uiua-synth"
  ToFreq    ← S.ToFreq
  Syn       ← S.FreqSyn
  Normalize ← S.Normalize
MIN       ← ¯5
MAX       ← 20
LEN       ← 0.05
MakeText  ← ⁅layout ×₂-MIN MAX
MakeFreqs ← (
  ⇌¬<₁+⧋/+⧋=˜⊟0-₁⊢⟜⇡⊸△    # put a line below(and to the right) of the array so somthing is always being played
  ⊜□°⊟⍜⊣(⍜(+MIN)ToFreq)⧋⊚ # make the diffrent lists of frequencies that need to be played
)
GenSound ← Normalize/⊂≡◇(/+Syn LEN)
&apGenSound MakeFreqs MakeText "uhhhhhh. thoughts"
