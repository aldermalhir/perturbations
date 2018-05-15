---
title: Rectifiability of metric spaces via arbitrarily small perturbations
author: David Bate
institute: University of Helsinki
theme: metropolis
---

# Rectifiable metric spaces
*   $(X,d)$ metric space.  $S\subset X$ is $n$-rectifiable if there exist countably many Lipschitz (equivalently biLipschitz) $f_i\colon A_i \subset \mathbb R^n \to X$ such that
$$\mathcal H^n(S\setminus \bigcup f_i(A_i))=0.$$
*   $S$ is purely $n$-unrectifiable if every $n$-rectifiable subset of $S$ has $\mathcal H^n$ measure zero.  If $\mathcal H^n(X)<\infty$ then $X= U \cup R$, $U$ purely $n$-unrectifiable and $R$ $n$-rectifiable.
*   Classically (when $X=\mathbb R^m$), a fundamental description of rectifiable sets is given by the Besicovitch-Federer projection theorem: $\mathcal H^n(S)<\infty$, $S$ purely $n$-unrectifiable $\Rightarrow$ almost every $n$-dimensional orthogonal projection of $S$ has Lebesgue measure zero.

# BF in non-Euclidean settings I
*   Is it possible to obtain a similar characterisation in non-Euclidean settings?
*   Metric spaces have no linear structure $\Rightarrow$ no notion of projection.
*   In (infinite dimensional) Banach spaces: Projection = continuous linear $T \colon B \to \mathbb R^n$ (of full rank).
*   "Almost every" projection? Prescribe a collection of null sets.  Standard examples exist in the theory of GMT in Banach spaces.

# BF in non-Euclidean settings II
\begin{theorem}[De Pauw]
There exists a purely 1-unrectifiable $S\subset \ell_2$ with $\mathcal H^1(S)<\infty$ such that $|T(S)|>0$ for a non "Aronszajn" null set of projections.
\end{theorem}

\pause

*   BF is false in $\ell_2$ for "Aronszajn almost every projection".
*   However, this set of projections **is** "Haar" null.

\pause

\begin{theorem}[B, Csörnyei, Wilson]
In any separable infinite dimensional Banach space, there exists a purely 1-unrectifiable $S$ with $\mathcal H^1(S)<\infty$ such that $|T(S)|>0$ for \textbf{every} projection.
\end{theorem}

\pause

*   BF is completely false in infinite dimensional spaces.

# A new approach
*   It is natural to consider Lipschitz mappings of a metric space $X$ into an Euclidean space.
*   Let $\operatorname{Lip}_1(X,\mathbb R^m)$ be the set of all bounded 1-Lipschitz $f\colon X \to \mathbb R^m$ equipped with the supremum norm.
*   This is a complete metric space and so we can consider a typical 1-Lipschitz function (i.e. residual/comeagre in the sense of Baire category: a set that contains a countable intersection of open dense sets).
*   "A typical 1-Lipschitz function" is a suitable candidate to replace "almost every projection".

# A new characterisation

\begin{theorem}[B]
  Let $S\subset X$ be purely $n$-unrectifiable with $\mathcal H^n(S)<\infty$ and
  \begin{equation}\liminf_{r\to 0}\frac{\mathcal H^n(B(x,r))}{r^n}>0 \tag{$*$}\end{equation}
  for $\mathcal H^n$-a.e. $x\in S$.

  For any $m\in\mathbb N$, a typical $f \in \operatorname{Lip}_1(X,\mathbb R^m)$ satisfies
  $$\mathcal H^n(f(S))=0.$$
\end{theorem}

\pause

