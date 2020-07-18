---
title: Exercise 3 -- Gramians
date: July 16, 2020
author: Jan Heiland
---

We consider the linear time invariant system

$$
\begin{aligned}
\dot x(t) &= Ax(t) + Bu(t) \\
y(t) &= Cx(t)
\end{aligned}
$$

with $A\in \mathbb R^{n,n}$, $B\in \mathbb R^{n,p}$, and $C\in \mathbb R^{q,n}$.

For $A$ stable, the infinite *reachability* and *observability* Gramians
$\mathcal P$ and $\mathcal Q$ are given as

$$\begin{aligned}
\mathcal{P}&=\int _ {0}^{\infty} e^{{A} \tau} {B} {B}^{ T } e^{{A}^{ T } \tau} d \tau \quad \text{and}\\
\mathcal{Q}&=\int _ {0}^{\infty} e^{{A}^{ T } \tau} {C}^{ T } {C} e^{{A} \tau} d \tau.
\end{aligned}$$

Show

1. the Gramians $\mathcal P$ and $\mathcal Q$ satisfy the *Lyapunov* equations
$$
{A} \mathcal{P}+\mathcal{P} {A}^{T}+{B} {B}^{T}={0}
$$
and
$$
{A}^{T} \mathcal{Q}+\mathcal{Q A}+{C}^{T} {C}={0}.
$$

2. that they are symmetric positive definite,

3. that the eigenvalues of $\mathcal P \mathcal Q$ are invariant under state
   transformations, and

4. that the state transformation $x(t)\leftarrow Tx(t)$ with
$$
T=\Sigma^{-\frac 12}V^ T R
$$
makes the transformed Gramians balanced, e.g. $\tilde {\mathcal P}$ and
$\tilde{\mathcal Q}$ are diagonal and equal. Here $S$ and $R$ are factors of
$\mathcal P = S^ T S$ and $\mathcal Q = R ^ T R$ so that $V$ and $\Sigma$ can be
defined through the *Singular Value Decomposition* of $SR ^ T$:
$$
U\Sigma V^ T = S R^ T .
$$

