beatA = \relative c { r4 <fis gis b> r q }
beatB = \relative c { r4 <fis b cis> r q }
beatBa = \relative c { r4 <fis b cis> r <b cis> }
beatC = \relative c { r4 <fis a b> r q }

lh-intro = \relative c'' {
  \pedalBracket
  << {
    r4 r8 <b cis>8-. dis-. fis-. <b, dis>-. cis-.
    r4 r8 <b cis>8-. dis-. fis-. <b, dis>-. cis-.
    r4 r8 <b cis>8-. dis-. fis-. <b, dis>-. cis-.
    r4 r8 <g b>8-. cis-. dis-. <a cis>-. b-.
    r4 \clef bass \oneVoice b,,,-. r b-.
    \voiceOne r4 \clef bass \oneVoice a-. r a-.
    \voiceOne r4 \clef bass \oneVoice gis-. r8 g gis a
  } \\ {
    \clef treble
    \makeOctaves 1 {
      b''1
      a
      gis
      g
      b \clef treble
      a \clef treble
      gis
    }
  } >>
  \shpSlurA
  a,8\( e cis a~ a2\)
}
lh-verse-A = \relative c {
  << {
    \beatA
    \beatB
    \beatA
    \beatBa
    \beatA
    \beatB
    \beatA
    \beatA

    \beatA
    \beatB
    \beatA
    \beatBa
    \beatA
    \beatB
    \beatA
    r4 <fis gis b>
  } \\ {
    e4 r8 e e4 r8 dis~
    dis8 dis r dis dis4 r
    cis4 r8 cis cis4 r8 b~
    b8 b r b b cis dis4
    e4 r8 e e4 r8 dis~
    dis8 dis r dis dis4 r
    cis4 r8 cis cis4 r8 fis,~
    fis8 fis r fis fis fis r4

    e'4 r8 e e4 r8 dis~
    dis8 dis r dis dis4 r
    cis4 r8 cis cis4 r8 b~
    b8 b r b b cis dis4
    e4 r8 e e4 r8 dis~
    dis8 dis r dis dis4 r

    d4 r8 d d4 r8 fis,~
    fis8 fis r fis \oneVoice fis cis' fis4
  } >>
}
lh-chorus-A = \relative c {
  << {
    \beatB
    \beatC
    \beatA
    r4 <fis gis b> r2
    \beatA
    \beatA
    \beatB
    r4 <fis b cis> r2
    \voiceOne
    r4 <gis cis dis> r q
    r4 <fisis cis'> r2
    \beatA
    r4 <eis b' cis> r <gis b cis>
    \beatA
    \beatA
    \beatB
  } \\ {
    b,4 r8 b8 b4 r8 a~
    a8 a r a a4 r
    gis4 r8 gis gis4 r8 cis~
    cis8 cis r cis cis4 fis,
    e4 r8 e e4 r8 fis~
    fis fis r fis fis4 r
    b4 r8 b b4 r8 b~
    b8 b r \shpSlurB fis\( b cis dis4\)
    ais4 r8 ais ais4 r8 dis~
    dis dis r dis dis4 ais
    gis4 r8 gis gis4 r8 cis,~
    cis8 cis r cis cis4 r
    cis'4 r8 cis cis4 r8 fis,~
    fis8 fis r fis fis4 r
    b4 r8 b b4 r8 b~
    \oneVoice b8 fis\( gis ais b cis dis4\)
  } >>
}
lh-episode-A = \relative c''' {
  << {
    r2 \clef treble <dis e gis>\arpeggio
    r2 \clef treble \ottava #1 <e fis ais cis>\arpeggio \ottava #0
    r2 \clef treble \ottava #1 <cis dis fis ais>\arpeggio \ottava #0
    r2 \clef treble \ottava #1 <ais b dis gis>\arpeggio \ottava #0
    \tuplet 3/2 2 { r4 \clef treble \ottava #1 a' <b e,> <cis fis,> <dis gis,>2 } \ottava #0
    r2 \clef treble <fisis,, ais cis fisis>2\arpeggio
  } \\ {
    <cis,, b' e>1\arpeggio
    \clef bass <fis, e' gis>1\arpeggio
    \clef bass <b ais' \parenthesize dis>1\arpeggio
    \clef bass <gis fis' ais>1\arpeggio
    \clef bass <cis b' e>1\arpeggio
    \clef bass <fis, e' gis>1\arpeggio
  } >>
  \clef bass <b ais' \parenthesize dis>2.\arpeggio r8 bis(
  dis8 fis ais b?) r bis,-> bis4->
}
lh-verse-B = \relative c {
  cis1
  <fis, ais'>1
  b1
  <gis fis'>1
  << {
    cis1
    fis,4 gis8-> fis->~\finger "2-1" fis2
    d2.~ d8 \appoggiatura { d16-1 e-3 } fis8-.->-2
  } \\ {
    r4 cis4-. r cis-.
    r4 fis,4-. r fis-.
    r4 d4-. r d4-.
  } >>
  r8 fis'8-. cis-. ais-. gis-. g-. fis4-.
}
lh-chorus-B = \relative c {
  << {
    \beatB
    \beatC
    \beatA
    r4 <fis gis b> r2
    \beatA
    \beatA
    \beatB
    r4 <fis b cis> r2
    \voiceOne
    r4 <gis cis dis> r q
    r4 <fisis cis'> r2
    \beatA
    r4 <eis b' cis> r <gis b cis>
    \beatA
    \beatA
    \beatB
  } \\ {
    b,4 r8 b8 b4 r8 a~
    a8 a r a a4 r
    gis4 r8 gis gis4 r8 cis~
    cis8 cis r cis cis4 fis,
    e4 r8 e e4 r8 fis~
    fis fis r fis fis4 r
    b4 r8 b b4 r8 b~
    b8 b r fis b cis dis4
    ais4 r8 ais ais4 r8 dis~
    dis dis r dis dis4 ais
    gis4 r8 gis gis4 r8 cis,~
    cis8 cis r cis cis4 r
    cis'4 r8 cis cis4 r8 fis,~
    fis8 fis r fis fis4 r
    b4 r8 b b4 r8 b~
    \oneVoice b8 fis\( gis ais b cis dis4\)
  } >>
}
lh-bridge = \relative c {
  \set fingeringOrientations = #'(left)
  << {
    <ais gis'>1
    <dis cis'>
    <gis fis'>1
    d'2 <e, d'>2
    <a gis'>1
    <d cis'>1
    <cis b'>1
    <fis, e'>1~
    q1
  } \\ {
    r4 r8 cis'~\( cis ais' ais, fis'~
    fis4\) \clef treble r8 fisis~\( fisis ais, ais' cis~
    cis8\)  dis,\( fis b~ b cis, ais' \cr fis'\) \cl
    d,8\( a' cis \cr d~ d8 \cl <e, fis> gis cis\)
    r8 cis,\( e b'~ b gis4 e'8~
    e8\) \shpSlurC fis,\( b cis~ cis b4 fis'8~
    fis8\) e,\( gis dis'~ dis b,4 b'8~
  } >>
}
lh-chorus-C = \relative c {
  \clef bass
  << {
    b2~ b4. a8~
    a1
    gis2~ gis4. cis8~
    cis2. dis4
    e2~ e4. fis8~
    fis2. fis,4
    b1
  } \\ {
    b,4. b8 b4. a8~
    a8 a4 a8 a2
    gis4. gis8 gis4. cis8~
    cis8 cis4 cis8 cis4 dis
    e4. e8 e4. fis8~
    fis8 fis4 fis8 fis4 fis,
    b4. b8 b4. b8
  } >>
  r8 fis'( b cis dis cis b gis)

  << {
    r4 <gis' cis dis> r q
    r4 <fisis cis'> r2
    \beatA
    r4 <eis b' cis> r2
    \beatA
    \beatA
    \beatB
  } \\ {
    ais,4 r8 ais ais4 r8 dis,~
    dis dis r dis dis4 ais
    gis4 r8 gis' gis4 r8 cis,~
    cis8 cis r cis cis4 dis
    e4 r8 e e4 r8 fis~
    fis8 fis r fis fis4 r8 gis
    b4 r8 b b4 r8 b~
    \oneVoice b8 b4( fis8 b cis dis4)
  } >>
}
lh-outro = \relative c {
  cis1
  fis,1~
  fis2 r2
}
