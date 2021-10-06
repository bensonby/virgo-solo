rh-intro = \relative c''' {
  << {
    cis4-.\( cis8-. b-. cis-. dis-. r cis-.\)
    r4 cis8-.\( b-. cis-. dis-. r b-.\)
    r4 b4-.\(  b8-. fis'4-. fis8-.
    r4 r8 e-.\) r2
  } \\ {
    <dis, fis>1
    <cis dis>1
    <b e>1
    <b e>1
  } >>

  << {
    cis'4-.\( cis8-. b-. cis-. dis-. r cis-.\)
    r4 cis8-.\( b-. cis-. dis-. r b-.\)
    r4 b4-.\(  b8-. fis'4-. fis8-.
    r8 e4.\)
  } \\ {
    <dis, fis>4-. r8 cis-. dis-. fis-. dis-. cis-.
    <cis dis>4-. r8 cis-. dis-. fis-. dis-. cis-.
    <b e>4-. r8 cis-. dis-. fis-. dis4-.
    <e g>2
  } >> r8 <cis, dis>-. cis4-.
}
rh-verse-A = \relative c'' {
  r4 r8 b dis cis b cis~
  cis8 ais fis dis r2
  r4 r8 gis b ais gis ais~
  ais8 fis dis cis r2

  r4 r8 b' dis cis b cis~
  cis8 ais fis fis~ fis gis ais b
  r4 gis~ gis8 e4 cis8
  r4 r8 <fis' gis> <b^2 fis'^5> <cis dis> <fis,^1 cis'^3> gis

  << {
    r4 r8 b, dis cis b cis~
    cis8 ais fis dis r2
    r4 r8 gis b ais gis ais~
    ais8 fis dis cis'~ cis b ais4

    r4 r8 b dis cis b cis~
    cis8 ais fis fis~ fis gis ais4
  } \\ {
    r4 r8 fis gis4 r8 fis~
    fis4 r <b, cis>8 <cis dis> fis4
    r4 r8 fis gis4 r8 dis~
    dis4 r8 dis~ dis dis fis4

    r4 r8 fis gis4 r8 fis~
    fis4 r8 b,~ b cis fis4
  } >>

  %{ 
  r4 r8 <fis, b> <gis dis'> cis b <fis cis'>~
  q8 ais fis dis <b cis> <cis dis> fis4
  r4 r8 <fis gis> <gis b> ais gis <dis ais'>~
  q8 fis dis <dis cis'>~ q <dis b'> <fis ais>4

  r4 r8 <fis b> <gis dis'> cis b <fis cis'>~
  q8 ais fis <b, fis'>~ q <cis gis'> <fis ais>4
  %}

}
rh-chorus-A = \relative c'' {
  << {
    b4 r8 b b cis d cis
    \voiceTwo
    r2 fis,8 fis' dis cis~
    cis dis dis <cis, ais'> <dis b'>8 fis' dis cis~
  } \\ {
    <d, fis>4 r8 fis gis b cis fis,
    \voiceOne r g' a b cis dis eis4
    fis8 r \voiceTwo r <cis,, ais'> <dis b'>4 r
  } >>
  % q8 g'
  % <d fis b>4 r8 <fis b> <gis b> <b cis> <cis d> <fis, cis'>~
  % q8 g'
  % << { a b cis dis eis4 } \\ { s4 fis,,8 fis' dis cis~ } >>
  % cis dis dis <cis, ais'> <dis b'>8 fis' dis cis~
  cis'8 dis dis <cis, ais'> <dis b'> ais' <dis, fis dis'>8 dis'
  cis8. b16~ b8 ais b cis dis <ais e>~
  q8 <gis e>4. r8 gis <fis gis ais> b~
  b8 e, e4 r8 b' <cis fis,> <dis e,>~
  q16 cis8. <b e,>4 <b e,>8. ais16~ <ais fis e>8 gis
  gis8 fis dis cis <dis b'> ais' fis <cis dis>

  r8 q r cis <fis dis>8 <fis' cis b> <dis cis b> cis~
  cis dis dis <cisis, ais'> <dis b'> <ais' cis> <b fis> <cis dis, cis>~
  q8 <dis dis, cis> dis8 <cisis, ais'> <dis b'> ais' <dis cis fis,>4
  <gis dis b>4 dis <cis b dis,>8 b <dis fis,> <cis b eis,>~
  q8 dis, r cis <dis b'> <dis' ais> <cis fis,> cis~
  cis8 b gis4 r4 b,8 gis'~
  gis16 fis8. cis4 r8. fis,16~ fis8 dis'
  cis8 b b8 cis <dis b'> ais' fis <cis dis>
  r8 q r \makeOctaves 1 { cis'\( dis eis fis4\) }
}
rh-episode-A = \relative c''' {
  r4 \acciaccatura ais16 b2\( \tuplet 3/2 4 { ais4 gis8~ }
  \tuplet 3/2 4 { gis8 fis4~ } fis8 cis \tuplet 3/2 2 { cisis4 dis <cis ais'>\) }
  r2 \tuplet 3/2 4 { b4 <cis dis>8_~\( } \grace { fisis16 } \tuplet 3/2 4 { <dis gis>4 <cis fis>8~ }
  \tuplet 3/2 4 { q4 <ais dis>8~ q4 <gis b>8 r4 ais8 b4 gis'8\) }
  << {
    s1
    s1
    <fis ais dis fis>2.\arpeggio
  } \\ {
    \oneVoice
    r2 r8 gis,\( ais fis'
    \acciaccatura cisis16 dis4 b8 ais~ ais dis4 cis8~\)
    \voiceTwo cis2.
  } >> r8 bis,(
  dis8 fis ais b? \acciaccatura cisis16 dis8)-. <gis, bis dis fis>-> q4->
}
rh-verse-B = \relative c' {
  << {
    r4 r8 b' dis8. cis16~ cis8 b
    cis8. ais16~ ais8 fis~ fis16 dis8. r4
    r4 r8 gis b8. ais16~ ais8 gis
    ais8. fis16~ fis8 dis cis'8. b16~ b8 ais

    r4 r8 b dis cis b cis~
    cis8 ais fis fis~ fis gis ais b
    r4 b8 b~ b cis d cis
  } \\ {
    <gis, b e>1
    e'1
    <ais, dis fis>2~ q8 \cl dis, fis gis
    \cr ais2 r2
    <gis b e>1
    <e' fis gis>1
    <a, d fis>2~ q8 r r4
  } >>

  \clef bass r8 fis cis r
}
rh-chorus-B = \relative c' {
  \clef treble fis8 fis' dis cis~
  cis dis dis <cis, ais'> <dis b'>8 fis' dis cis~
  cis8 dis dis <cis, ais'> <dis b'> ais' <dis, fis dis'>8 dis'
  cis8. b16~ b8 ais b cis dis <ais e>~
  q8 <gis e>4. r8 gis <fis gis ais> b~
  b8 e, e4 r8 b' <cis fis,> <dis e,>~
  q16 cis8. <b e,>4 <b e,>8. ais16~ <ais fis e>8 gis
  gis8 fis dis cis <dis b> <eis cis> <fis eis> <eis dis>

  %{
  r8 <dis b> <eis cis> <fis dis> fis fis' <dis cis> cis~
  cis dis <dis b> ais b <ais cis> <b fis> <cis fisis,>~
  q8 <dis dis, cis> dis8 <cisis, ais'> <dis b'> ais' <dis cis fis,>4
  <gis dis b>4 dis <cis b dis,>8 b <dis fis,> <cis b eis,>~
  q8 dis, r cis <dis b'> <dis' ais> <cis fis,> cis~
  cis8 b gis4 r4 b,8 gis'~
  gis16 fis8. cis4 r8. fis,16~ fis8 dis'
  cis8 b b8 cis <dis b'> ais' fis <cis dis>
  r8 q r \makeOctaves 1 { cis'\( dis eis fis4\) }
  %}
  
  << {
    r2 fis8 fis' dis cis~
    cis dis dis4 r8 cis b cis~
    cis8 dis dis4 r dis4
    gis4 dis cis8 b dis cis~
    cis4 r r8. dis16~ dis8 cis
  } \\ {
    r8 <dis, b> <eis cis> <fis dis> r4 cis'4
    r4 b8 ais b ais fis fisis
    r8 ais, b cis <b dis> e eis fis
    ais4 b8 ais b4 r4
    r8 gis b <cis fis> <b dis>4-. fis4
  } >>
  cis'8 b gis4 r4 b,8 gis'~
  gis16 fis8. cis4 r8. fis,16~ fis8 dis'
  << {
    cis8 b b4 r2
  } \\ {
    r4 r8 <cis ais'> <dis b'> ais' fis <cis dis>
  } >>
}
rh-bridge = \relative c'' {
  << {
    \oneVoice
    r2 b8 cis e dis~
    \voiceOne
    dis8. cis16~ cis4 r4 gis'8 ais~
    ais16 gis8. fisis4 r4 fisis8 ais
    cis8. b16~ b8 ais cis8. b16~ b8 ais
    b4 r8 b b8. e,16~ e8 e'
    \oneVoice
    <cis b e,>1
    r2 a8 b cis b
    \voiceOne
    r8 b b b b dis gis fis~
    fis1~
    fis2
  } \\ {
    s1
    <cis,, dis>1
    fisis1
    cis'1
    d1
    s1
    s1
    e1
    r8 e,\( gis dis'~ dis cis, e gis
    dis' cis gis' b \ottava #1 dis^1 gis^2 cis^3 fis^5\) \ottava #0
  } >>
}
rh-chorus-C = \relative c'' {
}
rh-outro = \relative c {
}
