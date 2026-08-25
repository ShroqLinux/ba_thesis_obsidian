---
type: thesis-section
status: active
tags:
  - thesis/comms
  - distributed-systems
---

# Wireless communication & coordination

Ideas & thoughts.

Within distributed networks running wireless methods of communication, you require exchange of information, data consistency, replication, network coordination. Nodes can be added, removed, fail and require an overlaying management layer. Within communication you also have problems with incorrect transmission, retransmission, transmission without reception, etc. Planning here can only be decentralized, possibly requiring self-discovery and dynamic forming of a network.

Added note: in airborne systems you don’t have any wifi communication active. You would make use of some other technology. This means the focus is less on how to implement a communication network but in what way data must be exchanged between nodes.  
One idea of focus can be to develop an application-focused concept of how different nodes utilizing HTN individually can self-manage with a network. The emphasis would be on effective data exchange and communication between nodes. The second idea would be to have all  nodes run HTN and operate autonomously a network between the nodes. This would require exchange of information regarding capabilities, functions offered by nodes, etc. The scope of this would be too large as HTN runs with defined task sets and methods. The restriction of HTN comes with dynamic systems as flexibility is only enabled through planners, not across multiple systems.  
One possibility for a network solution independent of transmission medium can be using P2P solutions or decentralized communication such as a publish / subscribe middleware or broker. These communication paradigms have already been extensively researched in great depth and hence don’t allow for much scope in a new academic writing.

Added info: Focus less on comms, for thesis it can be assumed that guaranteed message delivery is being used. The exact technology of the transmission medium is also not in focus.

Direction towards cooperation and exchange of information on how HTN can be distributed. Initial approach may be with a fixed cluster of nodes using a shared search tree. The question is more concerned on how they can operate together.

---
See also:
- [[Avionics Standards & Deterministic Buses]]
- [[Decisions log]]
