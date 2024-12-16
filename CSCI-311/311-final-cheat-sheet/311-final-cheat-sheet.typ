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

== Sparse Graph
- A sparse (connected) graph has about at most as many edges as vertices
- For connected: $n-1$ edges minimal but also could be disconnected

== Dense Graph
- Has nearly the max number of edges
- Max num of edges: $n dot (n-1) slash 2$

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

*Dijkstra*: $upright(O)((|V| + |E|) dot log(|V|)) = upright(O)(|E| dot log(|V|))$
- Assuming a connected graph, making $|V| = upright(O)(|E|)$

*Prim's*: $upright(O)(|E|log(|V|))$

*Kruskal*: $upright(O)(|E|log(|E|))$

= Dijkstra
- Uses PQ, pop non-infinity smallest, update neighbors
- Negative edge weights may cause cycles, interferes w/alg

= Min Spanning Tree
Subgraph where:
- All vertices the same
- There is a path to every vertex
- The sum of edges is minimal

Must be a tree because *no cycle*

== Prim's Algorithm
- Greedy approach focused on nodes
- Could break ties any way
- If all edges have distinct weights: unique MST
- Could be used w/negative edges
- Could be used to find max MST

Steps:
- Have two sets
- Add lightest edge that contains vertices from different sets
- Add vertex to other set
- One big collective vertex set, pick one not part of that set

== Kruskal Algorithm
Steps:
1. Sort all edges by edge weight
2. Pick smallest edge
3. Check if new edge creates cycle/loop in MST
4. If doesn't form cycle, include edge in MST. Otherwise, discard
5. Repeat from step 2 until it includes |V| - 1 edges in MST
