---
title: Exercise 1 -- LTI Basics 1
date: July 15, 2020
author: Jan Heiland
---

We consider the linear time invariant system

$$
\begin{aligned}
\dot x(t) &= Ax(t) + Bu(t) \\
y(t) &= Cx(t)
\end{aligned}
$$

with $A\in \mathbb R^{n,n}$, $B\in \mathbb R^{n,p}$, and $C\in \mathbb R^{q,n}$
and let the Kalman controllability matrix

$$
K = \begin{bmatrix} B & AB & A ^2 B & \hdots & A^{n-1}B \end{bmatrix}
$$

have rank $r\leq n$.

# 1 Controllability and Hautusz Test 

1. Show that there exists an invertible matrix $T\in \mathbb R^{n,n}$ such that
$$ T^{-1}AT = \begin{bmatrix} A_1 & A_2 \\ 0 & A_3 \end{bmatrix}
\quad\text{and}\quad TB = \begin{bmatrix} B_1 \\ 0 \end{bmatrix}, $$
with $(A_1, B_1)$ is a controllable matrix pair.

2. Show that $(A,B)$ is controllable if, and only if, 
$$\begin{bmatrix} \lambda I - A & B \end{bmatrix}$$
has full row rank for any $\lambda \in \mathbb C$.


# 2 Invariance of Controllability under Transformations

Show that controllability is invariant under

1. State transformations $x(t)\leftarrow \tilde x(t) := T^{-1}x(t)$, with
   $T\in\mathbb R^{n,n}$ invertible,
2. Input scalings $u(t)\leftarrow \tilde u(t) := R^{-1}$, with $R\in\mathbb
   R^{m,m}$ invertible.
3. Linear state feedback transformations $u(t) = -Fx(t) +v(t)$, with
   $F\in\mathbb R^{m,n}$.

