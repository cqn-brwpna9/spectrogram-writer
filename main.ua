# Experimental!
S ~ "gh: cqn-brwpna9/uiua-synth"
  ToFreq    ← S.ToFreq
  Syn       ← S.FreqSyn
  Normalize ← S.Normalize
~Cfg {Min Max Len Text Fname}
N! ←^ $"⨬(⋕°□⊡+1)⋅⋅_⊸=¯1"°¤°□
T! ←^ $"⨬(°□⊡+1)⋅⋅_⊸=¯1"°¤°□
ParseArgs ← (
  ⍡(Cfg ¯5 20 0.05 "Hello" "out.wav" ◌⍩°{∘}
  | ⬚¯1≡⊚⊸≡⌟= {"--min" "--max" "--len" "--text" "--fname"}
    °⊟₅⧋°¤
    Cfg⊓⌟(N!¯5|N!20|N!0.05|T!"Hello"|T!"out.wav")
  )
)
MakeText ← ⁅layout ×₂-⊸⊃(Cfg.Min|Cfg.Max|Cfg.Text)
MakeFreqs ← (
  ⇌¬<₁+⧋/+⧋=˜⊟0-₁⊢⟜⇡⊸△      # put a line below(and to the right) of the array so somthing is always being played
  ⊜□°⊟⍜⊣⍜+ToFreq⊓⧋⊚⊸Cfg.Min # make the diffrent lists of frequencies that need to be played
)
GenSound ← Normalize/⊂˜≡◇(/+Syn)⊙⊸Cfg.Len
GenSound MakeFreqs MakeText ParseArgs &args
˜&fwa⊓(audio "wav" &asr)Cfg.Fname
