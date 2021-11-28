module PointFree where

import Control.Semigroupoid as S

--| `\f g x -> f (g x)`
infixl 9 S.compose as <.

infixr 9 S.composeFlipped as .>

--| `\f g x y -> f (g x y)`
compose2 :: ∀ a b x y. (a -> b) -> (x -> y -> a) -> x -> y -> b
compose2 f g x y = f (g x y)

infixl 9 compose2 as <..

compose2Flipped :: ∀ a b x y. (x -> y -> a) -> (a -> b) -> x -> y -> b
compose2Flipped f g x y = g (f x y)

infixr 9 compose2Flipped as ..>

--| `\f g x y z -> f (g x y z)`
compose3 :: ∀ a b x y z. (a -> b) -> (x -> y -> z -> a) -> x -> y -> z -> b
compose3 f g x y z = f (g x y z)

infixl 9 compose3 as <...

compose3Flipped :: ∀ a b x y z. (x -> y -> z -> a) -> (a -> b) -> x -> y -> z -> b
compose3Flipped f g x y z = g (f x y z)

infixr 9 compose3Flipped as ...>

--| `\f g w x y z -> f (g w x y z)`
compose4 :: ∀ a b w x y z. (a -> b) -> (w -> x -> y -> z -> a) -> w -> x -> y -> z -> b
compose4 f g w x y z = f (g w x y z)

infixl 9 compose4 as <....

compose4Flipped :: ∀ a b w x y z. (w -> x -> y -> z -> a) -> (a -> b) -> w -> x -> y -> z -> b
compose4Flipped f g w x y z = g (f w x y z)

infixr 9 compose4Flipped as ....>

--| `\f g x y -> f x (g y)`
composeSecond :: ∀ a b x y. (x -> b -> a) -> (y -> b) -> x -> y -> a
composeSecond f g x y = f x (g y)

infixl 9 composeSecond as <~.

composeSecondFlipped :: ∀ a b x y. (y -> b) -> (x -> b -> a) -> x -> y -> a
composeSecondFlipped f g x y = g x (f y)

infixr 9 composeSecondFlipped as ~.>

--| `\f g x y z -> f x y (g z)`
composeThird :: ∀ a b x y z. (x -> y -> b -> a) -> (z -> b) -> x -> y -> z -> a
composeThird f g x y z = f x y (g z)

infixl 9 composeThird as <~~.

composeThirdFlipped :: ∀ a b x y z. (z -> b) -> (x -> y -> b -> a) -> x -> y -> z -> a
composeThirdFlipped f g x y z = g x y (f z)

infixr 9 composeThirdFlipped as ~~.>

--| `\f g w x y z -> f w x y (g z)`
composeFourth :: ∀ a b w x y z. (w -> x -> y -> b -> a) -> (z -> b) -> w -> x -> y -> z -> a
composeFourth f g w x y z = f w x y (g z)

infixl 9 composeFourth as <~~~.

composeFourthFlipped :: ∀ a b w x y z. (z -> b) -> (w -> x -> y -> b -> a) -> w -> x -> y -> z -> a
composeFourthFlipped f g w x y z = g w x y (f z)

infixr 9 composeFourthFlipped as ~~~.>

--| `\f g x y z -> f x (g y z)`
compose2Second :: ∀ a b x y z. (x -> b -> a) -> (y -> z -> b) -> x -> y -> z -> a
compose2Second f g x y z = f x (g y z)

infixl 9 compose2Second as <~..

compose2SecondFlipped :: ∀ a b x y z. (y -> z -> b) -> (x -> b -> a) -> x -> y -> z -> a
compose2SecondFlipped f g x y z = g x (f y z)

infixr 9 compose2SecondFlipped as ~..>

--| `\f g w x y z -> f w x (g y z)`
compose2Third :: ∀ a b w x y z. (w -> x -> b -> a) -> (y -> z -> b) -> w -> x -> y -> z -> a
compose2Third f g w x y z = f w x (g y z)

infixl 9 compose2Third as <~~..

compose2ThirdFlipped :: ∀ a b w x y z. (y -> z -> b) -> (w -> x -> b -> a) -> w -> x -> y -> z -> a
compose2ThirdFlipped f g w x y z = g w x (f y z)

infixr 9 compose2ThirdFlipped as ~~..>

--| `\f g w x y z -> f w (g x y z)`
compose3Second :: ∀ a b w x y z. (w -> b -> a) -> (x -> y -> z -> b) -> w -> x -> y -> z -> a
compose3Second f g w x y z = f w (g x y z)

infixl 9 compose3Second as <~...

compose3SecondFlipped :: ∀ a b w x y z. (x -> y -> z -> b) -> (w -> b -> a) -> w -> x -> y -> z -> a
compose3SecondFlipped f g w x y z = g w (f x y z)

infixl 9 compose3SecondFlipped as ~...>

--| `\f x y -> f y x`
--|
--| (`flip`)
applySecond :: ∀ x y a. (y -> x -> a) -> x -> y -> a
applySecond f x y = f y x

infixl 8 applySecond as ~$

applySecondFlipped :: ∀ x y a. x -> (y -> x -> a) -> y -> a
applySecondFlipped x f y = f y x

infixr 8 applySecondFlipped as #~

--| `\f x y z -> f y z x`
applyThird :: ∀ x y z a. (y -> z -> x -> a) -> x -> y -> z -> a
applyThird f x y z = f y z x

infixl 8 applyThird as ~~$

applyThirdFlipped :: ∀ x y z a. x -> (y -> z -> x -> a) -> y -> z -> a
applyThirdFlipped x f y z = f y z x

infixr 8 applyThirdFlipped as #~~

--| `\f w x y z -> f x y z w`
applyFourth :: ∀ w x y z a. (x -> y -> z -> w -> a) -> w -> x -> y -> z -> a
applyFourth f w x y z = f x y z w

infixl 8 applyFourth as ~~~$

applyFourthFlipped :: ∀ w x y z a. w -> (x -> y -> z -> w -> a) -> x -> y -> z -> a
applyFourthFlipped w f x y z = f x y z w

infixr 8 applyFourthFlipped as #~~~
