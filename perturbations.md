---
title: Rectifiability of metric spaces via arbitrarily small perturbations
author: David Bate
institute: University of Helsinki
theme: metropolis
---

# Rectifiable metric spaces
*   $(X,d)$ metric space.  $S\subset X$ is $n$-rectifiable if there exist countably many Lipschitz (equivalently biLipschitz) $f_i\colon A_i \subset \mathbb R^n \to X$ such that
$$\mathcal H^n(S\setminus \bigcup f_i(A_i))=0.$$
*   $S$ is purely $n$-unrectifiable if every $n$-rectifiable subset of $S$ has $\mathcal H^n$ measure zero.
*   Classically (when $X=\mathbb R^m$), a fundamental description of rectifiable sets is given by the Besicovitch-Federer projection theorem: $\mathcal H^n(S)<\infty$, $S$ purely $n$-unrectifiable $\Rightarrow$ almost every $n$-dimensional orthogonal projection of $S$ has Lebesgue measure zero.

# BF in non-Euclidean settings
*   Metric spaces have no linear structure.  No notion of projection.
*   (Infinite dimensional) Banach spaces: projection = continuous linear $T \colon B \to \mathbb R^n$ (non-zero).
*   "Almost every" projection? Prescribe a collection of null sets.  Standard examples exist in GMT in Banach spaces.
*   De Pauw: There exists a purely 1-unrectifiable $S\subset \ell_2$ with $\mathcal H^1(S)<\infty$ such that $|T(S)|>0$ for a non "Aronszajn" null set of projections.
    -   BF is false in $\ell_2$ for Aronszajn almost every projection.
    -   However, this set of projections **is** "Haar" null.
*   B, Csörnyei, Wilson: In any separable infinite dimensional Banach space, there exists a purely 1-unrectifiable $S$ with $\mathcal H^1(S)<\infty$ such that $|T(S)|>0$ for **every** projection.
    -   BF is completely false in infinite dimensional spaces.

# The metric space setting
*   It is natural to consider Lipschitz mappings of $X$ into an Euclidean space.
*   Let $\operatorname{Lip}(X,\mathbb R^m, L)$ be the set of all $L$-Lipschitz $f\colon X \to \mathbb R^m$ equipped with the supremum norm.
*   This is a complete metric space and so we can consider a typical $L$-Lipschitz function (i.e. residual/comeagre in the sense of Baire category: a set that contains a countable intersection of open dense sets).
*   "A typical $L$-Lipschitz function" is a suitable candidate to replace "almost every projection".

# A new characterisation of rectifiable metric spaces I

\begin{theorem}[B]
  Let $S\subset X$ be purely $n$-unrectifiable with $\mathcal H^n(S)<\infty$ and
  \begin{equation}\liminf_{r\to 0}\frac{\mathcal H^n(B(x,r))}{r^n}>0 \tag{$*$}\end{equation}
  for $\mathcal H^n$-a.e. $x\in S$.

  For any $L\geq 0$ and $m\in\mathbb N$, a typical $f \in \operatorname{Lip}(X,\mathbb R^m,L)$ satisfies
  $$\mathcal H^n(f(S))=0.$$
\end{theorem}

\pause

*   If $S\subset \mathbb R^{m'}$, $(*)$ is not necessary.
*   Using deep results of the structure of Lebesgue null sets announced by Csörnyei-Jones, $(*)$ is never necessary.

# A new characterisation of rectifiable metric spaces II
As with BF, we get a strong converse.
\begin{theorem}[B]
  Let $S\subset X$ be $n$-rectifiable.
  For any $L > 0$ and $m\geq n$, a typical $f \in \operatorname{Lip}(X,\mathbb R^m,L)$ satisfies
  $$\mathcal H^n(f(S))>0.$$
\end{theorem}

\pause

*   This direction is simpler.  Uses Kirchheim's description of rectifiable metric spaces.

# Idea of the proof of the main direction
How to construct a dense set of functions:

*   B, Li: $S$ purely $n$-unrectifiable, $\mathcal H^n(S)<\infty$ + $(*)$ $\Rightarrow$ $S$ has at most $n-1$ "Alberti representations".
*   $\Rightarrow$ for any Lipschitz $f\colon X \to \mathbb R^m$, $\exists$ $n-1$ dimensional "weak tangent field": $V_x \leq \mathbb R^m$ s.t. any rectifiable curve $\gamma \subset X$ has
$$(f\circ \gamma)'(t) \in V_{\gamma(t)} \quad \mathcal H^1\text{-a.e. } t\in \gamma.$$
*   Locally, can squeeze $f$ in all directions orthogonal to $V_x$.
    -   Since there are no curves in these directions, this can be done without perturbing $f$ very much.
    -   This can reduce $\mathcal H^n(f(S))$ to an arbitrarily small value.    
*   Care must be taken to not increase the Lipschitz constant of $f$.

# Other results I
The technique is very general and also obtains the following results:

*   If $\mathcal H^s(S)<\infty$ with $s\not\in \mathbb N$, then the same result is true.
*   Can also perturb distances: If $S$ is compact purely $n$-unrectifiable with $\mathcal H^n(S)<\infty$ + $(*)$, for any $\epsilon>0$ get a $L(n)$-Lipschitz $\sigma \colon S \to \ell_\infty^{m(\epsilon)}$ with
$$|d(x,y)- \|\sigma(x)-\sigma(y)\||<\epsilon \quad \forall x,y\in S$$
and
$$\mathcal H^n(\sigma(S))<\epsilon.$$
*   Have suitable converse.
*   $(*)$ is not necessary under the same conditions as before.

# Other results II

*   If $S$ is a subset of a Banach space $B$ with an _unconditional basis_ ($\ell_1$, $L^p(\mu)$ $1<p<\infty$, $c_0$,\ldots) then $\sigma$ can be chosen to be a genuine perturbation.
*   That is, $\sigma \colon B \to B$ $L(n,B)$-Lipschitz with
$$\|x - \sigma(x)\|<\epsilon \quad \forall x\in S$$
and
$$\mathcal H^n(\sigma(S))<\epsilon.$$
*   Generalises a result of Pugh who proved this for Ahlfors regular subsets of Euclidean space.
