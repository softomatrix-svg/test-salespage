# Sales Page Template

A professional, high-converting sales page template with dark navy hero section, gold accents, and clean typography.

## Features

- **Dark Navy Hero** (#15152b) with gold border accent
- **Gold/Yellow Color Scheme** (#f0c040, #dfb83f, #c8960c)
- **Large Typography** for headlines and body text
- **Evenly Spaced Video Section** with centered placement
- **6-Problem Grid** layout
- **6-Component Features** section
- **5-Phase Timeline** roadmap
- **3-Tier Pricing** cards with featured option
- **FAQ Section**
- **Money-Back Guarantee** section
- **Mobile Responsive**

## File Structure

```
templates/
├── sales-page-template.html    # Main template with {{PLACEHOLDERS}}
└── README.md                   # This file
```

## How to Use

1. Copy `sales-page-template.html` to your project
2. Replace all `{{PLACEHOLDER}}` variables with your content
3. Customize colors in the CSS if needed
4. Add your video embed code in the video section
5. Update the CTA button links

## Color Palette

| Color | Hex Code | Usage |
|-------|----------|-------|
| Dark Navy | #15152b | Hero background |
| Gold | #f0c040 | CTAs, accents, highlights |
| Dark Gold | #dfb83f | Borders, dividers |
| Muted Gold | #c8960c | Text accents |
| Light Gray | #f5f5f5 | Section backgrounds |
| Off-White | #fffbee | Intro section |
| White | #ffffff | Problem section, cards |

## Typography

- **Headlines**: Georgia, serif
- **Body Text**: Arial, sans-serif
- **Hero H1**: 3.5rem (56px)
- **Section H2**: 2.5rem (40px)
- **Body Text**: 19px
- **Card Text**: 17px

## Sections

1. **Hero** - Dark navy background, headline, subheadline, CTA
2. **Video** - Light gray background, centered video player
3. **Problem** - White background, 6 problem cards
4. **Intro** - Off-white background, product introduction
5. **Components** - White background, 6 feature cards
6. **Timeline** - Light gray background, 5-phase roadmap
7. **Pricing** - White background, 3 pricing tiers
8. **Guarantee** - Dark gradient background
9. **FAQ** - White background, 6 Q&A items
10. **Final CTA** - Light gray background
11. **Footer** - Dark background

## Placeholder Variables

Replace all `{{VARIABLE_NAME}}` placeholders with your content:

- `{{PRODUCT_NAME}}` - Your product/course name
- `{{MAIN_BENEFIT}}` - Primary benefit for SEO title
- `{{TARGET_AUDIENCE}}` - Who this is for
- `{{HEADLINE_PART_1}}` - First part of headline
- `{{HEADLINE_HIGHLIGHT}}` - Highlighted portion (gold color)
- `{{HEADLINE_PART_2}}` - Second part of headline
- `{{SUBHEADLINE}}` - Supporting text below headline
- `{{CTA_BUTTON_TEXT}}` - Primary call-to-action
- `{{GUARANTEE}}` - Guarantee text (e.g., "30-Day Money-Back")
- `{{DELIVERY}}` - Delivery method (e.g., "Instant Access")
- `{{KEY_BENEFIT}}` - Key benefit (e.g., "No Tech Skills Needed")
- And all other `{{PLACEHOLDERS}}` throughout the template

## Example Usage

```html
<!-- Before -->
<h1>{{HEADLINE_PART_1}} <span>{{HEADLINE_HIGHLIGHT}}</span> {{HEADLINE_PART_2}}</h1>

<!-- After -->
<h1>How to <span>Rank #1 on Google Maps</span> in 30 Days Without Hiring an Expensive Agency</h1>
```

## Deployment

This is a static HTML file. Deploy to:
- Vercel
- Netlify
- GitHub Pages
- Any web server

## Customization

### Change Colors
Edit the CSS variables in the `<style>` section:

```css
.hero { background: #YOUR_COLOR; }
.cta-button { background: #YOUR_CTA_COLOR; }
```

### Add/Remove Sections
Simply delete or duplicate section HTML blocks as needed.

### Change Fonts
Update the font-family declarations:

```css
body { font-family: 'Your Font', serif; }
```

## License

Free to use for personal and commercial projects.

## Credits

Template created based on high-converting course sales page designs.