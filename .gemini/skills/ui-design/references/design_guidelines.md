# UI Design Guidelines Reference

## Core Requirements

### Semantic HTML
- Use proper HTML5 semantic elements (header, nav, main, section, article, aside, footer)
- Ensure proper heading hierarchy (h1, h2, h3, etc.)
- Include appropriate ARIA attributes for accessibility
- Use meaningful alt text for images
- Structure content logically for screen readers

### TailwindCSS Styling
- Follow utility-first approach
- Use consistent spacing scale (0, 1, 2, 3, 4, 5, 6, 8, 10, 12, 16, 20, 24, 32, 40, 48, 56, 64)
- Use consistent color palette
- Apply responsive design with Tailwind's responsive prefixes
- Leverage Tailwind's typography utilities

### JavaScript Usage
- Use JavaScript only when necessary for interactions
- Keep JavaScript minimal and focused
- Use event listeners appropriately
- Implement progressive enhancement
- Ensure functionality works without JavaScript when possible

## Modern Aesthetic Guidelines

### Visual Design Principles
- **Minimalism**: Clean design without unnecessary elements
- **White Space**: Generous padding and margins (use Tailwind spacing utilities)
- **Hierarchy**: Clear visual hierarchy through size, weight, and color
- **Consistency**: Consistent design patterns throughout
- **Balance**: Balanced composition and layout

### Spacing System
- Use consistent spacing based on Tailwind's spacing scale
- Maintain consistent padding inside components
- Apply consistent margins between components
- Use responsive spacing for different screen sizes

### Typography
- Use clear font hierarchy (heading sizes and weights)
- Maintain good line height (use Tailwind's leading utilities)
- Ensure proper contrast ratios (4.5:1 for normal text, 3:1 for large text)
- Use legible font sizes (minimum 16px for body text)

### Color Palette
- Limit to 3-5 primary colors
- Use neutral backgrounds (gray, white, off-white)
- Use accent colors sparingly for actions and highlights
- Ensure good contrast between text and background
- Consider color-blind friendly palettes

### Shadows and Depth
- Use soft shadows for depth (shadow-sm, shadow, shadow-md)
- Avoid harsh shadows
- Apply consistent shadow depth throughout
- Use shadows to separate content layers

### Rounded Corners
- Apply consistent border radius (rounded, rounded-lg, rounded-xl)
- Use same radius throughout for consistency
- Avoid mixing different radius sizes in same component

## Layout Patterns

### Grid Systems
- Use Tailwind's grid system for complex layouts
- Apply responsive grid columns
- Maintain consistent gaps between grid items
- Consider content priority when designing grid layouts

### Flexbox Patterns
- Use flexbox for simple alignment and distribution
- Apply responsive flex properties
- Use flex-wrap for responsive layouts
- Combine with spacing utilities for proper distribution

### Card Components
- Include consistent padding (p-4, p-6)
- Apply rounded corners (rounded-lg, rounded-xl)
- Use soft shadows (shadow-sm, shadow)
- Include clear content grouping
- Ensure consistent card sizes where appropriate

### Button Styles
- Make buttons clearly clickable with appropriate size
- Use consistent padding (px-4, py-2)
- Apply hover states (hover:opacity-90, hover:scale-[1.02])
- Use focus states for accessibility
- Differentiate button types (primary, secondary, etc.)

## Interaction Patterns

### Hover Effects
- Apply subtle hover effects (opacity changes, scale, color shifts)
- Use smooth transitions (transition-all, duration-200)
- Ensure hover states are consistent across similar elements
- Avoid jarring or distracting hover effects

### Transitions
- Use consistent transition durations
- Apply transitions to interactive elements
- Keep animations subtle and purposeful
- Consider performance when adding transitions

### JavaScript Interactions
- Toggle menus and dropdowns
- Accordions and collapsible sections
- Modal dialogs
- Form validation feedback
- Loading states
- Simple animations (fade, slide, scale)

## Code Structure

### HTML Structure
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Page Title</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
  <!-- Content here -->
</body>
</html>
```

### CSS Styling
- Use Tailwind utility classes exclusively
- No custom CSS unless absolutely necessary
- Leverage Tailwind's responsive prefixes
- Use arbitrary values sparingly

### JavaScript Implementation
- Place JavaScript in `<script>` tags at bottom of body
- Use event listeners appropriately
- Keep functions small and focused
- Use modern JavaScript syntax (ES6+)

## Accessibility Guidelines

- Use semantic HTML elements
- Ensure proper heading hierarchy
- Include alt text for images
- Use ARIA attributes where needed
- Maintain good color contrast
- Ensure keyboard navigation works
- Test with screen readers when possible