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

## Precision and Bounded / Unbounded Scope

Ontology terms can be applied at any level of **precision**. See `src/precision.md` — precision is the amount of detail a statement carries about the reality it describes. Less precise terms cover broader [scopes](./src/scope.md); more precise terms narrow focus but lose reach.

Every scope is either **bounded** or **unbounded**:

- **Bounded scope** — has explicit limits (a file, a function, a release, a domain boundary, a bounded context in DDD). Statements inside a bounded scope can be precise because the boundary constrains what matters.
- **Unbounded scope** — has no explicit limit (Existence itself, a universal pattern, a first-class principle). Statements at unbounded scope must be imprecise on purpose, so they remain true across all narrowings.

### Guidance when applying ontology

1. **Name the scope first, then choose precision.** "At scope X, entity Y is a System with perspective Z." Never use an ontology term without an implicit or explicit scope — the same term carries different load at different scopes.
2. **Match precision to the scope's boundedness.** At an unbounded scope, prefer the least precise term that still distinguishes the entity. At a bounded scope, push precision as far as the boundary allows — precision only becomes dishonest when it claims detail the scope cannot support.
3. **Precision is lost through abstraction, not gained.** When you abstract, you are trading precision for reach. That trade is valid; hiding it is not.
4. **Bounded ≠ small, unbounded ≠ large.** A tiny function can be unbounded if it participates in a universal pattern; a galaxy-scale model can be bounded if its premises fix its limits. The question is whether limits are declared, not whether the entity is physically large.
5. **When a statement feels wrong, check for a scope mismatch.** Most ontology confusion comes from mixing a bounded-scope claim with an unbounded-scope term (or vice versa). Re-state the claim with its scope attached.

## Usage in Sessions

Reference this ontology when:
- Defining requirements (use precise terms from `src/`)
- Scoping tasks (apply `scope` + `context` + `resolution`)
- Designing systems (entities, patterns, abstractions)
- Aligning on meaning (canonical definitions prevent ambiguity)
- Applying ontology to domains (follow the Universal Applicability Principle above)
