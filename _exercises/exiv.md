---
title: Exercise 4 -- Implementation of Balanced Truncation
date: July 23, 2020
author: Jan Heiland
---

# 1 Balancing and Minimality

Consider the following LTI system

$$
\begin{aligned}
\dot{x}(t)&=
\underbrace{
\begin{bmatrix}
5 & -7 & 0 & -2 \\
6 & -8 & 0 & -2 \\
0 & 0 & -3 & 0 \\
9 & -9 & 0 & -4
\end{bmatrix}
} _ {A} 
+
\underbrace{
\begin{bmatrix}
2 \\
1 \\
1 \\
3
\end{bmatrix}
} _ {b} u(t)
\\
y(t)&=
\underbrace{
\begin{bmatrix}
1 & 2 & 3 & 4
\end{bmatrix}
} _ {c} x(t)
\end{aligned}
$$

Use the MATLAB command `lyapchol` to compute the factors $S$ and $R$ of the solutions to the Lyapunov equations

$$
A P+P A^{T}+b b^{T}=0, \quad A^{T} Q+Q A+c^{T} c=0,
$$
i.e. find $S$ and $R$ such that $S^TS = P$ and $R^TR=Q$.

If you do not have access to the Control System toolbox, you can find
the results in the file `LyapSol.mat` on the course homepage. Compute the singular
value decomposition $U \Sigma V^{T}=S R^{T}$ of the product of the 
factors $S$ and $R^{T}$. 

What can you say about the minimality of the system?

Adjust the transformation matrices by removing the zero row of $T=\Sigma^{-\frac{1}{2}} V^{T} R$ 
and the corresponding column of its (pseudo) inverse $S^{T} U \Sigma^{-\frac{1}{2}}$.

Use these transformation matrices to construct a minimal reduced-order
model which exactly reproduces the transfer function of the original model, i.e., for the reduced system it should hold
$\hat{H}(s)=H(s)$ for all $s$. Validate your results by plotting the
gain in *dezibel* of the original and the reduced transfer function, i.e., 
$$
20\cdot \log _ {10} |H(i\omega)| \quad \text{and} \quad 20\cdot \log _ {10}|\hat H(i\omega)|
$$
over the range $\omega \in [10^{-1},10^5]$ at $1000$ equidistant (in log scale)
points.

# 2 Model Reduction by Balanced Truncation

Implement the method of balanced truncation introduced in the course. If you do
not have access to the control system toolbox, you can use the routine
`lyap_sgn_fac.m` from the course homepage to compute approximations to the
Cholesky factors of the solutions to the Lyapunov equations. Try your program by
means of the model of a beam which you find as `beam.mat` on the course
homepage. Evaluate the transfer function
$$
H(i \omega)=C(i \omega I-A)^{-1} B
$$
for original and reduced-order models over the frequency interval $\omega
\in\left[10^{-2}, 10^{4}\right]$. Use $1000$ logarithmically distributed sample
points. Plot the gain of the transfer function, i.e. $20 \cdot \log _ {10}|H(j
\omega)|$ and that of the reduced transfer functions for the reduced dimensions
$r=10,50,100$ on a logarithmic $x$-scale by using the MATLAB command `semilogx`.
