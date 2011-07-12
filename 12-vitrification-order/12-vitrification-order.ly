\version "2.15.4"
\language "english"
\pointAndClickOff % don't make notes clickable in the PDF

% 126ms is the offset for the beat for Part I
%

sectionOneText = \markup \translate #'(-4 . 0) \pad-markup #2 {
  \column {
    \line {
      \bold "Massively ominous"
      "(" \tiny { \note #"4" #1 } = 60 ")"
    }
    \line {
      \tiny "Chell lands in the entrance to the old Aperture testing area shuttered and abandoned long ago"
    }
  }
}

sectionTwoText = \markup \translate #'(-0.5 . 0) \pad-markup #1 {
  \override #'(baseline-skip . 2.5)
  \column {
    \line {
      \bold "Grittier"
    }
    \line {
      \tiny "Chell throws caution to the wind and moves into the area"
    }
  }
}

violins = {
  % Part I
  \clef "treble^8"
  \relative gs''' {
    % 1 - 0:00.104
    gs1^\sectionOneText ~ | gs2 e2 ~ | e2. fs4 ~ | fs4. bs,8 ~ bs2 | cs1 ~ | cs2. r4 | \break
    % 7 - 0:24.105
    gs'1 ~ | gs4. r8 e2 ~ | e2 ~ e8 fs4. ~ | fs2. ds4 ~ | ds2 e2 ~ | \break
    % 12
    e4 \breathe bs2 bs'4 ~ | bs1 | R1 |
    % 15 - 0:55.123
    c1 ~ | c8 r8 r4 bf2 ~ \break | bf4 g2 af4 ~ | af4 c,2 r4 |
    % 19 - 1:12.138
    cs1 | r2 gs'2 ~ | gs2 r4 fs4 ~ \break | fs4. bs,8 ~ bs2 | cs1 ~ | cs2 ~ cs4. r8
    % 25 - 1:36.133
    gs'1 ~ | gs4. r8 e2 ~ \break | e2 ~ e8 fs4. ~ | fs2. ds4 ~ | ds2 e2 ~ | e4 bs2. |
    % 31 - 2:00.127
    r4 f'2.  \break | r4 c'2. ~ | c2. r4 | r4. bf8 ~ bf2 ~ | bf4 g2 af4 ~ | af4 c,4 ~ c4. r8 | \bar "||"
  }

  % Part II
  \clef "treble"
  \relative gs'' {
    % 37 - 2:24.056
    gs1^\sectionTwoText | e2. fs4 ~ | fs2 ds2 ~ | ds4 cs2. ~ | cs1 ~ | cs4 bs4 ~ bs4. r8 |
    % 43 - 2:47.906
    gs'1 | e2. fs4 ~ | fs2. ds4 ~ | ds4 cs2 e4 ~ | e1 ~ | e2 ~ e8 r8 r4 |
    % 49 - 3:11.906
    c'2. b4 ~ | b4 c4 af2 ~ | af4 bf2 af4 | c2 g2 ~ | g1 ~ | g1\> |
    % 55 - 3:35.906
    gs1\! | e2. fs4 ~ | fs2 ds2 ~ | ds4 cs2. ~ | cs1 ~ | cs4 bs2. |
    % 61 - 3:59.906
    gs'1 | e2. fs4 ~ | fs2. ds4 ~ | ds4 cs2 e4 ~ | e1 ~ | e2 ~ e8 r8 c'4 ~ |
    % 67 - 4:23.906
    c2. b4 ~ | b4 c4 af2 ~ | af4 bf2 af4 | c2 g2 ~ | g1 ~ | g1\> |
    % 73 - 4:47.906
    gs1\! | e2. fs4 ~ | fs2 ds2 ~ | ds4 cs2. ~ | cs1 ~ | cs4 bs2. |
    % 79 - 5:11.906
    gs'1 | e2. fs4 ~ | fs2. ds4 ~ | ds4 cs2 e4 ~ | e1 ~ | e2 ~ e8 r8 c'4 ~ |
    % 85 - 5:35.906
    c2. b4 ~ | b4 c4 af2 ~ | af4 bf2 af4 | c2 g2 ~ | g1 ~ | g1\> |
    % 91 - 5:59.906
    R1\!_"fade out..." | R1*6 | %"

    % END: 97
    \bar "|."
  }
}

voices = \relative cs'' {
  R1*36 |

  % Part II
  \repeat unfold 3 {
    % 37 - 2:24.056
    % 55 - 3:35.906
    % 73 - 4:47.906
    cs1\! ~ | cs2 bs2 ~ | bs1 | r4 r16 cs8. ~ cs2 ~ | cs1 ~ | cs4 bs2. |
    % 43 - 2:47.906
    % 61 - 3:59.906
    % 79 - 5:11.906
    cs1 ~ | cs2. bs4 ~ | bs1 ~
    <<
      { \voiceOne bs1 ~ }
      \new Voice { \voiceTwo r4 r16 gs8. ~ gs4 r4 }
    >> |
    \oneVoice
    bs1 ~ | bs2. r4 |
    % 49 - 3:11.906
    % 67 - 4:23.906
    % 85 - 5:35.906
    c2. b4 ~ | b4 c4 af2 ~ | af4 bf2 af4 | c1 ~ | c1 ~ | c1\> |
  }

  % 91 - 5:59.906
  R1\! | R1*6

  % END: 97
}

horns = \relative fs' {
  \clef treble

  % Part I
  % 1
  R1*9 |
  % 10
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es2. |
  R1*9 |
  % 22
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es4 bs4. r8 |
  R1*3 |
  % 28
  r2 r4 fs'4 | e4 g4 ds4 fs4 | css4 es2 r4 |
  R1*3 |
  r2 r4 bf'4 | g4 f4 g4 af4 | g4 f4 e4 c8 r8 |

  % Part II
  % 37 - 2:24.056
  R1*3 |
  % 40 - 2:35.906
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  R1*3
  % 46 - 2:59.906
  r2 r4 fs'4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  % 52 - 3:23.906
  r2 r4 bf'4 | af4 b4 g4 bf4 | fs?4 a4 e4 b4 |
  % 55 - 3:35.906
  R1*43
  % END: 97
}

trombone = \relative bs, {
  \clef bass

  % Part I
  % 1
  R1*6 |
  % 7 - 0:24.105
  \times 2/3 { bs4 fs'4 cs'4 ~ } cs2 |
  R1*6 |
  % 14
  r2 r4 \times 2/3 { e,4 bf'4 f'4 ~ } f4 ~ f16 r16 r8 r4 |
  R1*3 |
  % 19 - 1:12.138
  \times 2/3 { bs,,4 fs'4 cs'4 ~ } cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2 r2 |
  R1*3
  % 25 - 1:36.133
  \times 2/3 { bs,4 fs'4 cs'4 ~ } cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2. r4 |
  R1*3
  % 31 - 2:00.127
  \times 2/3 { e,4 bf'4 f'4 ~ } f4. r8 | R1 | R1 |
  R1*3

  % Part II
  % 37 - 2:24.056
  \times 2/3 { bs,,4 fs'4 cs'4 ~ } cs4. r8 | r2 r4 \times 2/3 { bs,4 fs'4 cs'4 ~ } cs2 ~ cs8 r8  |
  R1*3
  % 43 - 2:47.906
  \times 2/3 { bs,4 fs'4 cs'4 ~ } cs4. r8 | r2 r4 \times 2/3 { bs,4 fs'4 cs'4 ~ } cs2 ~ cs8 r8 |
  R1*3
  % 49 - 3:11.906
  \times 2/3 { e,4 bf'4 f'4 ~ } f4. r8 | r2 r4 \times 2/3 { e,4 bf'4 f'4 ~ } f2 r4 |
  R1*3
  % 55 - 3:35.906
  R1*43
  % END: 97
}

synth = \relative c' {
  R1*39 |
  % 40 - 2:35.906
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  R1*3 |
  % 46 - 2:59.906
  r2 r4 fs'4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  R1*3 |
  % 52 - 3:23.906
  r2 r4 bf'4 | af4 b4 g4 bf4 | fs?4 a4 e4 b4 |
  R1*21 |
  % 76 - 4:59.906
  r2 r4 fs'4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  R1*3 |
  % 82 - 5:23.906
  r2 r4 fs'4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  R1*3 |
  % 88 - 5:47.906
  r2 r4 bf'4 | af4 b4 g4 bf4 | fs?4 a4 e4 b4 |
  R1*7
  % END: 97
}

#(define (callback-to-fix-slur-position-using control-pts)
  (lambda (grob)
    (let* (
        ;; have we been split?
        (orig (ly:grob-original grob))

        ;; if yes, get the split pieces (our siblings)
        (siblings (if (ly:grob? orig) (ly:spanner-broken-into orig) '())))

      (if (and (>= (length siblings) 2)
               (eq? (car (last-pair siblings)) grob))
        (ly:grob-set-property! grob 'control-points control-pts)))))

harpLickOne = \relative cs {
  \change Staff = "down"
  r4
  \times 2/3 { r16
    %\once \override Slur #'height-limit = #20.0
    %\once \override Slur #'ratio = #10
    %\once \override Slur #'eccentricity = #2
    %\once \override Slur #'position = #

    %\once \override Slur #'control-points = #'((1 . 1) (17 . 19) (54 . 25) (68 . 1))
    %\once \override Slur #'details #'extra-object-collision-distance = 3

    \once \override Slur #'after-line-breaking =
      #(callback-to-fix-slur-position-using '((12 . 15) (15 . 17) (22 . 10) (23 . 3)))
    cs16([ e16] }
  \times 2/3 {
    %\once \override Beam #'positions = #'(9 . 11)
    g16[ \change Staff = "up" cs16 e16]
  }
  \times 2/3 {
    %\once \override Beam #'positions = #'(-5 . -3)
    g16[ cs16 e16]
  }
  \times 2/3 { cs16[ cs'16 e16] }
  \times 2/3 { cs8. }
  \times 2/3 { \grace { cs,,32[ gs'32 cs32] } es16[ cs16 gs16] } |
  e32[ cs16 \change Staff = "down" gs32] ~ gs32[ e16.] c4) r2 |
}

harpLickTwo = \relative cs {
  \change Staff = "down"
  \times 2/3 { r16 cs16([ e16] }
  \times 2/3 {
    %\once \override Beam #'positions = #'(-2 . 1)
    g16_[ \change Staff = "up" cs16  e16]
  }
  \times 2/3 { g16[ cs16 e16] }
  \times 2/3 { cs16[ cs'16 e16] }
  cs8
  \grace { cs,32[ ds32 e32] } ds16. gs,32
  \change Staff = "down"
  es8 gs,8) |
}

harpLickThree = \relative f {
  \change Staff = "down"
  r4
  \once \override Slur #'after-line-breaking =
    #(callback-to-fix-slur-position-using '((12 . 13) (13 . 15) (16 . 15) (20 . 11)))
  \times 2/3 { f16(_[ af16 \change Staff = "up" c16] }
  f16 af16
  \times 8/11 { c16 f16 af16 c16 f16 af16 f16 c16 af16 f16 c16 } |
  af16 f16 c16 \change Staff = "down" af16) r4 r2
}

harp = {
  R1*36 |

  % 37 - 2:24.056
  \harpLickOne |
  % 39
  \harpLickTwo |
  R1*3 |
  % 43
  \harpLickOne |
  % 45
  \harpLickTwo |
  R1*3 |
  % 49 - 3:11.906
  \harpLickThree |
  % 51
  \harpLickThree |
  % 53
  R1*43
  % END: 97
}

partTwoBass = {
  % Part II
  % 37 - 2:24.056
  bs4 cs2 ~ cs8 r8 | r2. bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
  % 43 - 2:47.906
  bs4 cs2. | r2. bs4 | cs1 | r2 r4 cs4 | ds4 e4 ds4 cs4 | fs4 es4 ds2 |
  % 49 - 3:11.906
  e4 f2 ~ f8 r8 | r2 r4 e4 | f2 ~ f8 r8 r4 | r2 r4 g4 | f4 af4 g4 f4 | g4 f2. |
  % 55 - 3:35.906
  bs,4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 61 - 3:59.906
  bs4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 67 - 4:23.906
  e4 f2 r4 | r2. e4 | f2 r2 | R1*3 |
  % 73 - 4:47.906
  bs,4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 79 - 5:11.906
  bs4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 85 - 5:35.906
  e4 f2 r4 | r2. e4 | f2 r2 | R1*3 |
  % 91 - 5:59.906
  bs,4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 97
  bs4 cs2 r4 |
  % END: 97
}

bass = \relative cs, {
  \clef "bass"

  % Part I
  % 1 - 0:00.104
  cs2. r4 | R1 | cs2. r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
  % 7 - 0:24.105
  bs4 cs2. | r2. bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 |
  % 12
  fs4 es4 r4 cs4 | ds4 es2 ~ es8 r8 | r2 r4 e4 |
  % 15 - 0:55.123
  f2 ~ f16 r16 r8 r4 | r2 r4 bf4 | g4 af4 g4 f4 | e4 c2 r4 |
  % 19 - 1:12.138
  cs?2 ~ cs4. r8 | R1 | cs2. r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
  % 25 - 1:36.133
  bs4 cs2. | r2 r4 bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | fs4 es4 ds4 cs4 |
  % 31 - 2:00.127
  e4 f2 ~ f8 r8 | r2 r4 e4 | f2 ~ f16 r16 r8 r4 | r2 r4 bf4 | g4 af4 g4 f4 | e4 c4 ~ c4. r8 |

  \partTwoBass
}

synthBass = \relative cs, {
  \clef "bass"
  R1*36 |
  \partTwoBass
}

pulse = \relative cs {
  \clef bass

  R1*36 |

  % Part II
  % 37 - 2:24.056
  \repeat unfold 4 { bs16 }
  \repeat unfold 12 { cs16 } |
  \repeat unfold 12 { cs16 }
  \repeat unfold 4 { bs16 }  |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { e16 }
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { cs16 }  |
  \repeat unfold 4 { ds16 }
  \repeat unfold 12 { bs16 } |

  \repeat unfold 4 { bs16 }
  \repeat unfold 12 { cs16 } |
  \repeat unfold 12 { cs16 }
  \repeat unfold 4 { bs16 }  |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { e16 }
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { cs16 }  |
  \repeat unfold 4 { fs16 }
  \repeat unfold 4 { es16 }
  \repeat unfold 8 { ds16 }  |

  \repeat unfold 4 { e16 }
  \repeat unfold 12 { f16 } |
  \repeat unfold 12 { f16 }
  \repeat unfold 4 { e16 }  |
  \repeat unfold 16 { f16 } |
  \repeat unfold 12 { f16 }
  \repeat unfold 4 { g16 }  |
  \repeat unfold 4 { f16 }
  \repeat unfold 4 { af16 }
  \repeat unfold 4 { g16 }
  \repeat unfold 4 { f16 }  |
  \repeat unfold 4 { g16 }
  \repeat unfold 12 { f16 } |

  % 55 - 3:35.906
  \repeat unfold 4 { bs,16 }
  \repeat unfold 12 { cs16 } |
  \repeat unfold 12 { cs16 }
  \repeat unfold 4 { bs16 }  |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { e16 }
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { cs16 }  |
  \repeat unfold 4 { ds16 }
  \repeat unfold 12 { bs16 } |

  \repeat unfold 4 { bs16 }
  \repeat unfold 12 { cs16 } |
  \repeat unfold 12 { cs16 }
  \repeat unfold 4 { bs16 }  |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { e16 }
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { cs16 }  |
  \repeat unfold 4 { fs16 }
  \repeat unfold 4 { es16 }
  \repeat unfold 8 { ds16 }  |

  \repeat unfold 4 { e16 }
  \repeat unfold 12 { f16 } |
  \repeat unfold 12 { f16 }
  \repeat unfold 4 { e16 }  |
  \repeat unfold 16 { f16 } |
  \repeat unfold 12 { f16 }
  \repeat unfold 4 { e16 }  |
  \repeat unfold 4 { f16 }
  \repeat unfold 4 { af16 }
  \repeat unfold 4 { g16 }
  \repeat unfold 4 { f16 }  |
  \repeat unfold 4 { g16 }
  \repeat unfold 12 { e16 } |

  % 73 - 4:47.906
  \repeat unfold 4 { bs16 }
  \repeat unfold 12 { cs16 } |
  \repeat unfold 12 { cs16 }
  \repeat unfold 4 { bs16 }  |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { e16 }
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { cs16 }  |
  \repeat unfold 4 { ds16 }
  \repeat unfold 12 { bs16 } |

  \repeat unfold 4 { bs16 }
  \repeat unfold 12 { cs16 } |
  \repeat unfold 12 { cs16 }
  \repeat unfold 4 { bs16 }  |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { e16 }
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { cs16 }  |
  \repeat unfold 4 { fs16 }
  \repeat unfold 4 { es16 }
  \repeat unfold 8 { ds16 }  |

  \repeat unfold 4 { e16 }
  \repeat unfold 12 { f16 } |
  \repeat unfold 12 { f16 }
  \repeat unfold 4 { e16 }  |
  \repeat unfold 16 { f16 } |
  \repeat unfold 12 { f16 }
  \repeat unfold 4 { e16 }  |
  \repeat unfold 4 { f16 }
  \repeat unfold 4 { af16 }
  \repeat unfold 4 { g16 }
  \repeat unfold 4 { f16 }  |
  \repeat unfold 4 { g16 }
  \repeat unfold 12 { e16 } |

  % 91 - 5:59.906
  \repeat unfold 4 { bs16 }
  \repeat unfold 12 { cs16 } |
  \repeat unfold 12 { cs16 }
  \repeat unfold 4 { bs16 }  |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 16 { cs16 } |
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { e16 }
  \repeat unfold 4 { ds16 }
  \repeat unfold 4 { cs16 }  |
  \repeat unfold 4 { ds16 }
  \repeat unfold 12 { bs16 } |

  % 97
  \repeat unfold 4 { bs16 }
  \repeat unfold 12 { cs16 } |

  % END: 97
}

music = \new StaffGroup <<
  % put metronome marks (usu. 1000) above rehearsal marks (usu. 1500)
  \override Score.MetronomeMark #'outside-staff-priority = #2000
  \override Score.RehearsalMark #'self-alignment-X = #LEFT

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Violins"
    \set Staff.shortInstrumentName = "Vlns."
    \set Staff.midiInstrument = "string ensemble 1"
    \time 4/4
    \key cs \minor
    \violins
  }

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Voices"
    \set Staff.shortInstrumentName = "Voices"
    \set Staff.midiInstrument = "pad 4 (choir)"
    \time 4/4
    \key cs \minor
    \voices
  }

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Horns"
    \set Staff.shortInstrumentName = "Horns"
    \set Staff.midiInstrument = "brass section"
    \time 4/4
    \key cs \minor
    \horns
  }

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Trombones"
    \set Staff.shortInstrumentName = "Tbns."
    \set Staff.midiInstrument = "brass section"
    \time 4/4
    \key cs \minor
    \trombone
  }

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Synth Lead"
    \set Staff.shortInstrumentName = "Synth"
    \set Staff.midiInstrument = "lead 2 (sawtooth)"
    \time 4/4
    \key cs \minor
    \synth
  }

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Contrabass"
    \set Staff.shortInstrumentName = "C. Bass"
    \set Staff.midiInstrument = "contrabass"
    \time 4/4
    \key cs \minor
    \bass
  }

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Synth Bass"
    \set Staff.shortInstrumentName = "S. Bass"
    \set Staff.midiInstrument = "lead 2 (sawtooth)"
    \time 4/4
    \key cs \minor
    \synthBass
  }

  \new GrandStaff <<
    \override GrandStaff.InstrumentName #'self-alignment-X = #RIGHT
    \override GrandStaff.InstrumentName #'padding = #1.0
    \set GrandStaff.instrumentName = "Harp"
    \set GrandStaff.shortInstrumentName = "Harp"
    \set GrandStaff.midiInstrument = "harp"
    \new Staff = "up" {
      #(set-accidental-style 'modern)
      \time 4/4
      \key cs \minor
      \clef treble
      \harp
    }
    \new Staff = "down" {
      #(set-accidental-style 'modern)
      \time 4/4
      \key cs \minor
      \clef bass
      s1*98
    }
  >>

%  \new Staff {
%    #(set-accidental-style 'modern)
%    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
%    \override Staff.InstrumentName #'padding = #1.0
%    \set Staff.instrumentName = "Pulse"
%    \set Staff.shortInstrumentName = "Pulse"
%    \set Staff.midiInstrument = "lead 2 (sawtooth)"
%    \time 4/4
%    \key cs \minor
%    \pulse
%  }
>>

\header {
  title = "Vitrification Order"
  subtitle = "From the Portal 2 Original Soundtrack"
  composer = "MIKE MORASKY"
  arranger = "ELLIOT WINKLER"
}

\paper {
  paper-size = "letter"
  system-system-spacing #'padding = #7
  ragged-bottom = ##t

  #(define fonts (make-pango-font-tree "Times New Roman" "Helvetica" "Inconsolata" 1))
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 9)
    \column {
      \override #'(baseline-skip . 4.5)
      \column {
        \fill-line { \abs-fontsize #28 \bold \fromproperty #'header:title }
        \fill-line { \abs-fontsize #16 \bold \fromproperty #'header:subtitle }
      }
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line {
          \null % so that the column below will get pushed to the right
          \concat {
            \italic "Music by"
            " "
            \bold \fromproperty #'header:composer
          }
        }
        \fill-line {
          \null % so that the column below will get pushed to the right
          \concat {
            \italic "Transcription by"
            " "
            \bold \fromproperty #'header:arranger
          }
        }
      }
    }
  }
}

\score {
  \music
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
  \layout {
    indent = 1.0\in
    short-indent = 0.5\in
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}