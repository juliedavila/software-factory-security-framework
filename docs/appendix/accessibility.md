# Accessibility Statement

## Our Commitment

The Software Factory Security Framework (SF²) is committed to ensuring digital accessibility for people with disabilities. We are continually improving the user experience for everyone and applying the relevant accessibility standards.

## Conformance Status

This website aims to conform to the [Web Content Accessibility Guidelines (WCAG) 2.1](https://www.w3.org/WAI/WCAG21/quickref/) Level AA standards.

## Accessibility Features

### Current Implementations

✅ **Keyboard Navigation**: All interactive elements are accessible via keyboard
✅ **Focus Indicators**: Clear visual indicators for keyboard focus
✅ **Text Alternatives**: Priority levels include text labels, not color alone
✅ **Link Distinction**: Links are underlined, not identified by color alone
✅ **Reduced Motion**: Respects user's reduced motion preferences
✅ **High Contrast**: Enhanced borders and text in high contrast mode
✅ **Semantic HTML**: Proper heading hierarchy and ARIA landmarks
✅ **Responsive Design**: Adapts to different screen sizes and zoom levels
✅ **Screen Reader Compatible**: Tested with major screen readers

### Navigation Shortcuts

- **Tab**: Navigate forward through interactive elements
- **Shift + Tab**: Navigate backward through interactive elements
- **Enter**: Activate links and buttons
- **Space**: Scroll page down
- **Shift + Space**: Scroll page up
- **Home**: Jump to top of page
- **End**: Jump to bottom of page

### Color Contrast

All text meets WCAG AA contrast requirements:

- **Normal text**: 4.5:1 contrast ratio
- **Large text**: 3:1 contrast ratio
- **Color-coded elements**: Include text labels in addition to color

### Text Sizing

Text can be resized up to 200% without loss of functionality:

1. **Browser zoom**: Use Ctrl/Cmd + Plus (+) or Minus (-)
2. **Font size**: Adjust in browser settings
3. **Reader mode**: Most browsers support reader mode for focused reading

## Known Limitations

We are aware of the following accessibility considerations:

- **Social cards**: Auto-generated preview images may not have descriptive alt text
- **Code blocks**: Syntax highlighting uses color; consider using screenreader-friendly code readers
- **Print view**: Some interactive elements are not available in print mode

## Feedback

We welcome feedback on the accessibility of this framework. If you encounter accessibility barriers, please let us know:

- **Open an issue**: [GitLab Issues](https://gitlab.com/juliedavila/software-factory-security-framework/-/issues)
- **Email**: Include "Accessibility" in the subject line

Please provide:

- The web page URL where you encountered the issue
- A description of the problem
- What assistive technology you were using (if applicable)
- Your preferred method of communication

## Technical Specifications

### Compatibility

This website is designed to be compatible with:

**Browsers**:

- Chrome, Firefox, Safari, Edge (latest 2 versions)
- Mobile browsers on iOS and Android

**Assistive Technologies**:

- NVDA (Windows)
- JAWS (Windows)
- VoiceOver (macOS, iOS)
- TalkBack (Android)

**Technologies**:

- HTML5
- CSS3
- JavaScript (progressively enhanced)
- MkDocs Material theme

### Standards Applied

- [WCAG 2.1 Level AA](https://www.w3.org/WAI/WCAG21/quickref/)
- [ARIA Authoring Practices](https://www.w3.org/WAI/ARIA/apg/)
- [Section 508](https://www.section508.gov/)

## Assessment

Last accessibility review: January 2025

Methodology:

- Manual keyboard navigation testing
- Screen reader testing (NVDA, VoiceOver)
- Automated testing (axe DevTools, WAVE)
- Color contrast analysis
- HTML validation

## Continuous Improvement

We are committed to ongoing accessibility improvements:

**Regular reviews**: Quarterly accessibility audits
**Content guidelines**: Writers follow accessibility best practices
**Testing**: New features tested for accessibility before deployment
**Training**: Contributors educated on accessible content creation

## Additional Resources

### For Content Contributors

When adding content to this framework:

1. **Use descriptive link text**: Avoid "click here" or "read more"
   - ❌ Bad: "Click [here](#) for more information"
   - ✅ Good: "[Review the implementation guide](#)"

2. **Provide text alternatives**: Add alt text for all images
   ```markdown
   ![Two-axis positioning model showing complexity vs readiness](image.png)
   ```

3. **Use semantic headings**: Follow heading hierarchy (H1 → H2 → H3)

4. **Write descriptive table headers**: Use `<th>` for column/row headers

5. **Avoid color-only information**: Include text labels
   - ❌ Bad: "Items in red are critical"
   - ✅ Good: "Critical items (shown with red border) require immediate attention"

6. **Use lists appropriately**: Use `<ul>` for unordered, `<ol>` for ordered

7. **Keep language clear**: Write at 8th-grade reading level when possible

### Accessibility Tools

Recommended tools for testing:

- [axe DevTools](https://www.deque.com/axe/devtools/) (browser extension)
- [WAVE](https://wave.webaim.org/) (web accessibility evaluation tool)
- [Lighthouse](https://developers.google.com/web/tools/lighthouse) (Chrome DevTools)
- [Color Contrast Analyzer](https://www.tpgi.com/color-contrast-checker/)

---

## Contact

For questions about this accessibility statement:

**Repository**: https://gitlab.com/juliedavila/software-factory-security-framework
**Issues**: https://gitlab.com/juliedavila/software-factory-security-framework/-/issues

---

**Last Updated**: January 2025
**Framework Version**: 0.3.4

[:octicons-arrow-left-24: Back to References](references.md){ .md-button }
[:octicons-arrow-right-24: Report Accessibility Issue](https://gitlab.com/juliedavila/software-factory-security-framework/-/issues/new){ .md-button }
