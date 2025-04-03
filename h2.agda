-- h2.agda

{-# OPTIONS --guardedness #-}

module h2 where

open import IO

main : Main
main = run (putStrLn "Hello, World!")
