\version "2.15.4"
\language "english"
\pointAndClickOff % don't make notes clickable in the PDF

% 126ms is the offset for the beat for Part I
%

sectionOneText = \markup \translate #'(-4 . 0) \pad-markup #2 {
  \column {
    \line {
      \bold "Ominously"
      "(" \tiny { \note #"4" #1 } = 60 ")"
    }
    \line {
      \tiny "The player inspects the entrance to the old Aperture testing area long since shuttered and abandoned"
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
      \tiny "The player throws caution to the wind and moves into the area"
    }
  }
}

violins = {
  % Part I
  \clef "treble^8"
  \relative gs''' {
    %\override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
    %\override Score.MetronomeMark #'Y-offset = #9
    %\tempo "Ominously" 4 = 60
    %\mark

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

    %\revert Score.RehearsalMark #'break-align-symbols
    %\revert Score.MetronomeMark #'Y-offset
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
    % 60 - 4:00.064
    gs'1 | e2. fs4 ~ | fs2. ds4 ~ | ds4 cs2 e4 ~ | e1 ~ | e2 ~ e8 r8 c'4 ~ |
    % 66 - 4:24.061
    c2. b4 ~ | b4 c4 af2 ~ | af4 bf2 af4 | c2 g2 ~ | g1 ~ | g1\> |
    % 72 - 4:48.058
    gs1\! | e2. fs4 ~ | fs2 ds2 ~ | ds4 cs2. ~ | cs1 ~ | cs4 bs2. |
    % 78 - 5:12.056
    gs'1 | e2. fs4 ~ | fs2. ds4 ~ | ds4 cs2 e4 ~ | e1 ~ | e2 ~ e8 r8 c'4 ~ |
    % 84 - 5:36.053
    c2. b4 ~ | b4 c4 af2 ~ | af4 bf2 af4 | c2 g2 ~ | g1 ~ | g1\> |
    % 96 - 6:00.068
    R1\!_"fade out..." | R1 | R1 | R1 | R1 | R1 | R1 | %"

    \bar "|."
  }
}

brass = \relative bs, {
  % Part I
  % 1
  \clef bass
  R1*6 |
  % 7 - 0:24.105
  \times 2/3 { bs4 fs'4 cs'4 ~ } cs2 ~ | R1 | R1 |
  % 10
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es2. | R1 |
  % 15 - 0:55.123
  \clef bass
  r2 r4 \times 2/3 { e,4 bf'4 f'4 ~ } f4 ~ f16 r16 r8 r4 | R1 | R1 | R1 |
  % 19 - 1:12.138
  \times 2/3 { bs,,4 fs'4 cs'4 ~ } cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2 r2 |
  % 22
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es4 bs4. r8 |
  % 25 - 1:36.133
  \clef bass
  \times 2/3 { bs,4 fs'4 cs'4 ~ } cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2. r4 |
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es2 r4 |
  % 31 - 2:00.127
  \clef bass
  \times 2/3 { e,4 bf'4 f'4 ~ } f4. r8 | R1 | R1 |
  % 34
  \clef treble
  r2 r4 bf4 | g4 f4 g4 af4 | g4 f4 e4 c8 r8 |

  % Part II
  % 37 - 2:24.056
  \clef bass
  \times 2/3 { bs,4 fs'4 cs'4 ~ } cs4. r8 | r2 r4 \times 2/3 { bs,4 fs'4 cs'4 ~ } cs2 ~ cs8 r8  |
  % 40 - 2:35.906
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  % 43 - 2:47.906
  \clef bass
  \times 2/3 { bs,4 fs'4 cs'4 ~ } cs4. r8 | r2 r4 \times 2/3 { bs,4 fs'4 cs'4 ~ } cs2 ~ cs8 r8 |
  % 46 - 2:59.906
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es4 bs2 |
  % 49 - 3:11.906
  \clef bass
  \times 2/3 { e,4 bf'4 f'4 ~ } f4. r8 | r2 r4 \times 2/3 { e,4 bf'4 f'4 ~ } f2 r4 |
  % 52 - 3:23.906
  \clef treble
  r2 r4 bf4 | af4 b4 g4 bf4 | fs?4 a4 e4 b4 |
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
  R1*11 |
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

partTwoBass = {
  % Part II
  % 37 - 2:24.056
  bs4 cs2 ~ cs8 r8 | r2. bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
  % 43 - 2:47.906
  bs4 cs2. | r2. bs4 | cs1 | r2 r4 cs4 | ds4 e4 ds4 cs4 | fs4 es4 ds2 |
  % 49 - 3:11.906
  e4 f2 ~ f8 r8 | r2 r4 e4 | f2 ~ f8 r8 r4 | r2 r4 g4 | f4 af4 g4 f4 | g4 f2. |
  % 55 - 3:35.906
  bs4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 61 - 3:59.906
  bs4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 67 - 4:23.906
  e,4 f2 r4 | r2. e4 | f2 r2 | R1*3 |
  % 73 - 4:47.906
  bs4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 79 - 5:11.906
  bs4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
  % 85 - 5:35.906
  e,4 f2 r4 | r2. e4 | f2 r2 | R1*3 |
  % 91 - 5:59.906
  bs4 cs2 r4 | r2. bs4 | cs2 r2 | R1*3 |
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

harpLickOne = \relative cs {
  \clef bass
  r4
  \times 2/3 { r16 cs16 e16 }
  \times 2/3 { g16 cs16 e16 }
  \clef treble
  \times 2/3 { g16 cs16 e16 }
  \times 2/3 { cs16 cs'16 e16 }
  \times 2/3 { cs8. }
  \times 2/3 { \grace { cs,,32[ gs'32 cs32] } es16 cs16 gs16 } |
  \clef bass
  e32[ cs16 gs32] ~ gs32[ e16.] c4 r2 |
}

harpLickTwo = \relative cs {
  \clef bass
  \times 2/3 { r16 cs16 e16 }
  \times 2/3 { g16 cs16 e16 }
  \clef treble
  \times 2/3 { g16 cs16 e16 }
  \times 2/3 { cs16 cs'16 e16 }
  cs8
  \grace { cs,32[ ds32 e32] } ds16. gs,32
  \clef bass
  es8 gs,8 |
}

harpLickThree = \relative f {
  \clef treble
  r4
  \times 2/3 { f16 af16 c16 }
  f16 af16
  \times 8/11 { c16 f16 af16 c16 f16 af16 f16 c16 af16 f16 c16 } |
  af16 f16 c16 af16 r4 r2
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
}

music = \new StaffGroup <<
  % put metronome marks (usu. 1000) above rehearsal marks (usu. 1500)
  \override Score.MetronomeMark #'outside-staff-priority = #2000

  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  %\override Score.RehearsalMark #'Y-offset = #5.5
  %\override Score.RehearsalMark #'padding = #2

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
    \set Staff.instrumentName = "Brass"
    \set Staff.shortInstrumentName = "Brass"
    \set Staff.midiInstrument = "brass section"
    \time 4/4
    \key cs \minor
    \brass
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

  \new Staff {
    #(set-accidental-style 'modern)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Harp"
    \set Staff.shortInstrumentName = "Harp"
    \set Staff.midiInstrument = "harp"
    \time 4/4
    \key cs \minor
    \harp
  }
>>

\header {
  title = "Vitrification Order"
  subtitle = "From the Portal 2 Original Soundtrack"
  composer = "MIKE MORASKY"
  arranger = "ELLIOT WINKLER"
}

\paper {
  paper-size = "letter"
  %between-system-padding = #4
  %between-system-space = 1.2\in
  %page-limit-inter-system-space = ##t
  %page-limit-inter-system-space-factor = 1
  system-system-spacing #'padding = #7
  ragged-bottom = ##t
  #(define fonts
    (make-pango-font-tree "Times New Roman" "Helvetica" "Inconsolata" 1))
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