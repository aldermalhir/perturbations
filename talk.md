---
title: Purely unrectifiable metric spaces and perturbations of Lipschitz functions
author: David Bate
---

# Rectifiability and the Besicovitch-Federer projection theorem

Throughout this talk, $(X,d)$ will denote a complete metric space.

We will be interested in structure theorems for rectifiable subsets of metric spaces.

::: definition
For $n \in \N$ a $\Hn$ measurable set $E \subset X$ is *$n$ rectifiable* if there exist countable $A_i \subset \R^n$ and Lipschitz $f_i \colon A_i \to X$ such that
$$\Hn \left( E \setminus \cup_i f_i(A_i) \right) =0.$$

A $\Hn$ measurable $S\subset E$ is *purely $n$ unrectifiable* if every $n$ rectifiable $E\subset S$ has $\Hn(E)=0$.
:::

- If $Y \subset X$ is $\Hn$ measurable with $\Hn(Y)< \infty$, then by the usual argument, it can be decomposed into a rectifiable and a purely unrectifiable piece.
- Since $X$ is complete, an equivalent definition is given by requiring the $A_i$ to be compact.
- If $X$ is a Banach space, an equivalent definition is given by requiring each $A_i = \R^n$.

In classical geometric measure theory, a fundamental result is given by the Besicovitch-Federer projection theorem.

::: theorem
Let $S\subset \R^k$ be purely $n$-unrectifiable with $\Hn(S)<\infty$.  Then for almost every $n$ plane $V$, the orthogonal projection $\pi$ onto $V$ satisfies $\mathcal L^n(\pi(S))=0$.

Conversely, if $E\subset \R^k$ is $n$ rectifiable, then $\mathcal L^n(\pi(S))>0$ for almost every $V$.
:::

It is natural to ask if a counterpart to the Besicovitch-Federer projection theorem holds in non-Euclidean settings.  Unfortunately, it is not.

::: theorem
For any separable infinite dimensional Banach space $X$ there exists a $S\subset X$ with $\Ho(S)<\infty$ that is purely 1-unrectifiable such that $\mathcal L^1(S)>0$ for every continuous linear $0\neq T \colon X \to \R$.
:::

# Non-linear, Lipschitz, projections

The previous theorem demonstrates that linear projections are not sufficient to determine rectifiability outside of finite dimensional spaces.  Moreover, from the metric point of view, considering *Lipschitz* images to Euclidean spaces is more natural.

::: definition
Let $\Lipo(X,\R^m)$ be the collection of all bounded 1-Lipschitz $f\colon X \to \R^m$ equipped with the supremum norm.
:::

$\Lipo$ is a complete metric space and so we may consider *residual* subsets.  That is, subsets that contain a countable intersection of open dense sets.  By the Baire category theorem, residual subsets are dense.  Being closed under countable intersections and supersets, the elements of a residual sets form a good notion of a "typical" Lipschitz function.

Thus we can ask if the counterpart to the Besicovitch-Federer projection theorem holds for typical Lipschitz functions.  It does.

::: theorem
Let $S\subset X$ be purely $n$ unrectifiable with $\Hn(S)<\infty$.  Suppose also that
$$\liminf_{r\to 0} \frac{\Hn(B(x,r) \cap S)}{r^n} >0 \quad \Hn \text{-a.e. }x\in S \quad (*).$$
Then for any $m\in \N$, a typical $f\in \Lipo(X,\R^m)$ satisfies $\Hn(f(S))=0$.

Conversely, if $E\subset X$ is $n$ rectifiable, then a typical $f\in \Lipo(X,\R^m)$ satisfies $\Hn(f(E))>0$.
:::

The condition $(*)$ can be removed if:

- If $n=1$, or more generally, if $S$ is purely 1-unrectifiable;
- If $X= \R^k$.
- By using an announced result of Csörnyei-Jones.

Further, a typical Lipschitz function reduces a set of finite $\Ha$ measure to a set of $\Ha$ measure zero.

The theorem and these modifications all follow from the same general principle:

1. First we show that the various hypotheses all imply that $S$ has an $n-1$ dimensional *weak tangent field*.
2. Given a 1-Lipschitz function $f$ we use the weak tangent field to produce an arbitrarily small perturbation $\sigma$ of $f$ (that is also 1-Lipschitz) that maps $S$ to a set of arbitrarily small $\Hn$ measure.

Before getting into the definition of a weak tangent field, we mention that is also possible to consider non-Euclidean targets.

When considering Lipschitz images of metric spaces, and in particular arbitrarily small perturbations of such functions, it is also natural to consider images into $\ell_\infty^m$.  Indeed, if $X$ is compact and, for $\epsilon>0$, $x_1,\ldots,x_m(\epsilon)$ is an $\epsilon$ net of $X$, the map
$$f(x) = (d(x,x_1), \ldots, d(x,x_m)) \in \ell_\infty^m$$
is 1-Lipschitz and satisfies
$$|d(x,y) - \|f(x)-f(y)\|_\infty|<\epsilon \quad \forall x,y \in X.$$
If $\sigma$ is a perturbation of $f$ as above, then $\sigma$ also perturbs distances in $X$ by an arbitrarily small amount **and** maps $X$ onto an arbitrarily small set.

