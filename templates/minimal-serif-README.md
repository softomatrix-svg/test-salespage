# Minimal Serif Template

A clean, minimalist sales page template with Georgia serif typography and a light background. Perfect for info products, frameworks, and educational offers.

## Design Style

- **Minimalist** - Clean, uncluttered layout
- **Serif Typography** - Georgia font for readability and authority
- **Light Theme** - Off-white background (#fafafa)
- **Narrow Width** - 700px max-width for focused reading
- **Generous Spacing** - Comfortable line height and margins

## Color Palette

| Color | Hex Code | Usage |
|-------|----------|-------|
| Background | #fafafa | Page background |
| Text Primary | #2d2d2d | Body text |
| Text Dark | #000000 | Headlines |
| Text Muted | #718096 | Subheadlines, secondary |
| Accent Orange | #f59e0b | Pre-headline, urgency |
| Accent Green | #16a34a | CTAs, prices, success |
| Border | #ddd | Dividers |
| Callout BG | #f7fafc | Highlighted sections |
| Guarantee BG | #fef3c7 | Money-back guarantee |

## Typography

- **Font Family**: Georgia, 'Palatino Linotype', serif
- **Hero H1**: 42px, weight 900
- **Mechanism**: 40px, weight 900 (3-part headline)
- **Section H2**: 32px, weight 700
- **Subsection H3**: 24px, weight 600
- **Body**: 18px, line-height 1.65
- **Pre-headline**: 11px, uppercase, letter-spacing 1.5px

## Unique Features

### 3-Part Headline Structure
```
[Pre-headline] - Small, uppercase, orange
[Headline] - Large, bold, black (the hook)
[Mechanism] - Large, bold (how it works)
[Outcome] - Regular, gray (the benefit)
```

### Long-Form Sales Letter Format
- Single column, narrow width
- Long paragraphs with natural flow
- Multiple subheadings for scannability
- Objection handling sections
- Guarantee callout box

### Callout Boxes
- **Standard**: Light gray background, green left border
- **Guarantee**: Yellow/cream background, orange border

## Sections

1. **Hero** - 3-part headline + CTA
2. **Problem** - Pain points, story-based
3. **Mechanism** - How the solution works
4. **Deliverables** - What's included (7 items)
5. **Who It's For** - Target audience + exclusions
6. **Proof** - Evidence and examples
7. **Objections** - FAQ-style handling (6 objections)
8. **Guarantee** - Money-back promise
9. **Offer** - Final pitch with pricing
10. **Footer** - Links and copyright

## Best For

- Info products and courses
- Frameworks and methodologies
- Educational offers
- Ebooks and playbooks
- Coaching programs
- Digital products under $100

## Not Ideal For

- Visual products (needs images)
- High-ticket offers (needs more trust elements)
- SaaS products (needs feature lists)
- E-commerce (needs product galleries)

## Key Differentiators

1. **Reading Experience** - Designed for long-form reading
2. **Authority** - Serif font conveys expertise
3. **Simplicity** - No distractions, just content
4. **Scannability** - Clear hierarchy with subheads
5. **Conversion Focus** - Multiple CTAs throughout

## Customization Tips

### Change Colors
```css
body {
  background: #YOUR_BACKGROUND;
  color: #YOUR_TEXT;
}

.hero .pre-headline {
  color: #YOUR_ACCENT;
}

.btn {
  background: #YOUR_CTA_COLOR;
}
```

### Adjust Width
```css
.page {
  max-width: 800px; /* Wider for more content */
}
```

### Add Images
Insert `<img>` tags between paragraphs:
```html
<p>Your text here...</p>
<img src="your-image.jpg" style="max-width: 100%; margin: 32px 0;">
<p>More text...</p>
```

## File

- `minimal-serif-template.html` - Main template with placeholders

## Example Use Case

This template was designed for the "FastStart Operator" framework - a $27 digital product teaching a 90-minute deployment system. The long-form format allows for detailed explanation of the methodology, proof through demonstration, and handling of common objections.

## Comparison to Other Templates

| Template | Style | Best For | Complexity |
|----------|-------|----------|------------|
| Minimal Serif | Light, text-heavy | Info products, frameworks | Low |
| Professional Gold | Light, structured | Courses, services | Medium |
| Dark Cyan | Dark, modern | Tech, SaaS | Medium |

## License

Free to use for personal and commercial projects.