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

=== K-Colorable
Assignment of $k$ colors to vertices so that no pair of adjacent vertices have same color

Requires *BFS* algorithm

Uses: scheduling, make sure no two exams overlap

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

== Types of Edges
- Tree edge: in BFS or DFS search tree
- Back edge
- Forward edge
- Cross edge: all other edges

= Runtimes

*BFS and DFS*: $upright(O)(|V| + |E|)$

= Dijkstra
- Uses PQ, pop non-infinity smallest, update neighbors
- Negative edge weights may cause cycles, interferes w/alg
