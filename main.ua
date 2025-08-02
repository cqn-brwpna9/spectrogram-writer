S ~ "git: github.com/cqn-brwpna9/uiua-synth"
IMAGE ← [
  1_0_1_0_1_0
  0_1_0_1_1_0
  0_1_1_0_0_0
  0_1_0_1_0_0
  1_0_0_0_1_0
]
MinFreq          ← ⁿ 2 8   # hz
MaxFreq          ← ⁿ 2 128 # hz
SoundLength      ← 1       # seconds
Length           ← ⊙◌°⊟△ IMAGE
Width            ← ◌°⊟△ IMAGE
SamplesPerColumn ← ⁅÷ Width ×SoundLength&asr  # how many samples for each row
HzPerRow         ← ⁅÷ Length -MinFreq MaxFreq # what size sound band foreach pixels
PixRow           ← [⍥(+HzPerRow.)Width MinFreq]
Spectrogram ← (
  IMAGE
  ⍉   # get rows in the right place
  ≡() # generate times for 
)
