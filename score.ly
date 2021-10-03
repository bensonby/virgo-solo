\version "2.20.0"

\include "makeOctaves.ly"
\include "definitions.ly"
\include "rh.ly"
\include "lh.ly"

\header {
  title = "林家謙 - 難道喜歡處女座"
  subtitle = "Piano Solo"
  composer = "林家謙"
  arranger = "Arranged by Benson"
}

global-tempo = {
  \tempo 4 = 130
}
global = {
  \key b \major
}

rh = \relative c' {
  \clef bass
  \metronomePaddingA
  \tag #'mini { \metronomePaddingB }
  \global-tempo
  \global
  \rh-intro
  \rh-verse-A
  \rh-chorus-A
  \rh-episode-A
  \rh-verse-B
  \rh-chorus-B
  \rh-bridge
  \rh-chorus-C
  \rh-outro
  \bar "|."
}

lh = \relative c {
  \clef bass
  \global
  \lh-intro
  \lh-verse-A
  \lh-chorus-A
  \lh-episode-A
  \lh-verse-B
  \lh-chorus-B
  \lh-bridge
  \lh-chorus-C
  \lh-outro
  \bar "|."
}

dynamics = {
  % intro
  s1\mf s1*7

  % verse-A
  s1-\mpStaccato s1*15

  % chorus A
  s1\mf s1*15

  % episode A
  s1-\markup { "dream-like" } s1*7

  % verse-B
  s1\mp s1*3 s1\< s1 \dynamicShiftA s1\mf s1

  % chorus B
  s1-\sempreStaccato s1*15

  % bridge
  s1-\mpDreamLike s1*8

  % chorus C
  s1*7 s8 s2..\mf
  s1-\sempreStaccato s1*7

  % outro
  \dynamicShiftB
  s1\mp s1-\rit s1
}

\paper {
  page-breaking = #ly:page-turn-breaking
  oddFooterMarkup = \markup {
    \fill-line {
      "https://music.bensonby.me"
    }
  }
  evenFooterMarkup = \oddFooterMarkup
  footnote-footer-padding = 4.5\mm
  last-bottom-spacing.basic-distance = #11
}
\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \set PianoStaff.instrumentName = #""
    \new Staff = "right" \with {
      \consists "Span_arpeggio_engraver"
    } {
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.midiMinimumVolume = #0.6
      \set Staff.midiMaximumVolume = #0.7
      \removeWithTag #'mini \rh
    }
    \new Dynamics = "Dynamics_pf" \removeWithTag #'mini \dynamics
    \new Staff = "left" {
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.midiMinimumVolume = #0.6
      \set Staff.midiMaximumVolume = #0.7
      \removeWithTag #'mini \lh
    }
  >>
  \layout {
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      \Staff \RemoveEmptyStaves
    }
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      % \Dynamics \RemoveEmptyStaves
    }
    \context {
      \Score
      % Remove all-rest staves also in the first system
      % \override VerticalAxisGroup.remove-first = ##t
      % If only one non-empty staff in a system exists, still print the starting bar
      % \override SystemStartBar.collapse-height = #1
    }
  }
  \midi {
  }
}

%{
\book {
  \bookOutputSuffix "mini"
  #(set! paper-alist (cons '("snippet" . (cons (* 109 mm) (* 137.16 mm))) paper-alist))
  \header {
    piece = "林家謙 - 難道喜歡處女座"
    opus = "Arranged by Benson"
    title = ""
    subtitle = ""
    subsubtitle = ""
    composer = ""
    arranger = ""
  }
  \paper {
    #(set-paper-size "snippet")
    indent = 0
    tagline = ##f
    print-all-headers = ##f
    evenHeaderMarkup = ##f
    oddHeaderMarkup = ##f
    evenFooterMarkup = ##f
    oddFooterMarkup = ##f
    % top-margin = 1\mm
    top-markup-spacing.basic-distance = #1 %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #2 %-dist. from header/title to first system
    top-system-spacing.basic-distance = #0.6 %-dist. from top margin to system in pages with no titles
    system-system-spacing.basic-distance = #1 %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #0.3 %-pads music from copyright block
  }

  \score {
    \new PianoStaff <<
      \new Staff = "right" \with {
        \consists "Span_arpeggio_engraver"
      } { \keepWithTag #'mini \rh }
      \new Dynamics = "dynamics" { \keepWithTag #'mini \dynamics }
      \new Staff = "left" { \keepWithTag #'mini \lh }
    >>
    \layout {
      #(layout-set-staff-size 16)
      \context {
        % add the RemoveEmptyStaffContext that erases rest-only staves
        \Staff \RemoveEmptyStaves
      }
      \context {
        \Score
        % Remove all-rest staves also in the first system
        \override VerticalAxisGroup.remove-first = ##t
      }
      \context {
        \Voice
        % \override Script.stencil = #bold-tenuto-script-stencil
      }
    }
  }
}
%}
