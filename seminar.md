# Background and main theorems

## Rectifiable subsets of metric spaces
::: .definition #def:rectifiable
$(X,d)$ metric space (complete), $S\subset X$ $\mathcal H^n$ measurable is
*$n$-rectifiable* if there exist (compact) $A_i \subset \mathbb R^n$
and Lipschitz $f_i \colon A_i \to S$ such that
$$\mathcal H^n \left(S \setminus \bigcup_i f_i(A_i) \right) = 0.$$

$S$ is *purely $n$-unrectifiable* if all $n$-rectifiable subsets have
$\Hn$-measure zero.
:::

As in the classical case, a set of finite Hausdorff measure can be
decomposed into a rectifiable and a purely unrectifiable piece.

## Besicovitch-Federer projection theorem

::: .theorem thm:besicovitch-federer
$S \subset \mathbb R^m$, $\mathcal H^n(S) < \infty$ and $S$ purely
$n$-unrectifiable.  Almost every $n$-dimensional orthogonal projection
of $S$ has measure zero.

Conversely, if $S$ is $n$-rectifiable, then almost every projection
has positive measure.
:::

## Projection theorem is false outside of Euclidean spaces
Some generalisations to non-Euclidean spaces exist, but they are very
close: either finite dimensionality or smoothness is assumed.

::: .theorem thm:bate-csornyei-wilson

:::

## Main theorems

::: .theorem thm:typical-images
\begin{equation}\label{eq:star}
\liminf_{r\to 0} \frac{\Hn(B(x,r)\cap S)}{r^n} > 0 \quad \Hn \text{-a.e. } x \in S.
\end{equation}
:::

The lower density assumption can be removed in many situations: if
$n=1$, if $X=\mathbb R^k$, or more generally in any metric space,
using an announced result of Csörnyei and Jones.

Using the same techniques, we also obtain the following.

::: .theorem thm:metric-perturbation

:::

# Outline of proof

## Characterisation of purely unrectifiable metric spaces as spaces weak tangent fields of a lower dimension

::: .definition def:weak-tangent-field
We define $\Gamma$ to be the collection of all biLipschitz $\gamma
\colon \dom \gamma \subset \mathbb R \to X$
Let $S \subset X$ and $f\colon X \to \mathbb R^m$.  A *$d$-dimensional
weak tangent field of $S$ with respect to $f$* is a Borel $\tau \colon
S \to G(d,m)$ such that
$$(f\circ \gamma)'(t) \in \tau (\gamma(t)) \quad \mathcal H^1
\text{-a.e. } t \in \dom \gamma$$
for every $\gamma \in \Gamma$.
:::

If $S$ has a weak tangent field (with respect to $f$) then the
rectifiable curves in $S$ are very restricted.  An opposite notion is
given by an *Alberti representation* of a measure sitting on $S$.

::: .definition def:alberti-representation
An *Alberti representation* of a measuere $\mu$ on $X$ consists of a
probability measure $\bP$ on $\Gamma$ and for each $\gamma \in \Gamma$
a measure $\mu_\gamma \ll \Ho \llcorner \gamma$ such that
$$\mu(B) = \int_\Gamma \mu_\gamma(B) d\bP(\gamma)$$
for each Borel $B\subset X$.

Given a Lipschitz $f\colon X \to \R^m$ and a cone $C\subset \R^m$, we
say that $\gamma\in \Gamma$ is in the $f$-direction of $C$ if
$$(f\circ \gamma)'(t) \in C \setminus \{0\} \quad \Ho \text{-a.e. } t
\in \dom \gamma$$
and that an Alberti representation is in the $f$-direction of $C$ if
$\bP$-a.e. $\gamma \in \Gamma$ is in the $f$-direction of $C$.

Finally, $d$ Alberti representations are *independent* if there exists
a Lipschitz $f\colon X \to \R^m$ and linearly independent cones $C_1,
\ldots, C_d$ such that each cone defines the direction of exactly one
Alberti representation.
:::

Having many independent Alberti representations is exactly the
opposite to having a weak tangent field.  This can be made precise.

::: .lemma lem:rainwater
Let $\mu$ be a measure on $X$, $f\colon X\to \R^m$ Lipschitz and $C
\subset \R^m$ a cone.  There exists a decomposition $X= A \cup S$ such
that $\mu \llcorner A$ has an Alberti representation in the $f$
direction of $C$ and $\Ho(\gamma \cap S)=0$ for each $\gamma \in
\Gamma$ in the $f$-direction of $C$.
:::

::: .proposition prop:alberti-tangent-field-decomposition
Let $\mu$ be a measure on $X$, $f\colon X \to \R^m$ Lipschitz and $0
\leq d <m$.  There exists a decomposition
$$S = S' \cup \bigcup_i A_i$$
such that $S'$ has a $d-1$-dimensional weak tangent field with respect
to $f$ and each $\mu\llcorner A_i$ has $d$ independent Alberti
representations.
:::

We combine this with the following theorem.

::: .theorem thm:bate-li-rectifiable
Let $A\subset X$ satisfy $\Hn(A)<\infty$ and \ref{eq:star}.  If $\Hn
\llcorner A$ has $n$-independent Alberti representations, then $A$ is $n$-rectifiable.
:::

Thus, since $S$ is purely $n$-unrectifiable and satisfies
\ref{eq:star}, we must have $\Hn(A_i)=0$ for each $i$.  That is,
except for a set of $\Hn$ measure zero, $S$ has a $n-1$-dimensional
weak tangent field with respect to $f$.

