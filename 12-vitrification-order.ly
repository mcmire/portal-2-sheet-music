\version "2.12.3"
\include "english.ly"
\pointAndClickOff % don't make notes clickable in the PDF

music = \new StaffGroup <<
  \tempo 4 = 60

  % b -> b
  % c -> c (nat)
  % df -> cs
  % ef -> ds
  % ff -> e
  % gff -> f
  % gf -> fs
  % aff -> g
  % af -> gs

  \new Staff {
    #(set-accidental-style 'neo-modern-cautionary)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Violins"
    \set Staff.shortInstrumentName = "Vlns."
    \set Staff.midiInstrument = "string ensemble 1"
    \clef "treble_8"
    \time 4/4
    \relative c {
      % Part I
      % 1
      \key cs \minor
      \mark "0:00.104"
      gs''1 ~ | gs4 ~ gs8. e16 ~ e2 ~ | e2. fs4 ~ | fs4. bs,8 ~ bs2 | cs1 ~  | cs2. r4 | \break
      % 7
      \mark "0:24.105"
      gs'1 ~ | gs4. r8 e2 ~ | e2 ~ e8 fs4. ~ | fs2. ds4 ~   | ds2 e2 ~ | e4 \breathe c2 c'4 ~ | c1 | R1 | \break
      % 15
      \key f \minor
      \mark "0:56.120"
      c1 ~ | c8 r8 r4 bf2 ~ | bf4 g2 af4 ~ | af4 c,2 r4 | \break
      % 19
      \key cs \minor
      \mark "1:12.138"
      cs1 | r2 gs'2 ~ | gs2 r4 fs4 ~ | fs4. bs,8 ~ bs2 | cs1 ~ | cs2 ~ cs4. r8 \break
      % 25
      \mark "1:36.133"
      gs'1 ~ | gs4. r8 e2 ~ | e2 ~ e8 fs4. ~ | fs2. ds4 ~ | ds2 e2 ~ | e4 c2. |
      % 31
      \mark "2:00.127"
      \key f \minor
      r4 f2. | r4 c'2. ~ | c2. r4 | r4. bf8 ~ bf2 ~ | bf4 g2 af4 ~ | af4 c,4 ~ c4. r8 | \bar "||"

      % Part II
      % 37
    }
  }

  \new Staff {
    #(set-accidental-style 'neo-modern-cautionary)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Brass"
    \set Staff.shortInstrumentName = "Brass"
    \set Staff.midiInstrument = "brass section"
    \time 4/4
    \relative c {
      % Part I
      % 1
      \key cs \minor
      \clef bass
      R1*6 |
      % 7
      bs8. fs'16 ~ fs16 cs'8. ~ cs2 ~ | R1 | R1 |
      % 10
      \clef treble
      r2 r4 fs4 | e4 g4 ds4 fs4 | d4 f2. | R1 |
      % 15
      \key f \minor
      \clef bass
      r2 r4 e,8. bf'16 ~ | bf16 f'8. ~ f4 ~ f16 r16 r8 r4 | R1 | R1 | R1 |
      % 19
      \key cs \minor
      bs,,8. fs'16 ~ fs16 cs'8. ~ cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2 r2 |
      % 22
      \clef treble
      r2 r4 fs4 | e4 g4 ds4 fs4 | d4 f4 bs,4. r8 |
      % 25
      \clef bass
      bs,8. fs'16 ~ fs16 cs'8. ~ cs2 | r2 r8 bs,8 ~ bs16 fs'8. | cs'2. r4 |
      \clef treble
      r2 r4 fs4 | e4 g4 ds4 fs4 | d4 f2 r4 |
      % 31
      \key f \minor
      \clef bass
      e,8. bf'16 ~ bf16 f'8. ~ f4. r8 | R1 | R1 |
      % 34
      \clef treble
      r2 r4 bf4 | g4 f4 g4 af4 | g4 f4 e4 c8 r8 |
    }
  }

  \new Staff {
    #(set-accidental-style 'neo-modern-cautionary)
    \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \override Staff.InstrumentName #'padding = #1.0
    \set Staff.instrumentName = "Double Bass"
    \set Staff.shortInstrumentName = "D. Bass"
    \set Staff.midiInstrument = "contrabass"
    \clef bass
    \time 4/4
    \relative c {
      % Part I
      % 1
      \key cs \minor
      cs,2. r4 | R1 | cs2. r4 | r2 r4  cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
      % 7
      bs4 cs2. ~ | r2. bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 |
      % 12
      gf'4 f4 r4 df4 | ef4 f2 ~ f8 r8 | r2 r4 e4 |
      % 15
      \key f \minor
      f2 ~ f16 r16 r8 r4 | r2 r4 bf4 | g4 af4 g4 f4 | e4 c2 r4 |
      % 19
      \key cs \minor
      cs?2 ~ cs4. r8 | R1 | cs2. r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | ds4 bs2 r4 |
      % 25
      bs4 cs2. ~ | r2 r4 bs4 | cs2 ~ cs8 r8 r4 | r2 r4 cs4 | ds4 e4 ds4 cs4 | fs4 es4 ds4 cs4 |
      % 31
      \key f \minor
      e4 f2 ~ f8 r8 | r2 r4 e4 | f2 ~ f16 r16 r8 r4 | r2 r4 bf4 | g4 af4 g4 f4 | e4 c4 ~ c4. r8 |

      % Part II
      % 37
    }
  }
>>

\score {
  \music
  \midi { }
  \layout {
    indent = 2.7\cm
    short-indent = 1.8\cm
  }
}