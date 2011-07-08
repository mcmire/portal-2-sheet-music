\version "2.12.3"
\include "english.ly"

\new StaffGroup <<
  \tempo 4 = 60

  \new Staff {
    \set Staff.instrumentName = "Violin"
    \clef treble
    \time 4/4
    \key df \minor
    \relative c' {
      af''1 ~ | af4 ~ af8. ff16 ~ ff2 ~ | ff2. gf4 ~ | gf4. c,8 ~ c2 | df1 ~  | df2. r4 | \break
      af'1 ~  | af4. r8 ff2 ~ | ff2 ~ ff8 gf4. ~ | gf2. ef4 ~    | ef2 ff2 ~ | ff4 \breathe c2 c'4 ~ | c1 | \break R1 |
      c1 ~ | c8 r8 r4 r2 | R1 | R1
    }
  }

  \new Staff {
    \set Staff.instrumentName = "Trumpet"
    \clef treble
    \time 4/4
    \key df \minor
    \relative c' {
      R1*6 |
      c8. gf'16 ~ gf16 df'8. ~ df2 ~ | R1 | R1 | r2 r4 gf4 | ff4 aff4 ef4 aff4 | eff4 gff2. | R1 |
      r2 r4 ff,8. bf16 ~ | bf16 c8. ~ c4 ~ c16 r16 r8 r4 | R1 | R1 | R1
    }
  }

  \new Staff {
    \set Staff.instrumentName = "Double Bass"
    \clef bass
    \time 4/4
    \key df \minor
    \relative c {
      df,1      | R1     | df2. r4         | r2 r4  df4 | ef4 ff4 ef4 df4 | ef4 c2 r4 |
      c4 df2. ~ | r2. c4 | df2 ~ df8 r8 r4 | r2 r4 df4 | ef4 ff4 ef4 df4 | gf4 gff4 r4 df4 | ef4 ff2 ~ ff8 r8 | r2 r4 ff4 |
      gf2 ~ gf16 r16 r8 r4 | R1 | R1 | R1
    }
  }
>>