This is the only step where the different hypotheses are used:

1. If $n=1$ then we certainly have such a decomposition (having a
   0-dimensional weak tangent field is implied by being purely 1-unrectifiable).
2. If $X= \R^k$ and $S$ is purely $n$-unrectifiable, by
   Besicovitch-Federer, we can find a
   projection onto a plane that is contained in the cones that define
   the Alberti representations such that $S$ is mapped to a set of
   measure zero.  The Alberti representations are pushed forward to
   $n$-independent Alberti representations on a set of measure zero,
   which contradicts De Philippis and Rindler.
3. Using Csörnyei Jones, it is possible to show that a metric space of
   finite $\Hn$ measure with $n$-independent Alberti representations
   automatically satisfies \ref{eq:star}.

## Proof for sets with weak tangent fields

::: .theorem thm:main-intermediate
For $f\colon X\to \mathbb R^m$ 1-Lipschitz, let $S\subset X$ be compact,
$\mathcal H^n(S)<\infty$ have an $n-1$-dimensional weak tangent field
with respect to $f$.
Then for any $\epsilon>0$ there exists a 1-Lipschitz $\sigma \colon X
\to \mathbb R^m$ such that

1. $\|f-\sigma\|_\infty <\epsilon$
2. $\mathcal H^n(\sigma(S))<\epsilon$.
:::

This is sufficient. 1 provides the density requirement of a residual
set and, whilst 2 is not open, it is $G_\delta$ when $S$ is compact.

For simplicity, we will prove the case when the weak tangent field is
approximately constant: $\Ho(\gamma \cap S) = 0$ for all $\gamma$ in
the $f$-direction of $C(W^\perp,\theta)$ with $\theta$ very close to 1.

The general case follows by gluing together the functions obtained.
This has to be done slightly carefully such that the Lipschitz
constant does not increase (so a Lipschitz extension does not
suffice).

### One dimensional local version
We temporarily suppose that $S\subset X \subset \ell_\infty$ and that
$f$ is the projection onto the first $m$ coordinates.  This can be
achieved using the biLipschitz embedding $x \mapsto (f(x), \iota(x))$,
for $\iota$ an isometric embedding in the case that $X$ is separable.

Let $\Omega$ be the closed (and hence compact) convex hull of $S$.

The main lemma is the following, for any $w \in W^\perp$.

::: .lemma lem:width-function
For any $\epsilon>0$ there exists an $\Omega$ open set $\Omega \supset
U\supset S$ such that, for any Lipschitz $\gamma \colon [0,L] \to
\Omega$ with $(w\cdot f\circ\gamma)' \geq 0$ almost everywhere,
$$\int_{\gamma^{-1}(U^c)} (w\cdot f\circ \gamma)' + (1-\theta)\Lip f\int_{\dom\gamma}
\Lip(\gamma,\cdot) \geq (f(\gamma(l))-f(\gamma(0)))\cdot w -\epsilon.$$
:::

::: .proof
The proof is a compactness argument by contradiction.  Suppose that,
for a fixed $\epsilon>0$, the conclusion is false for the sets $U_n =
B(S,1/n) \cap \Omega$ and curves $\gamma_n$.  By compactness, we get a
convergent subsequence $\gamma_n \to \gamma$ and by the lower
semi-continuity of total variation, the same inequalities hold for
$\gamma$.

However, in $S$ (which is the limit of the $U_n$), we know that
$(f\circ\gamma)'(t) \in C(w,\theta)$ for almost every $t$.  In
particular, the second term is greater than $\int_{\gamma^{-1}{S}}
(f\circ\gamma)'$ and so, combining with the first term, we obtain
something $\geq (f(\gamma(l)) - f(\gamma(0)))\cdot w$,
contradicting the hypothesis.
:::

Next step is a minor modification.  It follows because the quantities
are *greater* for curves that lie outside of $\Omega$.

::: .lemma lem:width-extended
The previous lemma holds for $\gamma$ into $\ell_\infty$.
:::

Finally, we form a perturbation of $w\cdot f$.

::: .proposition prop:real-valued-perturbation
For any $\epsilon>0$ there exists a Lipschitz $g\colon X \to \R$ such
that
1. For every $y,z$
   $$|g(x)-g(y)| \leq |w\cdot (f(y)-f(z))| + (1-\theta)\Lip f d(y,z).$$
2. For every $x$ $|w\cdot f(x)-g(x)|<\epsilon$.
3. For every $x\in S$, $y,z \in B(x,\rho) \cap S$
   $$|g(y)-g(z)| \leq (1-\theta) \Lip  d(y,z).$$
:::

### Vector valued local version

Apply to orthonormal $w_1,\ldots, w_{m-n} \in W^\perp$.  Get
::: .proposition
For any $\epsilon>0$ there exists a Lipschitz $h\colon X \to \R$ such that
1. For every $y,z$
   $$\Lip g \leq \Lip f + (1-\theta).$$
2. For every $x$, $\|f(x)-g(x)|<\epsilon$.
3. For every $x\in S$, $y,z \in B(x,\rho)\cap S$,
   $$ \|h(y)-h(z)\| \leq \|\pi(y)-\pi(z)\| + m(1-\theta) d(y,z),$$
   where $\pi$ is the orthogonal projection onto $W$.
