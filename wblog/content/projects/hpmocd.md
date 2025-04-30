+++
author = "oliveira-sh"
title = "pymocd"
date = "2025-04-04"
description = "Python Multi-Objective High-performance Evolutionary Algorithms for Community Detection"
+++
![](https://oliveira-sh.github.io/pymocd/images/logos/title_logo_hu_7ef92fb7ab51c789.webp)

The (**pymocd**) is available as an **FLOSS** project on [GitHub](https://github.com/oliveira-sh/pymocd), where you can choose to build it from source or use the pre-compiled library from the releases. It is also available on the [Python PyPI](https://pypi.org/project/pymocd/), allowing for simple installation and use. The library direct function calls using the PyPI package.

## Using via PyPI

```bash
pip install pymocd
```

For the Rust version, you will need to build it from source. Build instructions can be found in the official repository. The `High-Performance Evolutionary Multiobjective Community Detection Algorithm` (**HP-MOCD**) algorithm present in this library can be invoked as follows:

```python
import pymocd
import networkx as nx

G = nx.Graph([
   (0, 1), (0, 3), (0, 7),
   (1, 2), (1, 3), (1, 5), 
   (2, 3), 
   (3, 6), 
   (4, 5), 
   (4, 6), 
   (5, 6), 
   (7, 8)
])

alg_obj = pymocd.HpMocd(G)
partition = alg_obj.run()

print(partition)
```

Given the graph defined above using the `networkx` library, the function produces the following partition:
```
{0: 4, 1: 4, 2: 4, 3: 4, 4: 1, 5: 1, 6: 1, 7: 3, 8: 3}
```
In this representation, each entry corresponds to a `node:id` pair, indicating the community to which each node belongs.

![](/img/banners/exampleremocd.png)

## References


[shi]: Chuan Shi, Zhenyu Yan, Yanan Cai, Bin Wu. **Multi-objective community detection in complex networks**. *Elsevier*, Beijing University of Posts and Telecommunications, Beijing Key Laboratory of Intelligent Telecommunications Software and Multimedia, Beijing 100876, China; Research Department, Fair Isaac Corporation (FICO), San Rafael, CA 94903, USA.  
Available at: [https://www.sciencedirect.com/](https://www.sciencedirect.com/science/article/abs/pii/S1568494611003991)
```
