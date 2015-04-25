\version "2.18.2"
\header {title = "Frere Jacques Canon" composer = "folk"}
global = {\key f \major  \time 4/4   }
softest = ^\markup {\musicglyph #"scripts.dmarcato"}
verysoft = ^\markup {\musicglyph #"scripts.upedaltoe"}
soft = ^\markup {<}
hard = ^\markup {>}
veryhard = ^\markup {\musicglyph #"scripts.dpedaltoe"}
hardest = ^\markup {\musicglyph #"scripts.umarcato"}
\score {
\new StaffGroup << 
\new Voice \with 
{\remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver"}
<<
{\tempo 4 = 80s1\override TextSpanner.bound-details.left.text = "accel."s1*7\startTextSpan\tempo 4 = 120s1\stopTextSpan\override TextSpanner.bound-details.left.text = "rit."s1*7\startTextSpan\tempo 4 = 80s1\stopTextSpan}
{\set Staff.instrumentName = #"Acoustic Grand Piano" \global \clef treble c'4_\markup{pan 0}-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p c'4-.\soft\p\< d'4-. e'4--\hard\!\f c'4-^\p e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff e'4-.\soft\mp\< f'4-. g'2-_\hard\!\ff g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p g'8-!\hard\f\> a'8-!\hard g'8-! f'8-! e'4-^\soft c'4-^\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p c'4-_\soft\mf\> g4-_\soft c'2--\verysoft\!\p r1 r1 r4. \bar "|."}
>>
\new Voice \with 
{\remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver"}
<<
{\tempo 4 = 80s1\override TextSpanner.bound-details.left.text = "accel."s1*7\startTextSpan\tempo 4 = 120s1\stopTextSpan\override TextSpanner.bound-details.left.text = "rit."s1*7\startTextSpan\tempo 4 = 80s1\stopTextSpan}
{\set Staff.instrumentName = #"Marimba" \global \clef treble r1*2_\markup{pan 31} aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p aes4-.\soft\p\< bes4-. c'4--\hard\!\f aes4-^\p c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff c'4-.\soft\mp\< des'4-. ees'2-_\hard\!\ff ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p ees'8-!\hard\f\> f'8-!\hard ees'8-! des'8-! c'4-^\soft aes4-^\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p aes4-_\soft\mf\> ees4-_\soft aes2--\verysoft\!\p r4. \bar "|."}
>>
\new Voice \with 
{\remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver"}
<<
{\tempo 4 = 80s1\override TextSpanner.bound-details.left.text = "accel."s1*7\startTextSpan\tempo 4 = 120s1\stopTextSpan\override TextSpanner.bound-details.left.text = "rit."s1*7\startTextSpan\tempo 4 = 80s1\stopTextSpan}
{\set Staff.instrumentName = #"Vibraphone" \global \clef treble r1_\markup{pan 62} r1 r4 e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p e''4-.\soft\p\< fis''4-. g''4--\hard\!\f e''4-^\p g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff g''4-.\soft\mp\< a''4-. b''2-_\hard\!\ff b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p b''8-!\hard\f\> c'''8-!\hard b''8-! a''8-! g''4-^\soft e''4-^\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p e''4-_\soft\mf\> b'4-_\soft e''2--\verysoft\!\p r8 \bar "|."}
>>
\new Voice \with 
{\remove "Note_heads_engraver" \consists "Completion_heads_engraver" \remove "Rest_engraver" \consists "Completion_rest_engraver"}
<<
{\tempo 4 = 80s1\override TextSpanner.bound-details.left.text = "accel."s1*7\startTextSpan\tempo 4 = 120s1\stopTextSpan\override TextSpanner.bound-details.left.text = "rit."s1*7\startTextSpan\tempo 4 = 80s1\stopTextSpan}
{\set Staff.instrumentName = #"Acoustic Grand Piano" \global \clef bass r1_\markup{pan 93} r1 r4. d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p d,4-.\soft\p\< e,4-. f,4--\hard\!\f d,4-^\p f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff f,4-.\soft\mp\< g,4-. a,2-_\hard\!\ff a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p a,8-!\hard\f\> bes,8-!\hard a,8-! g,8-! f,4-^\soft d,4-^\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p d,4-_\soft\mf\> a,,4-_\soft d,2--\verysoft\!\p \bar "|."}
>>
>>
\layout { }
\midi { }
}
