---
title: Exercise 2 -- LTI Basics 2
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

# Properties of a Given System

Let the system matrices be given as

$$A=\begin{bmatrix}
-1 & 1 & 0 \\
0 & -4 & -2 \\
0 & 2 & 0
\end{bmatrix}, \quad
B=\begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}, \quad \text{and }
\quad C=\begin{bmatrix} 1 & 1 & 1 \end{bmatrix}.
$$

1. Check this system for stability.
2. Check this system for controllability.
3. Compute the transfer function 
$$ G(s) = C(sI-A)^{-1}B $$ 
and comment on *minimality* of the realization.
4. For this transfer function, compute the $\mathcal H _ \infty$ norm
$$ \|G\| _ \infty = \sup _ {\omega \in \mathbb R} |G(i\omega)|$$
where $i$ is the imaginary unit.
