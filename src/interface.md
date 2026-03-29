# Interface

## [Ontology](./ontology.md)

An interface is the defined boundary through which one [system](./system.md) [communicates](./communication.md) with another system. It constrains the [scope](./scope.md) of interaction by defining what [signals](./signal.md) are valid and how they are structured.

An interface is an [abstraction](./abstraction.md) — a symbolic representation of how a system can be interacted with. But it is a specific kind of abstraction: one that defines a contract between systems. Not all abstractions are interfaces; an interface is the subset of a system's abstractions that govern inter-system communication.

Every [entity](./entity.md) that communicates with other entities has an interface. A rock's interface is the physical surface through which kinetic energy is exchanged. A library's interface is its API. A person's interface includes language, body language, and other forms of expression.

An interface belongs to a single system. When multiple systems coordinate through their interfaces, the rules governing that coordination form a [protocol](./protocol.md).

## [Axiology](./axiology.md)

Interfaces enable systems to collaborate without requiring knowledge of each other's internals. A well-designed interface reduces coupling between systems while enabling [communication](./communication.md).

The stability of an interface determines how reliably systems can interact over time. Breaking changes to an interface ripple through all consuming systems.

## [Epistemology](./epistemology.md)

### [Cultural](./culture.md) Definition

<a href="https://en.wiktionary.org/wiki/interface" target="_blank">interface (wiktionary)</a>

> ### Noun

> The point of interconnection or contact between entities.

> (computing) The connection between a user and a machine.

> (computing) The connection between parts of software.

> (object-oriented programming) The public methods and data of a component.

<a href="https://en.wikipedia.org/wiki/Interface_(computing)" target="_blank">interface — computing (Wikipedia)</a>

> In computing, an interface is a shared boundary across which two or more separate components of a computer system exchange information.

### [Pattern](./pattern.md) Expression

An interface exists wherever systems meet:

- A **C ABI** is the interface through which a shared library communicates with its consumers
- A **REST API** is the interface through which a web service communicates with its clients
- A **keyboard** is the interface through which a human communicates with a computer
- A **cell membrane** is the interface through which a cell communicates with its environment
- **Language** is the interface through which humans communicate with each other
