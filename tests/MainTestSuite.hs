
module Main (
    main
  ) where

import Canon.UtilsTest
import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
  testGroup "Example"
  [
  -- canons
    testCase           "simple canon"                      testSimpleCanon
  , testCase           "scales canon"                      testScalesCanon
  , testCase           "canon"                             testCanon
  ]


