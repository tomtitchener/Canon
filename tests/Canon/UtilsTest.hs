
module Canon.UtilsTest where

import           Canon.Data
import           Canon.Utils
import qualified Data.ByteString.Lazy as LazyByteString
import           Data.Ratio
import           Data.Either.Combinators (fromRight')
import qualified Data.Set as Set
import           Music.RealSimpleMusic
import           Test.HUnit

-- Frere Jacques

mIxC, mIxD, mIxE, mIxF, mIxG, mIxA, lIxG :: IndexedPitch
mIxC = IndexedPitch 0 0
mIxD = IndexedPitch 1 0
mIxE = IndexedPitch 2 0
mIxF = IndexedPitch 3 0
mIxG = IndexedPitch 4 0
mIxA = IndexedPitch 5 0
lIxG = IndexedPitch 4 (-1)
ixPt1, ixPt2, ixPt3, ixPt4, fjIndexedPitches :: [IndexedPitch]
ixPt1 = [mIxC, mIxD, mIxE, mIxC]
ixPt2 = [mIxE, mIxF, mIxG]
ixPt3 = [mIxG, mIxA, mIxG, mIxF, mIxE, mIxC]
ixPt4 = [mIxC, lIxG, mIxC]
fjIndexedPitches = ixPt1 ++ ixPt1 ++ ixPt2 ++ ixPt2 ++ ixPt3 ++ ixPt3 ++ ixPt4 ++ ixPt4

accentsPt1, accentsPt2, accentsPt3, accentsPt4, fjAccents :: [VoiceControl]
accentsPt1 = [AccentControl Soft,AccentControl Normal,AccentControl Hard,AccentControl Normal]
accentsPt2 = [AccentControl Soft,AccentControl Normal,AccentControl Hard]
accentsPt3 = [AccentControl Hard,AccentControl Hard,AccentControl Normal,AccentControl Normal,AccentControl Soft,AccentControl VerySoft]
accentsPt4 = [AccentControl Soft,AccentControl Soft,AccentControl VerySoft]
fjAccents = accentsPt1 ++ accentsPt1 ++ accentsPt2 ++ accentsPt2 ++ accentsPt3 ++ accentsPt3 ++ accentsPt4 ++ accentsPt4
fjAccentsSets :: [Set.Set VoiceControl]
fjAccentsSets = map Set.singleton fjAccents

dynamicssPt1, dynamicssPt2, dynamicssPt3, dynamicssPt4, fjDynamicss :: [[DiscreteDynamicValue]]
dynamicssPt1 = [[Piano, Crescendo], [], [Forte], [Piano]]
dynamicssPt2 = [[MezzoPiano, Crescendo], [], [Fortissimo]]
dynamicssPt3 = [[Forte, Decrescendo], [], [], [], [], [Piano]]
dynamicssPt4 = [[MezzoForte, Decrescendo], [], [Piano]]
fjDynamicss  = dynamicssPt1 ++ dynamicssPt1 ++ dynamicssPt2 ++ dynamicssPt2 ++ dynamicssPt3 ++ dynamicssPt3 ++ dynamicssPt4 ++ dynamicssPt4
fjDynamicss' :: [[VoiceControl]]
fjDynamicss' = (map . map) (DynamicControl . DiscreteDynamic) fjDynamicss
fjDynamicsSets :: [Set.Set VoiceControl]
fjDynamicsSets = map Set.fromList fjDynamicss'

dynamicssPt1', dynamicssPt2', dynamicssPt3', dynamicssPt4', fjDynamicss'' :: [[Dynamic]]
dynamicssPt1' = [[DiscreteDynamic Piano, DiscreteDynamic Crescendo],[],[DiscreteDynamic Forte], [DiscreteDynamic Piano]]
dynamicssPt2' = [[DiscreteDynamic MezzoPiano, DiscreteDynamic Crescendo],[],[DiscreteDynamic Fortissimo]]
dynamicssPt3' = [[DiscreteDynamic Forte, DiscreteDynamic Decrescendo],[],[],[],[],[DiscreteDynamic Piano]]
dynamicssPt4' = [[DiscreteDynamic MezzoForte, DiscreteDynamic Decrescendo],[],[DiscreteDynamic Piano]]
fjDynamicss'' = dynamicssPt1' ++ dynamicssPt1' ++ dynamicssPt2' ++ dynamicssPt2' ++ dynamicssPt3' ++ dynamicssPt3' ++ dynamicssPt4' ++ dynamicssPt4'
fjDynamicss''' :: [[VoiceControl]]
fjDynamicss''' = (map . map) DynamicControl fjDynamicss''
fjDynamicsSets' :: [Set.Set VoiceControl]
fjDynamicsSets' = map Set.fromList fjDynamicss'''

articulationsPt1, articulationsPt2, articulationsPt3, articulationsPt4, fjArticulations :: [VoiceControl]
articulationsPt1 = [ArticulationControl Staccato,ArticulationControl Staccato,ArticulationControl Tenuto,ArticulationControl Marcato]
articulationsPt2 = [ArticulationControl Staccato,ArticulationControl Staccato,ArticulationControl Portato]
articulationsPt3 = [ArticulationControl Staccatissimo,ArticulationControl Staccatissimo,ArticulationControl Staccatissimo,ArticulationControl Staccatissimo,ArticulationControl Marcato,ArticulationControl Marcato]
articulationsPt4 = [ArticulationControl Portato,ArticulationControl Portato,ArticulationControl Tenuto]
fjArticulations = articulationsPt1 ++ articulationsPt1 ++ articulationsPt2 ++ articulationsPt2 ++ articulationsPt3 ++ articulationsPt3 ++ articulationsPt4 ++ articulationsPt4
fjArticulationsSets :: [Set.Set VoiceControl]
fjArticulationsSets = map Set.singleton fjArticulations

-- Combine fjAccents and fjArticulations into fjControls which is list of Set.Set composed of two controls each.
fjControls :: [Set.Set VoiceControl]
fjControls = zipWith3 (\accents dynamics articulations -> Set.unions [accents, dynamics, articulations]) fjAccentsSets fjDynamicsSets' fjArticulationsSets

-- Want a list of sets, where each set is per note
fjIxNotes :: [IndexedNote]
fjIxNotes = zipWith3 IndexedNote fjIndexedPitches fjRhythms fjControls

eig, qtr, hlf :: Rhythm
eig = mkRhythm' (1%8)
qtr = mkRhythm' (1%4)
hlf = mkRhythm' (1%2)
rh1, rh2, rh3, fjRhythms :: [Rhythm]
rh1 = [qtr, qtr, qtr, qtr]
rh2 = [qtr, qtr, hlf]
rh3 = [eig, eig, eig, eig, qtr, qtr]
fjRhythms = rh1 ++ rh1 ++ rh2 ++ rh2 ++ rh3 ++ rh3 ++ rh2 ++ rh2 -- 32%4 or 8%1

piano, marimba, vibes :: Instrument
piano = Instrument "Acoustic Grand Piano"
marimba = Instrument "Marimba"
vibes = Instrument "Vibraphone"

cMaj, afMaj, eMaj, fMaj, gMaj, dMaj, aMaj, cMin, afMin, eMin, dMin :: Scale
cMaj  = fromRight' $ majorScale C
afMaj = fromRight' $ majorScale Af
eMaj  = fromRight' $ majorScale E
fMaj  = fromRight' $ majorScale F
gMaj  = fromRight' $ majorScale G
dMaj  = fromRight' $ majorScale D
aMaj  = fromRight' $ majorScale A
dMin  = fromRight' $ naturalMinorScale D
eMin  = fromRight' $ naturalMinorScale E
cMin  = fromRight' $ naturalMinorScale C
afMin = fromRight' $ naturalMinorScale Af

keySignature :: KeySignature
keySignature = KeySignature (-1) -- F Major, one flat.

timeSignature :: TimeSignature
timeSignature = TimeSignature 4 4

slowTempo :: Tempo
slowTempo = Tempo (TempoVal Quarter 80)

fastTempo :: Tempo
fastTempo = Tempo (TempoVal Quarter 120)

oneMeasure :: Rhythm
oneMeasure = mkRhythm' (1%1)

fjRhythmTotal :: Rhythm
fjRhythmTotal = mkRhythm' $ sum (map getRhythm fjRhythms) - getRhythm oneMeasure

tempos :: [(Tempo,Rhythm)]
tempos = [(slowTempo,oneMeasure),(Accelerando,fjRhythmTotal),(fastTempo,oneMeasure),(Ritardando,fjRhythmTotal),(slowTempo,oneMeasure)]

-- Simple Canon
createFJSimpleCanon :: String -> Int -> Rational -> SimpleCanon
createFJSimpleCanon instrName voices dur =
  SimpleCanon title keySignature timeSignature tempos ixNotes cMaj distance instr voices repetitions  
  where
    title = "Frere Jacques Simple"
    ixNotes = fjIxNotes
    instr = Instrument instrName
    distance = mkRhythm' dur
    repetitions = 5

writeFJSimpleCanon :: (Score -> a) -> String -> Int -> Rational -> a
writeFJSimpleCanon scoreWriter instrName voices dur =
  scoreWriter score
  where
    simpleCanon = createFJSimpleCanon instrName voices dur
    score       = simpleCanonToScore simpleCanon

-- | Generate test data for simple canon
--   writeFJSimpleCanonToFile "Acoustic Grand Piano" 4 (2%1)
writeFJSimpleCanonToFile :: String -> Int -> Rational -> IO ()
writeFJSimpleCanonToFile = writeFJSimpleCanon scoreToMidiFile
    
writeFJSimpleCanonToByteString :: String -> Int -> Rational -> LazyByteString.ByteString
writeFJSimpleCanonToByteString = writeFJSimpleCanon scoreToByteString

testSimpleCanon :: Assertion
testSimpleCanon =
  do
    referenceFileSimpleCanonByteString <- LazyByteString.readFile "./tests/data/Frere Jacques Simple.mid"
    referenceFileSimpleCanonByteString @=? generatedSimpleCanonByteString
  where
    generatedSimpleCanonByteString = writeFJSimpleCanonToByteString "Acoustic Grand Piano" 4 (2%1)

-- Scales Canon
createFJScalesCanon :: [Instrument] -> [Scale] -> [Octave] -> Rational -> ScalesCanon
createFJScalesCanon instruments scales octaves dur =
  ScalesCanon title keySignature timeSignature tempos ixNotes scales distance octaves instruments repetitions  
  where
    title = "Frere Jacques Scales"
    ixNotes = fjIxNotes
    distance = mkRhythm' dur
    repetitions = 5

writeFJScalesCanon :: (Score -> a) -> [Instrument] -> [Scale] -> [Int] -> Rational -> a
writeFJScalesCanon scoreWriter instruments scales octaveInts dur =
  scoreWriter score
  where
    octaves     = map Octave octaveInts
    scalesCanon = createFJScalesCanon instruments scales octaves dur
    score       = scalesCanonToScore scalesCanon
    
-- | Generate test data for scales canon
--   writeFJScalesCanonToFile [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] (2%1)
writeFJScalesCanonToFile :: [Instrument] -> [Scale] -> [Int] -> Rational -> IO ()
writeFJScalesCanonToFile = writeFJScalesCanon scoreToMidiFile

writeFJScalesCanonToByteString :: [Instrument] -> [Scale] -> [Int] -> Rational -> LazyByteString.ByteString
writeFJScalesCanonToByteString = writeFJScalesCanon scoreToByteString
  
testScalesCanon :: Assertion
testScalesCanon =
  do
    referenceFileScalesCanonByteString <- LazyByteString.readFile "./tests/data/Frere Jacques Scales.mid"
    referenceFileScalesCanonByteString @=? generatedScalesCanonByteString
  where
    generatedScalesCanonByteString = writeFJScalesCanonToByteString [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] (2%1)

-- Canon
createFJCanon :: [Instrument] -> [Scale] -> [Octave] -> [Rational] -> Canon
createFJCanon instruments scales octaves durs =
  Canon title keySignature timeSignature tempos ixNotess scales distances octaves instruments repetitions  
  where
    title = "Frere Jacques Canon"
    ixNotess = replicate (length instruments) fjIxNotes
    distances = map mkRhythm' durs
    repetitions = 5

writeFJCanon :: (Score -> a) -> [Instrument] -> [Scale] -> [Int] -> [Rational] -> a
writeFJCanon scoreWriter instruments scales octaveInts durs =
  scoreWriter score
  where
    octaves = map Octave octaveInts
    canon   = createFJCanon instruments scales octaves durs
    score   = canonToScore canon

-- | Generate test data for canon
--   writeFJCanonToFile [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] [2%1, 1%4, 1%8]
writeFJCanonToFile :: [Instrument] -> [Scale] -> [Int] -> [Rational] -> IO ()
writeFJCanonToFile = writeFJCanon scoreToMidiFile
    
writeFJCanonToByteString :: [Instrument] -> [Scale] -> [Int] -> [Rational] -> LazyByteString.ByteString
writeFJCanonToByteString = writeFJCanon scoreToByteString

testCanon :: Assertion
testCanon =
  do
    referenceFileCanonByteString <- LazyByteString.readFile "./tests/data/Frere Jacques Canon.mid"
    referenceFileCanonByteString @=? generatedCanonByteString
  where
    generatedCanonByteString = writeFJCanonToByteString [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] [2%1, 1%4, 1%8]

{--
writeFJSimpleCanonToFile "Acoustic Grand Piano" 4 (2%1)
writeFJScalesCanonToFile [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] (2%1)
writeFJCanonToFile [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] [2%1, 1%4, 1%8]
scoreToLilypondFile $ simpleCanonToScore $ createFJSimpleCanon "Acoustic Grand Piano" 4 (2%1)
scoreToLilypondFile $ scalesCanonToScore $ createFJScalesCanon [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] (2%1)
scoreToLilypondFile $ canonToScore $ createFJCanon [piano, marimba, vibes, piano] [cMaj, afMaj, eMin, dMin] [0, -1, 1, -2] [2%1, 1%4, 1%8]
--}
