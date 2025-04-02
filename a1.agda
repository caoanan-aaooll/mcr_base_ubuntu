-- a1.agda

{-# OPTIONS --without-K --safe #-}

-- open import general-notation
open import Data.Nat hiding (_+_)

record one : Set where



-- Example usage: define a function that adds two natural numbers
_+_ : ℕ → ℕ → ℕ
zero + n = n
suc m + n = suc (m + n)