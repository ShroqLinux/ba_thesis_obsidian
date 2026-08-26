---
type: thesis-decisions-log
status: active
tags:
  - thesis/decision-log
---

# Decisions log

| Date / Scope | Decision & Rationale from Research Notes |
| :--- | :--- |
| **2026-08-03** | Static cluster, guaranteed message delivery, SHOP planner (DFS-style search) — formally restrict frame with fixed assumptions; removes network dynamism, comms implementation, planner choice from scope |
| **2026-08-03** | Focus on redundant node systems — identified research gap: "HTN with redundant node systems hasn't been analyzed much" |
| **2026-08-05** | TMR (Triple Modular Redundancy) as primary redundancy model — spatial redundancy, active replication, voting systems; chose active replication over passive, TMR over DMR/N-modular |
| **2026-08-05** | Exclude software design failures from fault model — "concept must not focus on possible failures in software because those are linked to design issues"; faults = hardware/node execution failures only |
| **2026-08-05** | Simulation via VMs/containers for PoC — "later proof of concept may make use of virtualization technology... to simulate behavior that resembles how hardware would fail" |
| **2026-08-05** | External monitoring required (SHOP2 lacks native monitoring) — "SHOP2 doesn't natively have any monitoring capability... would need to be done by another monitor node or a thread"; voter/monitor is separate concern |
| **2026-08-06** | Replication (not splitting) as redundancy strategy — "splitting... misses the point of mechanism"; rejected pure parallelization without redundancy |
| **2026-08-06** | Active replication with state machine consistency — all nodes processing the same request simultaneously; state machine replication model |
| **2026-08-06** | Vector-comparison voter over plan traces (not just final plan) — voter compares full derivation (primitive task IDs, ordering, method bindings), not just output |
| **2026-08-06** | Deterministic aerial system domain (DO-178C adjacent) — "deterministic system... aerial system... closed-world with total fixed knowledge"; safety-critical, certifiable context |
| **2026-08-06** | GTPyhop as implementation baseline — "starting point is provided through GTPyhop... open source planning system by Dana Nau"; concrete codebase to extend |
| **Pre-2026-08-03** | SHOP/SHOP2 family only (not generic HTN) — "restrict the frame here to use SHOP planners where the main topic becomes the parallelization of the search itself" |
| **Pre-2026-08-03** | Parallel DFS (not work-stealing, not randomized parallel DFS as primary) — evaluated work-stealing & randomized parallel DFS; noted deterministic DFS + TMR as chosen path |
| **2026-08-10** | Baseline TMR before advanced variants — prioritize foundational TMR behavior analysis over complex dynamic/adaptive schemes (e.g., Bonna et al., Hamilton et al.) to establish baseline properties first |
| **2026-08-12** | Redundancy scope strictly bounded to TMR — formal decision to limit the redundancy architecture scope to static TMR applied to deterministic distributed computing |
| **2026-08-13** | Vector-based task ID comparator voter — voter compares sequential vectors of primitive task IDs generated from deterministic DFS to verify node execution correctness |
| **2026-08-13** | Scope exclusion of N-Version Programming — ruled out software diversity due to excessive lifecycle and process costs; focus remains on homogeneous replicas |
| **2026-08-19** | Multi-tier state synchronization models — mapped synchronization primitives by execution boundary: thread signaling/barriers (single process), pooling sink process (multi-process), and coordinator VM/node (multi-node) |
| **2026-08-19** | Fault detection via watchdogs and heartbeats — incorporated watchdog timers (detecting infinite planning recursion/hangs) and heartbeat signals alongside the majority voter |
| **2026-08-20** | Deterministic DFS over stochastic/heuristic planners — formal exclusion of heuristic and randomized planners to ensure predictable fallback mechanisms and alignment with DO-178C certification principles |
| **2026-08-20** | Offline pre-configured static network topology — excluded dynamic network discovery/routing to reflect safety-critical avionics standards with closed-world determinism |
| **2026-08-25** | Axiomatic guaranteed message delivery via avionics bus standards — justified treating message delivery as solved/guaranteed by citing established deterministic standards (MIL-STD-1553, ARINC 664/AFDX, ARINC 429), formally decoupling network transport issues from the planning thesis scope |
