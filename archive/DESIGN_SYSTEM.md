# AI Setup Sprint Design System

## Spacing Standards

### Section Padding
- **Default sections:** 70px vertical padding
- **Hero section:** 100px top, 80px bottom
- **Mobile:** 55px vertical padding

### Typography Scale (Increased for readability)
- **Body text:** 18px (17px mobile)
- **H1:** clamp(2.2rem, 5vw, 3.2rem) - white
- **H2:** clamp(1.6rem, 4vw, 2.4rem) - cyan accent
- **H3:** 1.35rem - yellow accent
- **H4:** 1.15rem - white
- **Paragraph:** 1.05rem, line-height 1.75
- **Hero subtitle:** 1.25rem
- **CTA button:** 1.1rem

### Line Heights
- **Headlines:** 1.2-1.3
- **Body text:** 1.75
- **Hero subtitle:** 1.6

### Margins
- **H1 bottom:** 20px
- **H2 bottom:** 25px
- **H3 top/bottom:** 30px/15px
- **H4 bottom:** 10px
- **Paragraph bottom:** 18px

---

## Color Palette

### Backgrounds
- **Primary:** #0f172a (deep navy)
- **Secondary:** #1e293b (slightly lighter)
- **Card background:** rgba(17, 24, 39, 0.82)
- **Gradient:** linear-gradient(180deg, var(--primary), #111827 45%, var(--secondary))
- **Section alt:** rgba(30, 41, 59, 0.4)

### Accent Colors
- **Cyan:** #22d3ee (for H2, step numbers, card titles)
- **Yellow:** #fbbf24 (for H3, CTAs)
- **Green:** #4ade80 (for prices)

### Text Colors
- **White:** #ffffff (H1, H4, strong text)
- **Text:** #e2e8f0 (main body)
- **Text dim:** #94a3b8 (secondary text)
- **Muted:** #64748b (paragraphs)

### Borders
- **Border color:** #233047
- **Border width:** 1px
- **Border radius (cards):** 24px
- **Border radius (buttons):** 16px
- **Border radius (step numbers):** 50%

---

## Component Styles

### Cards
```css
background: var(--card);
border: 1px solid var(--border);
padding: 28px;
border-radius: 24px;
box-shadow: 0 14px 45px rgba(0,0,0,0.25);
text-align: center;
```

### CTA Buttons
```css
background: var(--yellow);
color: #111;
padding: 18px 36px;
font-size: 1.1rem;
font-weight: 800;
border-radius: 16px;
/* Hover: transform: translateY(-3px); box-shadow: 0 10px 30px rgba(251, 191, 36, 0.35); */
```

### Step Cards
```css
background: var(--card);
border: 1px solid var(--border);
border-radius: 24px;
padding: 24px;
box-shadow: 0 14px 45px rgba(0,0,0,0.25);
display: flex; gap: 20px;
```

### Step Numbers
```css
width: 44px;
height: 44px;
background: var(--cyan);
color: #111;
border-radius: 50%;
font-size: 1.2rem;
font-weight: 800;
```

### Highlight Boxes
```css
background: linear-gradient(135deg, rgba(34, 211, 238, 0.15), rgba(251, 191, 36, 0.1));
border: 1px solid var(--border);
padding: 28px;
border-radius: 24px;
box-shadow: 0 14px 45px rgba(0,0,0,0.25);
text-align: center;
```

---

## Layout Patterns

### Container
- **Max-width:** 760px
- **Centered:** margin: 0 auto

### Grids
- **Problem grid:** repeat(auto-fit, minmax(280px, 1fr)), gap 18px
- **Feature grid:** repeat(auto-fit, minmax(300px, 1fr)), gap 18px
- **Wins grid:** repeat(auto-fit, minmax(220px, 1fr)), gap 15px

### Section Alternation
1. Hero (gradient background)
2. Section-dark (transparent)
3. Section-alt (rgba(30, 41, 59, 0.4))
4. Section-dark
5. Section-alt
6. Continue alternating...

---

## Typography Patterns

### Eyebrow Text
```css
color: var(--cyan);
font-size: 14px;
font-weight: 800;
letter-spacing: 0.2em;
text-transform: uppercase;
margin-bottom: 15px;
```

### Strong Text
- Color: var(--text) or #fff
- Font-weight: 700

---

## Mobile Adaptations
- Section padding: 55px
- Hero padding: 70px top, 55px bottom
- Body font: 17px
- Step cards: flex-direction: column

---

## Key Principles

1. **All dark backgrounds** - No white/light sections
2. **Rounded corners everywhere** - 24px for cards, 16px for buttons
3. **Light borders** - 1px solid #233047
4. **Multi-color accents** - Cyan for H2/titles, Yellow for H3/CTAs, Green for prices
5. **Generous spacing** - 70px sections, 18px paragraph margins
6. **Increased font sizes** - 18px base, larger headlines
7. **Shadow effects** - Subtle shadows on all cards
8. **Gradient backgrounds** - Smooth dark gradients

---

Saved: 2026-04-17
Source: AI Setup Sprint v2 design iteration
