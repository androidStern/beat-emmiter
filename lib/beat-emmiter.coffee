_ = require 'lodash'
{EventEmitter} = require('events')
MidiClock = require('midi-clock')


humanize = (number) ->
  switch number
    when 4 then "quarter"
    when 8 then "eighth"
    when 16 then "sixteenth"

beats = [4,8,16]

class BeatEmmiter extends EventEmitter
  constructor: (bpm, beats = [4,8,16])->
    # TODO: check beats are all mod 96
    @clock = MidiClock()
    @clock.setTempo(bpm)
    @bpm = bpm
    @clock.on 'position', (pos)=>
      beats.forEach (note)=>
        if pos % (96/note) is 0
          @emit humanize(note)
  start: ->
    @clock.start()


bE = new BeatEmmiter(96)


x = []
bE.on "eighth", (i)-> x.push "eighth"


bE.start()

bE.on "sixteenth", (i)-> x.push "sixteenth"

setTimeout (-> console.log x), 1000
