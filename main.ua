S ~ "git: github.com/cqn-brwpna9/uiua-synth"
SCALE!   ← ^0+⊙⇡            # for making scales [a₁ a₁+1 ... a₁+a₂]
LOGSCALE ← SCALE!(S~TOFREQ) # a log scale 
LINSCALE ← SCALE!(∘)        # a linear scale
ROW!     ← /+S~FREQSYN 1×˜^0⊏0⊙:△.
LOGROW   ← ROW!(LOGSCALE)
LINROW   ← ROW!(LINSCALE)
LINROW [1 0 1 0 1] 440