If this is done naively (simply using the equivalence of norms in $\R^m$), then the Lipschitz constant of $\sigma$ will be very large and depend on $\epsilon$.  If however, we consider the target norm when constructing the perturbation, it is possible to control the Lipschitz constant.

::: theorem
Let $X$ be compact, purely $n$ unrectifiable with $\Hn(S)<\infty$ satisfy $(*)$.  For any $\epsilon>0$ there exists a $L(n)$-Lipschitz $\sigma \colon X \to \ell_\infty^{m(\epsilon)}$ such that
$$|d(x,y) - \|\sigma(x)-\sigma(y)\|_\infty|<\epsilon \quad \forall x,y \in X \quad (**)$$
and $\Hn(\sigma(X))<\epsilon$.

Conversely, if $X$ is $n$ rectifiable,
$$\inf_{L\geq 1} \liminf_{\epsilon \to 0} \Hn(\sigma(X)) >0$$
where the liminf is taken over all $L$-Lipschitz $\sigma \colon X \to \ell_\infty$ that satisfy $(**)$.
:::

- Note that the fact that the Lipschitz constant is independent of $\epsilon$ is crucial for the converse statement.
- The condition $(*)$ can be removed under the same conditions as before and we also have a corresponding statement for $\Ha$.

# Weak tangent fields

We must consider the behaviour of *curve fragments* in the space.

::: definition
Let $\Gamma$ be the collection of biLipschitz $\gamma \colon \dom \gamma \to X$ with $\dom\gamma$ compact.
:::

Note that we consider possibly disconnected subsets to avoid topological obstacles in $X$.

In Euclidean space, it is natural to classify curves by their tangents.  In the metric setting we cannot do this.  Instead we apply a Lipschitz function that maps $X$ into Euclidean space, and then consider tangents in the image.

First we consider a notion of a metric space having a rich collection of curve fragments.

::: definition
Fix $f\colon X \to \R^m$ Lipschitz and a (one sided) cone $C\subset \R^m$.

A $\gamma\in \Gamma$ is a $C$-curve if
$$(f\circ\gamma)'(t) \in C\setminus \{0\} \quad \Ho \text{-a.e. } t.$$

Fix a measure $\mu$ on $X$.  An *Alberti representation* of $\mu$ consists of a probability measure $\bP$ on $\Gamma$ and for each $\gamma\in\Gamma$ a measure $\mu_\gamma \ll \Ho|_\gamma$ such that
$$\mu = \int_\Gamma \mu_\gamma d\bP(\gamma).$$
An Alberti representation is a *$C$ Alberti representation* if $\bP$-a.e. $\gamma$ is a $C$-curve.
Finally, Alberti representations $\cA_1,\ldots,\cA_n$ are *independent* if there exists linearly independent cones $C_1,\ldots,C_n$ such that $\cA_i$ is a $C_i$ Alberti representation.
:::

Measures with $d$ independent Alberti representations have a $d$ dimensional family of curves.  We need a counter part for a limited family of curves.

::: definition
Fix $f\colon X \to \R^m$ Lipschitz, $S\subset X$ and $n \in \N$. A *$d$-dimensional weak tangent field* to $S$ is a Borel $\tau \colon S \to G(n,m)$ such that, for every $\gamma\in \Gamma$,
$$(f \circ\gamma)'(t) \in \tau(\gamma(t)) \quad \Ho \text{-a.e. } t.$$
:::

We have a natural decomposition result.

::: proposition
Let $\mu$ be a measure on $S\subset X$, $f\colon X \to \R^m$ Lipschitz and $0< n \leq m$.  There exists a decomposition
$$S = S' \cup \bigcup_{i\in\N} A_i$$
such that $S'$ has a $n-1$ dimensional weak tangent field and each $\mu|_{A_i}$ has $n$-independent Alberti representations.
:::

Apply this to $S$ as in the main theorem and $\mu = \Hn$.  The key point is that, by using the various hypotheses it is possible to deduce that each $A_i$ is in fact $n$ rectifiable:

- If we assume $(*)$ then this follows by Bate-Li.
- If $S$ is purely 1-unrectifiable, then this is immediate.
- If $X=\R^k$, this follows by combining the work of De Philippis-Rinder and the Besicovitch-Federer projection theorem.
- Assuming an announcement of Csörnyei-Jones, we can deduce this in full generality (Bate-Orponen).

Since $S$ is assumed to be purely unrectifiable, we may deduce that $\Hn(A_i)=0$ for each $i\in\N$:

That is, we reduce the proof of the main theorems to showing that we can arbitrarily reduce the measure of a set of finite $\Hn$ measure with a $n-1$ dimensional weak tangent field.

- The idea is to locally squeeze the set in the directions orthogonal to the weak tangent field.
- It is clear that the existence of curves orthogonal to the tangent field prevent this being an arbitrarily small perturbation of the original function.
- The proof shows that it is sufficient to have no such curves.
