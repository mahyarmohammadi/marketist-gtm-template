# Marketist Analytics — GTM Template

Official Google Tag Manager template for
[Marketist](https://marketist.site) —
Privacy-first AI analytics platform.

## Features

- ✅ Pageview tracking
- ✅ Click tracking with coordinates
- ✅ Scroll depth tracking
- ✅ Rage click detection
- ✅ DOM snapshot for heatmaps
- ✅ Custom event tracking via dataLayer
- ✅ UTM parameter capture
- ✅ Cookieless & GDPR compliant
- ✅ No consent banner required
- ✅ On-device AI insights

## Installation

### Via GTM Community Gallery

1. In GTM: **Tags → New → Discover more tag types**
2. Search **"Marketist"**
3. Click **Marketist Analytics → Add to workspace**
4. Enter your **Website ID**
   (found in Marketist Dashboard → Settings → Tracking)
5. Set trigger to **All Pages**
6. **Save and Publish**

### Manual Installation

1. Download `template.tpl`
2. In GTM → Templates → New
3. Click ⋮ → Import
4. Select `template.tpl`
5. Save and publish

## Finding Your Website ID

1. Log in to https://marketist.site
2. Go to **Settings → Tracking**
3. Copy your Website ID

## Configuration

| Field | Description | Required |
|-------|-------------|----------|
| Website ID | Your Marketist website UUID | ✅ |
| Track Type | pageview or custom event | ✅ |
| Event Name | Name for custom events | Custom only |

## Custom Event Tracking

To track conversions, add a second tag:

1. Create new Marketist tag
2. Select **Track Type: Custom Event**
3. Enter event name (e.g. `purchase`, `signup`, `demo_request`)
4. Set trigger to your conversion trigger
5. Save and Publish

## Debug Mode

Add `?_mkt_debug=true` to any page URL
to see the Marketist debug overlay.

## Privacy

- No cookies set
- No personal data collected
- IP addresses anonymized server-side
- GDPR compliant by design
- Data stored in EU (Frankfurt)

## Support

- Documentation: https://marketist.site/dashboard/settings/tracking
- Issues: Use the GitHub Issues tab above
- Email: hello@marketist.site
