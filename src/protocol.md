# Protocol

## [Ontology](./ontology.md)

A protocol is the set of rules governing [communication](./communication.md) between [systems](./system.md) through their [interfaces](./interface.md). A protocol defines the structure, sequence, and semantics of [signals](./signal.md) exchanged between systems.

A protocol involves the interfaces of multiple systems — it is the agreement about how systems use each other's interfaces. An [interface](./interface.md) belongs to a single system; a protocol spans systems.

## [Axiology](./axiology.md)

Protocols enable interoperability. Without a shared protocol, two systems with compatible interfaces may still fail to communicate meaningfully — the signals may arrive but be misinterpreted.

A protocol is a form of [contract](./agreement.md) — the participating systems agree to honor the protocol's rules. Breaking the protocol breaks communication.

## [Epistemology](./epistemology.md)

### [Cultural](./culture.md) Definition

<a href="https://en.wiktionary.org/wiki/protocol" target="_blank">protocol (wiktionary)</a>

> ### Noun

> A rule, guideline, or document which guides how an activity should be performed.

> (computing) A set of formal rules describing how to transmit or exchange data, especially across a network.

> (diplomacy) The original copy of a treaty or other such document before its ratification.

<a href="https://en.wikipedia.org/wiki/Communication_protocol" target="_blank">communication protocol (Wikipedia)</a>

> A communication protocol is a system of rules that allows two or more entities of a communications system to transmit information.

### [Pattern](./pattern.md) Expression

Protocols exist wherever multiple systems coordinate:

- **NDJSON over Unix sockets** — the protocol through which `agent-doc` CLI and editor plugins communicate via their socket Interfaces
- **HTTP** — the protocol through which web clients and servers communicate via their network Interfaces
- **TCP/IP** — the protocol through which networked machines communicate via their hardware Interfaces
- **Diplomatic protocol** — the rules through which nations communicate via their ambassadorial Interfaces
- **Cellular signaling** — the protocol through which cells communicate via their membrane Interfaces
