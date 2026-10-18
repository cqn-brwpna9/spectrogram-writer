# spectrogram-writer
A tool for putting data(currently text) into sound, viewable through a spectrogram viewer.
It works using cli, using this format:
```sh
uiua run main.ua -- --text <text to use> --fname <where to save to> --min <minimum note value> --max <maximum note value> --len <timestep>
```
All files are .wav files and the numbers passed to `--min` and `--max` are the note numebers from [uiua-synth](https://github.com/cqn-brwpna9/uiua-synth), (0=440hz, every other change is a semitone.
Len is how many seconds a row of pixels should be played for. Text is `hello` by default; Fname is `out.wav`; Min is `-5`; Max is `20`; Len is `0.05`. These values were chosen because they work pretty good.
There is a line below everything that is an artifact of the rendering process, which may be removed at some point.
## Todo:
- Add support for images/non text arrays
- Remove that weird line thing
