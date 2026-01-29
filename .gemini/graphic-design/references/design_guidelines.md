# Graphic Design Guidelines Reference

## Core Design Principles

### Modern Aesthetic Requirements
All generated images must follow these principles:

- **Modern**: Contemporary design approach with current trends
- **Clean**: Uncluttered and purposeful design elements
- **Minimal**: Focus on essential elements only
- **Professional**: Suitable for business and professional use
- **High visual hierarchy**: Clear information organization and importance
- **Balanced spacing**: Proper visual breathing room and proportional spacing
- **Readable text areas**: Consideration for overlay text and content
- **Soft shadows**: Subtle depth effects for dimension
- **Subtle gradients**: Gentle color transitions for visual interest
- **Muted or neutral color palettes**: Sophisticated and harmonious colors

### Avoid These Elements
- Cartoon styles or illustrations
- Loud or neon colors
- Overcrowded layouts
- Low-contrast text
- Generic clip-art visuals
- Outdated design patterns
- Excessive visual effects

## Target Use Cases

The designs should be suitable for:
- Tech platforms and software interfaces
- AI tools and applications
- Learning products and educational materials
- Personal portfolios
- Professional social media posts
- Business presentations
- Marketing materials

## Image Generation Specifications

### Resolution and Quality
- Generate high-resolution outputs suitable for various use cases
- Ensure crisp and clear details
- Optimize for both digital and potential print applications

### Composition Guidelines
- Maintain proper aspect ratios for intended use
- Leave adequate space for text overlays
- Consider placement of important elements
- Balance visual weight across the composition

### Color Theory
- Use harmonious color palettes
- Maintain sufficient contrast for readability
- Apply colors consistently throughout the design
- Consider accessibility and color-blind friendly palettes

## Prompt Construction Framework

### Required Elements for Every Prompt
1. **Style**: Modern, minimal, professional
2. **Layout**: Composition and arrangement
3. **Color tone**: Muted, neutral, harmonious
4. **Mood**: Professional, clean, sophisticated
5. **Lighting**: Natural, soft, even
6. **Purpose**: Specific use case or application

### Example Prompt Structure
"A modern, minimal graphic design for [purpose], clean layout, soft neutral background, subtle gradients, strong typography hierarchy, professional UI elements, spacious composition, premium aesthetic, high resolution, realistic lighting, no clutter"

## File Organization

### Directory Structure
```
graphic-designs/
├── linkedin-banner-modern-01.png
├── ai-dashboard-hero-02.png
├── learning-platform-03.jpg
└── portfolio-showcase-04.png
```

### Naming Convention
- Use descriptive names that indicate purpose
- Include style keywords (modern, minimal, professional)
- Add sequential numbering (01, 02, 03)
- Use appropriate file extensions (.png, .jpg)

## MCP Playwright Integration

### Browser Automation Workflow
1. Navigate to https://gemini.google.com
2. Check for authentication requirements
3. If needed, pause and request user login
4. Continue after successful authentication
5. Input constructed prompt
6. Generate images
7. Download generated images
8. Save to local directory

### Error Handling
- Handle authentication failures gracefully
- Manage network connectivity issues
- Handle image generation timeouts
- Manage file download errors
- Handle directory creation failures

## Design Elements to Include

### Typography Considerations
- Space for text overlays
- Readable font areas
- Visual hierarchy in text placement

### Visual Elements
- Consistent spacing system
- Harmonious color relationships
- Balanced composition
- Clear focal points
- Professional aesthetic

### Technical Requirements
- High resolution output
- Appropriate file formats
- Optimized file sizes
- Cross-platform compatibility