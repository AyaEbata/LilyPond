\header{
  title = "Glamourous Sky Keyboard Arrange"
}

backMelody = \relative c'' {
  \clef treble
  r1 r r r r r
  fis4. dis e dis dis b
}

harmonies = {
  \clef bass
  r1 r r r r r 
  <a cis' e'> <a cis' e'> <b dis' fis'> <b dis' fis'>
}

chord = \chordmode {
  e1 b a b cis:m b a(a) b(b)
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chord
    }
    \new GrandStaff <<
      \new Staff \backMelody
      \new Staff \harmonies
    >>
  >>
  \layout { }
  \midi { }
}
