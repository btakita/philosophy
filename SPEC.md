# Ontology Node Specification

Layout and structure for concept definitions in `src/`.

## Node Template

```markdown
# {Term}

## [Ontology](./ontology.md)

{What the term IS. Core definition. Links to related terms via `[term](./term.md)`.}

## [Axiology](./axiology.md)

{Why it MATTERS. Value, significance, implications for practice.}

## [Ethics](./ethics.md)

{Optional. Ethical considerations when applying this concept.}

## [Epistemology](./epistemology.md)

### [Cultural](./culture.md) Definition

{External references — Wiktionary, Wikipedia, etymonline, academic sources.
Use `<a href="..." target="_blank">` format for links.
Quote definitions using `>` blockquotes.}

### [Pattern](./pattern.md) Expression

{How this concept manifests universally in Existence.
Concrete examples showing the pattern at different scales.}
```

## Rules

1. **Title** = the term name, capitalized
2. **Ontology** section is required — this is the definition
3. **Axiology** section is required — why it matters
4. **Epistemology** section is required — how we know it
5. **Ethics** section is optional — include when the concept has ethical dimensions
6. **Links** use relative markdown: `[term](./term.md)`
7. **External refs** use HTML anchors with `target="_blank"`
8. **Definitions** from external sources are blockquoted (`>`)
9. **Pattern Expression** grounds the abstract in concrete examples
10. **Scope**: definitions are relative to Existence (broadest scope); narrower applications are noted

## Section Purposes

| Section | Question | Maps To |
|---------|----------|---------|
| Ontology | What IS it? | Definition, identity |
| Axiology | Why does it MATTER? | Value, purpose, significance |
| Ethics | What SHOULD we consider? | Moral implications |
| Epistemology | How do we KNOW it? | Evidence, sources, patterns |

## Conventions

- Each file = one concept = one node in the ontology graph
- Nodes link to related nodes — the graph IS the ontology
- Definitions start broad (Existence scope) and can be narrowed by context
- The `Pattern Expression` subsection bridges theory to practice
