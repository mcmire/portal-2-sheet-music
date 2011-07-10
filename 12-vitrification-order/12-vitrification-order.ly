\version "2.15.4"
\language "english"
\pointAndClickOff % don't make notes clickable in the PDF

violins = \relative c'' {
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \transposition c'''
  % Part I
  % 1
  \key cs \minor
  \mark "0:00.104"
  gs1 ~ | gs4 ~ gs8. e16 ~ e2 ~ | e2. fs4 ~ | fs4. bs,8 ~ bs2 | cs1 ~  | cs2. r4 | \break
  % 7
  \mark "0:24.105"
  gs'1 ~ | gs4. r8 e2 ~ | e2 ~ e8 fs4. ~ | fs2. ds4 ~   | ds2 e2 ~ | \break
  % 12
  e4 \breathe bs2 bs'4 ~ | bs1 | R1 |
  % 15
  \override Score.RehearsalMark #'self-alignment-X = #0
  \mark "0:55.123"
  c1 ~ | c8 r8 r4 bf2 ~  \break | bf4 g2 af4 ~ | af4 c,2 r4 |
  % 19
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark "1:12.138"
  cs1 | r2 gs'2 ~ | gs2 r4 fs4 ~ \break | fs4. bs,8 ~ bs2 | cs1 ~ | cs2 ~ cs4. r8
  % 25
  \mark "1:36.133"
  gs'1 ~ | gs4. r8 e2 ~ \break | e2 ~ e8 fs4. ~ | fs2. ds4 ~ | ds2 e2 ~ | e4 bs2. |
  % 31
  \mark "2:00.127"
  r4 f'2.  \break | r4 c'2. ~ | c2. r4 | r4. bf8 ~ bf2 ~ | bf4 g2 af4 ~ | af4 c,4 ~ c4. r8 | \bar "||"

  % Part II
  % 37
}

brass = \relative c {
  % Part I
  % 1
  \key cs \minor
  \clef bass
  R1*6 |
  % 7
  \times 2/3 { bs4 fs'4 cs'4 ~ } cs2 ~ | R1 | R1 |
  % 10
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 |
  % 12
  css4 es2. | R1 |
  % 15
  \clef bass
  r2 r4 \times 2/3 { e,4 bf'4 f'4 ~ } f4 ~ f16 r16 r8 r4 | R1 | R1 | R1 |
  % 19
  \times 2/3 { bs,,4 fs'4 cs'4 ~ } cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2 r2 |
  % 22
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es4 bs4. r8 |
  % 25
  \clef bass
  \times 2/3 { bs,4 fs'4 cs'4 ~ } cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2. r4 |
  \clef treble
  r2 r4 fs4 | e4 g4 ds4 fs4 | css4 es2 r4 |
  % 31
  \clef bass
  \times 2/3 { e,4 bf'4 f'4 ~ } f4. r8 | R1 | R1 |
  % 34
  \clef treble
  r2 r4 bf4 | g4 f4 g4 af4 | g4 f4 e4 c8 r8 |
}

bass = \relative c' {
  \transposition c,
  % Part I
  % 1
  \key cs \minor
  cs,2. r4 | R1 | cs2. r4 | r2 r4  cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
  % 7
  bs4 cs2. ~ | r2. bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 |
  % 12
  fs4 es4 r4 cs4 | ds4 es2 ~ es8 r8 | r2 r4 e4 |
  % 15
  f2 ~ f16 r16 r8 r4 | r2 r4 bf4 | g4 af4 g4 f4 | e4 c2 r4 |
  % 19
  cs?2 ~ cs4. r8 | R1 | cs2. r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
  % 25
  bs4 cs2. ~ | r2 r4 bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | fs4 es4 ds4 cs4 |
  % 31
  e4 f2 ~ f8 r8 | r2 r4 e4 | f2 ~ f16 r16 r8 r4 | r2 r4 bf4 | g4 af4 g4 f4 | e4 c4 ~ c4. r8 |

  % Part II
  % 37
}

music = \new StaffGroup <<
  % put metronome marks (usu. 1000) above rehearsal marks (usu. 1500)
  %\override Score.MetronomeMark #'outside-staff-priority = #2000
  %\override Score.MetronomeMark #'Y-offset = #7
  %\tempo 4 = 60

  \override Score.RehearsalMark #'Y-offset = #6
  %\override Score.RehearsalMark #'padding = #2

  \new Staff {
    #(set-accidental-style 'modern-cautionary)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Violins"
    \set Staff.shortInstrumentName = "Vlns."
    \set Staff.midiInstrument = "string ensemble 1"
    \clef "treble_8"
    \time 4/4
    \violins
  }

  \new Staff {
    #(set-accidental-style 'modern-cautionary)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Brass"
    \set Staff.shortInstrumentName = "Brass"
    \set Staff.midiInstrument = "brass section"
    \time 4/4
    \brass
  }

  \new Staff {
    #(set-accidental-style 'modern-cautionary)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Double Bass"
    \set Staff.shortInstrumentName = "D. Bass"
    \set Staff.midiInstrument = "contrabass"
    \clef "bass^8"
    \time 4/4
    \bass
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
  system-system-spacing #'basic-distance = #16
  ragged-bottom = ##t
  #(define fonts
    (make-pango-font-tree "Times New Roman" "Helvetica" "Inconsolata" 1))
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 9)
    \column {
      \override #'(baseline-skip . 4.5)
      \column {
        \fill-line { \abs-fontsize #32 \bold \fromproperty #'header:title }
        \fill-line { \abs-fontsize #16 \bold \fromproperty #'header:subtitle }
      }
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line {
          \null % so that the column below will get pushed to the right
          \concat {
            \italic "Composed by"
            " "
            \bold \fromproperty #'header:composer
          }
        }
        \fill-line {
          \null % so that the column below will get pushed to the right
          \concat {
            \italic "Transcribed by"
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
  \midi { }
  \layout {
    indent = 1.5\in
    short-indent = 0.5\in
  }
}