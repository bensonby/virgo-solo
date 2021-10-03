cr = \change Staff = "right"
cl = \change Staff = "left"

% This mark needs to be used with \set fingeringOrientations = #'(left)

rhMarkA = \markup {
  \path #0.1 #'((moveto -1 3)(rlineto 0 -2.5)(rlineto 0.5 0)(moveto 0 -1))
}
rhMarkB = \markup {
  \path #0.1 #'((moveto -1 3)(rlineto 0 -2.5)(rlineto 0.5 0)(moveto 0 -2))
}
lhMark = \markup { 
  \path #0.1 #'((moveto 0 1)(rlineto -0.5 0)(rlineto 0 -1.5))
}

rit = \markup { \italic "rit." }
pCresc = \markup \concat { \dynamic "p" \italic \larger "  cresc." }
mpStaccato = \markup \whiteout { \concat { \dynamic "mp" \italic " sempre staccato" } }
sempreStaccato = \markup { \italic "sempre staccato" }
mpDreamLike = \markup \concat { \dynamic "mp" \italic " dream-like" }

shpSlurA = \shape #'((0 . -0.3) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
shpSlurB = \shape #'((0 . -1) (0 . -0.7) (0 . -0.4) (-0.1 . -0.2)) PhrasingSlur
shpSlurC = \shape #'((0 . 0) (0 . 0.5) (0 . 0.2) (0 . 0)) PhrasingSlur
hairpinA = \once \override Hairpin.Y-offset = #1
dynamicShiftA = \once \override DynamicText.Y-offset = #-3
dynamicShiftB = \once \override DynamicText.Y-offset = #-1.8
dynamicShiftC = \once \override DynamicText.Y-offset = #0
dynamicShiftD = {
  \once \override DynamicText.Y-offset = #-0.02
  \once \override DynamicText.X-offset = #-0.7
}
dynamicShiftE = \once \override DynamicText.X-offset = #0.06
textScriptShiftA = \once \override TextScript.extra-offset = #'(-0.7 . 0.6)
scriptShiftA = \once \override Script.padding = #0.3
scriptShiftB = \once \override Script.padding = #0.4
metronomePaddingA = \once \override Score.MetronomeMark.padding = #4
metronomePaddingB = \once \override Score.MetronomeMark.padding = #2

suppressAccidental = \once \override Accidental #'stencil = ##f

pedalBracket = \set Staff.pedalSustainStyle = #'bracket
son = \sustainOn
soff = \sustainOff