*   If $S\subset \mathbb R^{m'}$, $(*)$ is not necessary.
*   Using deep results of the structure of Lebesgue null sets announced by Csörnyei-Jones, $(*)$ is never necessary.
*   If $\mathcal H^s(S)<\infty$ with $s\not\in \mathbb N$, then a typical $f\in \operatorname{Lip}_1(X,\mathbb R^m)$ satisfies $\mathcal H^s(f(S))=0$.

# The converse statement
As with BF, we get a strong converse.

\pause

\begin{theorem}[B]
  Let $S\subset X$ be $n$-rectifiable.
  For any $m\geq n$, a typical $f \in \operatorname{Lip}_1(X,\mathbb R^m)$ satisfies
  $$\mathcal H^n(f(S))>0.$$
\end{theorem}

\pause

*   This direction is simpler: uses Kirchheim's description of rectifiable metric spaces.

# Idea of the proof of the main direction
Given $f\in \operatorname{Lip}_1(X,\mathbb R^m)$, we must make arbitrarily small modifications to obtain a $\tilde f$ such that $\mathcal H^n(\tilde f(S))$ is arbitrarily small.  These modifications **cannot** increase the Lipschitz constant.

\pause

\begin{theorem}[B, Li 2014]
Let $S \subset X$ satisfy $\mathcal H^n(S)<\infty$ + $(*)$.
If $S$ has $n$ "Alberti representations", then $S$ is $n$-rectifiable.
\end{theorem}

\pause

*   $\Rightarrow$ for any Lipschitz $f\colon X \to \mathbb R^m$, (after removing a set of $\mathcal H^n$ measure zero) $\exists$ $n-1$ dimensional "weak tangent field": $V_x \in G(m,n-1)$ s.t. any 1-rectifiable set $\gamma \subset S$ has
$$\operatorname{Tan}_{f(x)}f(\gamma) \in V_{x} \quad \mathcal H^1\text{-a.e. } x\in \gamma.$$
*   If $S\subset \mathbb R^{m'}$, or using the announcement of Csörnyei-Jones, the theorem can be proved without assuming $(*)$.  Similarly, the consequence is true for the case $s\not\in \mathbb N$.

# Idea of the proof of the main direction II

*   Have a weak tangent field: $V_x \in G(m,n-1)$ s.t. any 1-rectifiable set $\gamma \subset S$ has
$$\operatorname{Tan}_{f(x)}f(\gamma) \in V_{x} \quad \mathcal H^1\text{-a.e. } x\in \gamma.$$
*   To construct $\tilde f$, we locally squeeze $f$ in all directions orthogonal to $V_x$.
    -   Since there are no 1-rectifiable sets in these directions, this can be done without perturbing $f$ very much.
    -   $\dim V_x= n-1$ $\Rightarrow$ can reduce $\mathcal H^n(f(S))$ to an arbitrarily small value.


# Perturbations of distances I
*   The are other targets that are interesting from the point of view of metric spaces.
*   Recall that any separable metric space can be isometrically embedded into $\ell_\infty$.
*   If $S$ is compact, then for any $\epsilon>0$ there exists a 1-Lipschitz mapping $f$ into $\ell_\infty^{m(\epsilon)}$ such that $|d(x,y)-\|f(x)-f(y)\|_\infty|<\epsilon$ for each $x,y\in S$.
*   Applying the Euclidean squeezing argument to $f$ gives a $\tilde f$ with a huge Lipschitz constant (because of the ralationship between $\|.\|_2$ and $\|.\|_\infty$ in $\mathbb R^{m}$).
*   If we are more careful we can obtain something more useful.

# Perturbations of distances II
\begin{theorem}[B]
Let $S$ be compact purely $n$-unrectifiable with $\mathcal H^n(S)<\infty$ + $(*)$.
For any $\epsilon>0$ $\exists$ $L(n)$-Lipschitz $\sigma \colon S \to \ell_\infty^{m(\epsilon)}$ with
\begin{equation}\tag{1}|d(x,y)- \|\sigma(x)-\sigma(y)\||<\epsilon \quad \forall x,y\in S\end{equation}
and
$$\mathcal H^n(\sigma(S))<\epsilon.$$
\end{theorem}

\pause

*   Since $L(n)$ is independent of $\epsilon$, we have a suitable converse: if $S$ is $n$-rectifiable, $\inf_{L>0} \liminf_{\epsilon\to 0} \mathcal H^n(\sigma(S)) > 0,$
$\sigma \colon S \to (Y,\rho)$ $L$-Lipschitz satisfying (1).
*   $(*)$ is not necessary under the same conditions as before, and have the corresponding statement for $\mathcal H^s(S)$, $s\not \in \mathbb N$.

# Perturbations of sets

*   If $S$ is a subset of a Banach space $B$ with an _unconditional basis_ ($\ell_1$, $L^p(\mu)$ $1<p<\infty$, $c_0$,\ldots) then $\sigma$ can be chosen to be a genuine perturbation.
*   That is, $\exists$ $L(n,B)$-Lipschitz $\sigma \colon B \to B$ with
$$\|x - \sigma(x)\|<\epsilon \quad \forall x\in S$$
and
$$\mathcal H^n(\sigma(S))<\epsilon.$$
*   Generalises a result of H. Pugh who proved this for Ahlfors regular subsets of Euclidean space.  The construction relies on BF.
