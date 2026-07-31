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
- ✅ Custom event tracking with properties
- ✅ UTM parameter capture
- ✅ End-to-end encryption support
- ✅ Cookieless & GDPR compliant
- ✅ No consent banner required
- ✅ On-device AI insights

## Installation

1. Download [`template.tpl`](https://marketist.site/api/gtm-template)
   (GitHub's raw view serves `.tpl` as plain text, so browsers save it as
   `template.tpl.txt` and GTM rejects the import — use the link above)
2. In GTM: **Templates → Tag Templates → New**, then **⋮ → Import**
3. Select `template.tpl` and click **Save**
4. **Tags → New → Tag Configuration**, scroll to **Custom → Marketist Analytics**
5. Enter your **Website ID**
   (found in Marketist Dashboard → Settings → Tracking → Google Tag Manager)
6. Set trigger to **All Pages**
7. **Save and Publish**

## Finding Your Website ID

1. Log in to https://marketist.site
2. Go to **Settings → Tracking**
3. Copy your Website ID

## Configuration

| Field | Description | Required |
|-------|-------------|----------|
| Website ID | Your Marketist website UUID | ✅ |
| Track Type | `pageview` or `event` | ✅ |
| Event Name | Name for custom events | Custom events only |
| Event Properties | Key/value table for event metadata | Optional |
| Public Key | For E2E-encrypted sites only | Encrypted sites only |
| HMAC Secret | For E2E-encrypted sites only | Encrypted sites only |

## E2E Encryption

If you have enabled E2E encryption in **Settings → Tracking → Encryption**,
paste your **Public Key** and **HMAC Secret** into the corresponding
fields in the GTM tag. Both values are shown in the Marketist dashboard
on the Settings → Tracking → Google Tag Manager tab. Fill in both —
encryption stays off unless the pair is complete.

> **These keys are page-public by design** — they are used by the
> browser to encrypt data before sending it. Placing them in GTM is safe
> and is the same as including them in your HTML snippet.

> **After rotating a site key, re-copy the Public Key into the tag.**
> The tracker checks it against the key registered for the website and
> stops sending data if the two differ, so a stale key here silently
> halts that site's tracking.

## Custom Event Tracking with Properties

To track conversions with dynamic values from your dataLayer, add a
second Marketist tag:

1. **Create new Marketist tag** — Track Type: **Custom Event**
2. Enter the **Event Name** (e.g. `purchase`, `signup_completed`)
3. In **Event Properties**, add rows for each property you want to send.
   Use GTM variables in the Value column:

   | Property name | Value |
   |---------------|-------|
   | `value` | `{{Transaction Revenue}}` |
   | `currency` | `{{Currency Code}}` |
   | `orderId` | `{{Transaction ID}}` |

4. Set trigger to your conversion trigger
5. **Save and Publish**

## Single-Page Apps (React, Vue, Angular, etc.)

GTM fires **All Pages** tags only on the initial page load — it does not
detect client-side route changes automatically.

To track SPA navigation, create a **second** Marketist tag:

- **Track Type:** Pageview
- **Trigger:** History Change (built-in GTM trigger)

This fires on every `pushState` / `replaceState` call without any extra
code in your app. The tag sends a pageview only on these repeat fires —
the initial page load is already counted by the tracker itself, so the
two tags together do not double-count.

## Debug Mode

Add `?_mkt_debug=true` to any page URL to see the Marketist debug overlay.

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
