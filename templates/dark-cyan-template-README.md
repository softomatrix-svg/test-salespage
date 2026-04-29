# Dark Cyan Sales Page Template

A dark-themed sales page template with cyan/teal accents and modern styling.

## Features

- **Dark Theme** - Deep navy/black backgrounds (#0a0f1e, #141414)
- **Cyan Accents** - Bright cyan/teal highlights (#00d9ff, #10b981)
- **Gold CTAs** - Warm gold buttons (#fbbf24, #f59e0b)
- **Video Integration** - Built-in video player section
- **6 Problem Cards** - Grid layout with icons
- **6 Feature Components** - Icon + content cards
- **5-Phase Timeline** - Visual roadmap
- **3-Tier Pricing** - Featured middle option
- **FAQ Section** - 6 questions
- **Mobile Responsive**

## Color Palette

| Color | Hex Code | Usage |
|-------|----------|-------|
| Dark Navy | #0a0f1e | Primary background |
| Dark Gray | #141414 | Card backgrounds |
| Border Gray | #1a2332 | Borders, dividers |
| Cyan | #00d9ff | Eyebrow text, accents |
| Teal | #10b981 | Gradients, highlights |
| Gold | #fbbf24 | CTA buttons |
| Dark Gold | #f59e0b | Button gradients |
| Light Gray | #94a3b8 | Body text |
| Muted Gray | #64748b | Secondary text |

## Typography

- **Font Family**: System UI stack (-apple-system, BlinkMacSystemFont, etc.)
- **Hero H1**: 4rem (64px)
- **Section H2**: 2.5rem (40px)
- **Body Text**: 1.25rem (20px) for intros, 0.95rem (15px) for cards
- **Line Height**: 1.6

## Sections

1. **Hero** - Dark gradient, headline, subheadline, video, CTA
2. **Problem** - 6 problem cards in grid
3. **Solution** - Product intro, 6 feature cards
4. **Timeline** - 5-phase roadmap with numbered circles
5. **Pricing** - 3 pricing tiers with featured middle option
6. **Guarantee** - Badge + guarantee text
7. **FAQ** - 6 Q&A items
8. **Final CTA** - Closing call-to-action
9. **Footer** - Copyright

## How to Use

1. Copy `dark-cyan-sales-template.html`
2. Replace content between HTML tags
3. Update video source URL
4. Customize colors in CSS if needed
5. Deploy to any static host

## Key CSS Classes

- `.hero` - Hero section with gradient
- `.problem` - Problem agitation section
- `.solution` - Product features section
- `.timeline` - Roadmap section
- `.pricing` - Pricing cards section
- `.guarantee` - Money-back guarantee
- `.faq` - FAQ section
- `.final-cta` - Closing CTA
- `.cta-button` - Primary call-to-action buttons

## Customization

### Change Colors

```css
.hero {
  background: linear-gradient(135deg, #YOUR_DARK 0%, #YOUR_DARKER 100%);
}

.eyebrow {
  color: #YOUR_ACCENT;
}

.hero h1 .highlight {
  background: linear-gradient(135deg, #YOUR_ACCENT 0%, #YOUR_SECONDARY 100%);
}
```

### Add/Remove Problem Cards

Duplicate or delete `.problem-card` divs inside `.problem-grid`.

### Change Video

Update the video source URL:

```html
<video controls playsinline>
  <source src="YOUR_VIDEO_URL" type="video/mp4">
</video>
```

## Responsive Breakpoints

- **Desktop**: Default styles (1200px max-width container)
- **Mobile**: 768px breakpoint - reduces hero font size, stacks pricing cards

## Files

- `dark-cyan-sales-template.html` - Main template
- `README.md` - This documentation

## License

Free to use for personal and commercial projects.