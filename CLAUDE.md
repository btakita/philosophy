# Philosophy — Domain Vocabulary

This repo is the canonical domain ontology. It defines ~150 abstractions in `src/`, each following a structured template.

## For Agents

When the user (or a session document) uses terms like **scope**, **context**, **resolution**, **abstraction**, **entity**, **pattern**, **system**, **domain**, **focus**, **perspective** — reference `src/{term}.md` for the canonical definition.

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

## Node Structure

Each `src/*.md` file follows the template defined in `SPEC.md`. The three core sections (Ontology, Axiology, Epistemology) map to: what IS it, why does it MATTER, and how do we KNOW it.

## Usage in Sessions

Reference this ontology when:
- Defining requirements (use precise terms from `src/`)
- Scoping tasks (apply `scope` + `context` + `resolution`)
- Designing systems (entities, patterns, abstractions)
- Aligning on meaning (canonical definitions prevent ambiguity)
