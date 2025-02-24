library(tidyverse)
library(jsonlite)

#Code from Lab 3 for doing an example with The Front Bottoms-Talon of the Hawk-Au Revoir (Adios) 
current.filename = "The Front Bottoms-Talon of the Hawk-Au Revoir (Adios).json"

str.current.filename= str_split(current.filename, "-")
artist= str.current.filename[[1]][1]
album= str.current.filename[[1]][2]
track= str_sub(str.current.filename[[1]][3], start=1, end=-6)

json.data=fromJSON(paste("EssentiaOutput/", current.filename, sep=""))

overall_loudness=json.data$lowlevel$loudness_ebu128$integrated
spectral_energy= json.data$lowlevel$spectral_energy
dissonance = json.data$lowlevel$dissonance
pitch_salience = json.data$lowlevel$pitch_salience
bpm = json.data$rhythm$bpm
beat_loudness = json.data$rhythm$beats_loudness$mean
danceability = json.data$rhythm$danceability
tuning_frequency =json.data$tonal$tuning_frequency

