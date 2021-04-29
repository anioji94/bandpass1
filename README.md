# DAW plugins
Users - Musicians applying filters to tracks
Filters will change how the track sounds

Product = Bandpass filter

Frequencies below a lower limit will be set to that limit
Frequencies above an upper limit will be set to that upper limit
Frequencies in between will not be altered

Default limits (when user has not defined limits)
Lower = 40
Upper = 1000

The Filter should process a full second of music in under 100 ms (44100 frequencies)

| Input | Output |
|--------|---------|
| Sound wave | Manipulated Sound wave |
| [60,10,45,60,1500] | [60,40,45,60,1000] |
| [null] | error "Sound Wave Corrupted" |
| [0] | [40] |
| [2000] | [1000] |
| [500] | [500] |
| [500,500] | [500,500] |
| [500,10] | [500,40] |
| [500,2000] | [500,1000] |

