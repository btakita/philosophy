# Philosophy — Domain Vocabulary

This repo is the canonical domain ontology. It defines ~150 abstractions in `src/`, each following a structured template.

## For Agents

When the user (or a session document) uses terms like **existence**, **entity**, **abstraction**, **scope**, **context**, **resolution**, **pattern**, **system**, **domain**, **focus**, **perspective**, **consciousness**, **evolution**, **story** — reference `src/{term}.md` for the canonical definition.

Terms are interconnected via markdown links (`[term](./term.md)`). Follow links to build understanding of relationships.

## Key Concepts for Agent Workflows

| Term | File | Agent Relevance |
|------|------|-----------------|
| Scope | `src/scope.md` | Breadth/depth of a domain; narrows what's relevant |
| Context | `src/context.md` | Adds scope to abstractions; limits information needed |
| Resolution | `src/resolution.md` | Level of detail; zoom in/out |
| Abstraction | `src/abstraction.md` | Simplified model; reduces complexity for focus |
| Entity | `src/entity.md` | Any information in Existence; the unit of discourse |
| Pattern | `src/pattern.md` | Recurring structure; transferable across domains |
| System | `src/system.md` | An entity viewed from an internalized perspective |
| Focus | `src/focus.md` | Finite attention applied to a scope |
| Domain | `src/domain.md` | A bounded scope of knowledge |
| Perspective | `src/perspective.md` | A viewpoint on a system |
| Existence | `src/existence.md` | Everything that 'is'; the universal set containing all entities |
| Consciousness | `src/consciousness.md` | An entity's ability to interpret relevant signals; being present |
| Evolution | `src/evolution.md` | How an entity alters in response to context; pattern of change |
| Story | `src/story.md` | A sequence of events holding state that creates context |

## Node Structure

Each `src/*.md` file follows the template defined in `SPEC.md`. The three core sections (Ontology, Axiology, Epistemology) map to: what IS it, why does it MATTER, and how do we KNOW it.

## Universal Applicability Principle

Every ontology term applies to **every entity at every scope**. Terms are universal descriptors, not fixed labels for architecture roles.

**Correct:** "The FFI library is a System. The editor plugin is also a System. Both have Perspectives. Both expose Abstractions."

**Incorrect:** "The FFI library IS the System; the plugin IS the Perspective; the C ABI IS the Abstraction." (This maps terms 1:1 to roles, treating them as exclusive labels.)

When applying ontology to a domain:
- Each entity in the domain IS a System (a whole of relationships)
- Each entity HAS a Perspective (its viewpoint)
- Each entity HAS Abstractions (symbolic representations — "the map is not the territory")
- Each entity exposes an Interface (the boundary through which it communicates with other Systems)
- Scope bounds what's relevant at each level
- Patterns emerge from how these universal properties interact across entities

**Domain overlay convention:** When mapping ontology to architecture, describe how the term **applies to each entity**, not which entity "is" which term.

## Usage in Sessions

Reference this ontology when:
- Defining requirements (use precise terms from `src/`)
- Scoping tasks (apply `scope` + `context` + `resolution`)
- Designing systems (entities, patterns, abstractions)
- Aligning on meaning (canonical definitions prevent ambiguity)
- Applying ontology to domains (follow the Universal Applicability Principle above)
