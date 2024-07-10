module Test.Main where

import Prelude

import Effect (Effect)
import Hello (hello)
import Test.Unit (suite, test)
import Test.Unit.Assert as Assert
import Test.Unit.Main (runTest)

main :: Effect Unit
main = do
  runTest do
    suite "Hello Module" do
      test "expects the hello function to return the message 'Hello World!'" do
        Assert.shouldEqual "Hello World!" hello

