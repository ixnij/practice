This is a very simple file.

Nothing special.

> type ID = Int
> type IR = Integer

I'll try another form, latex-style ?

\begin{code}
data Pain = PainEr { detail :: String, time :: Integer }
\end{code}

I'll instance the data Pain as Eq.

\begin{code}
instance Eq Pain where
  a (==) b = (detail a == detail b) && (time a == time b)
  a (/=) b = not $ a == b
\end{code}

Another example, I'll make my own typeclass.

> class Sample where
> (>-) :: (Functor a, Num b) => (a -> b) -> c
> (<->) :: (Functor a, Num b) => f a -> f b -> a -> b -> (a, b)

That's it.

I'll try another way.

> fst' (a, b) = a
> snd' (a, b) = b

I can make two another similar functions by using the function from
prelude which named curry.

> let fst'' = curry fst'
>     snd'' = curry snd'

Now, we can see that fst'' == fst,
and snd'' == snd.

That's all. The language is not english, because there must be so many
mistakes in grammar.

And by the way, the syntax has mistakes either.
