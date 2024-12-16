#import "@preview/diagraph:0.3.0" : *

= Graphs

Undirected: ${u, v}$

Directed: $(u, v)$

== Graph Types

=== Simple
- Edges undirected and unweighted
- No multi-edges (no same edge)
- No self loops (no edge starts/ends on same vertex)

=== Tree
Every pair of vertices only connected by exactly one path

=== Directed Acyclic Graph (DAG)
Directed but with no cycles

=== Bipartite Graph
- Two disjoint sets of vertices $U$ and $V$
- For all edges ${u, v}$, $u$ and $v$ are in different vertex sets

== Graph Representations

#render("digraph {
    rankdir=LR
    a -> b 
}")

=== Adjacency Matrix

#table(
    columns: 3,
    [], [$a$], [$b$],
    [a], [1], [0],
    [b], [0], [0],
)

=== Adjacency List

#table(
    columns: (auto, 1fr),
    [a], [b],
    [b], [],
)
