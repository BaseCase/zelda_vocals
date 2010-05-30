global = {
  \key c \major
  \time 4/4
}

topVoiceMusic = \relative c' {
  \partial 4 e4
  a4 e4. a8 a16 b cis d
  e2~ e8 e \times 2/3 { e f g }
  a2~ a8 a \times 2/3 { a g f }
  g8. f16 e2 e4
  d8. e16 f2 e8 d
  c8. d16 e2 d8 c
  b8. cis16 dis2 fis4
  e8 e,16 e e8 e16 e e8 e16 e \times 2/3 { e8 fis gis }

  a4 e4. a8 a16 b cis d
  e2~ e8 e \times 2/3 { e8 f g }
  a2. c4
  b4 gis2 gis4
  a2. c4
  b gis2 gis4
  f2. a4
  gis e2 e4
  f2. a4
  gis4 e2 e4
  d2. f4
  e c2 c4
  b1
  e1
}

middleVoiceMusic = \relative c' {
  \partial 4 e4
  a4 e4. a8 a16 a a a
  g2~ g8 g \times 2/3 { g g g }
  f2~ f8 f \times 2/3 { f f f }
  c'8. c16 c2 c4
  bes8. bes16 bes2 bes8 bes
  a8. a16 a2 a8 a
  b8. b16 b2 b4
  e8 e,16 e e8 e16 e e8 e16 e \times 2/3 { e8 fis gis }

  a4 e4. a8 a16 a a a
  b2~ b8 b \times 2/3 { b b b }
  c2. e4
  d4 b2 d4
  d( c2) e4
  d b2 b4
  a2. c4
  b b2 b4
  a2. c4
  b4 b2 b4
  a2. a4
  g g2 g4
  fis1
  gis1
}

lowVoiceMusic = \relative c'' {
  \partial 4 r4
  R1*8

  a4 a4. a8 a16 a a a
  g2~ g8 g \times 2/3 { g g g }
  f2. f4
  e4 e2 e4
  f4 \times 2/3 { d8 d e } f4 f
  e e2 e4
  d4 \times 2/3 { b8 b c } d4 d
  e e2 e4
  d4 \times 2/3 { b8 b c } d4 d
  e4 e2 e4
  d4 \times 2/3 { b8 b c } d4 d
  c c2 c4
  es1
  e1
}



topVoiceWords = \lyricmode {
  hi hi hi hi
}
lowVoiceWords = \lyricmode {
  hu hu hu hu
}
middleVoiceWords = \lyricmode {
  ha ha ha ha
}


\score {
  \new ChoirStaff <<

%    \new Lyrics = sopranos { s1 }
    \new Staff = topVoice <<
      \new Voice = "top" {
        \voiceOne
        << \global \topVoiceMusic >>
      }
    >>

%    \new Lyrics = "altos" { s1 }
    \new Staff = middleVoice <<
      \new Voice = "middle" {
        \voiceTwo
        << \global \middleVoiceMusic >>
      }
    >>

%    \new Lyrics = "tenors" { s1 }
    \new Staff = low <<
      \new Voice = "low" {
        \voiceOne
        << \global \lowVoiceMusic >>
      }
    >>


%    \context Lyrics = sopranos \lyricsto sopranos \topVoiceWords
%    \context Lyrics = altos \lyricsto altos \middleVoiceWords
%    \context Lyrics = tenors \lyricsto tenors \lowVoiceWords

  >>  
  \layout {
    \context {
				% a little smaller so lyrics
				% can be closer to the staff
      \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    }
  }
}