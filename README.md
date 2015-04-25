
### Simple Canons rendered to Midi and Score using RealSimpleMusic music and Lilypond ###

Folder hierarchy:

    ./ + -- project root, run: cabal configure --enable-tests,
            cabal build, cabal test, cabal haddock
       ./src + -- source files
             Canon.hs -- module definition for canon types and conversion
                         functions
             ./Canon +
                     Data.hs -- Canon types
                     Utils.hs -- Functions to convert Canon types to Score
       ./tests + -- test files
               MainTestSuite.hs -- tests for Music, ScoreToMidi, and Canon
                                   functions
               ./Canon +
                       UtilsTest.hs -- HUnit tests for Canon functions
               ./data
                       Frere Jacques Simple.ly   -- simple canon Lilypond 
                       Frere Jacques Simple.mid  -- simple canon reference 
                       Frere Jacques Simple.pdf  -- simple canon Score
                       Frere Jacques Scales.ly   -- scales canon Lilypond
                       Frere Jacques Scales.mid  -- scales canon reference 
                       Frere Jacques Scales.pdf  -- scales canon score
                       Frere Jacques Canon.ly    -- canon Lilypond
                       Frere Jacques Canon.mid   -- canon reference  
                       Frere Jacques Canon.pdf   -- canon score
					   
#### Data

The file `./src/Canon/Data.hs` contains three `Canon` data types in
increasing abstraction:

* `SimpleCanon` 
* `ScalesCanon`
* `Canon`

#### Utilities

The file `./src/Canon/Utils.hs` contains functions to convert the
three `Canon` types into the [`RealSimpleMusic`](//github.com/tomtitchener/RealSimpleMusic.git)  `Score` type:

* `simpleCanonToScore`
* `scalesCanonToScore`
* `canonToScore`

Use the `Score` type as input to the `RealSimplemusic` conversion
functions `scoreToMidiFile` and `scoreToLilypondFile`.  For examples,
see the file `tests/Canon/UtilsTests.hs`.

#### Example

See the file `tests/Canon/UtilsTest.hs` for examples showing the use
of simple types, score, and conversion routines.  

For more complete examples, see `./src/Canon/Canon.hs`, the
implemetation files `Data.hs` and `Utils.hs` in `./src/Canon/Canon/`
and the test files in `./src/tests/Canon/UtilsTest.hs`.

For program examples generally, see the files in `./tests`, including

* `MainTestSuite.hs` - test driver
* `Canon/UtilsTest.hs` - test `Canon.hs` types and methods
* `data/Frere Jacques ...*` - midi, Lilypond, and PDF score files rendered using Lilypond.
