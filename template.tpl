___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Marketist Analytics",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKgAAACqCAYAAAA5gwS/AAAMTWlDQ1BJQ0MgUHJvZmlsZQAASImVVwdYU8kWnltSIQQIREBK6E0QkRJASggt9I4gKiEJEEqMCUHFjiy7gmsXEazoKkXR1RWQxYa6NhbF3hcLKsq6uC525U0IoMu+8r35vrnz33/O/HPOuXPvnQGA3sWXSnNRTQDyJPmy2GB/1uTkFBbpGSAAA0ABzgDhC+RSTnR0OIBluP17eX0NIMr2soNS69/9/7VoCUVyAQBINMTpQrkgD+KfAMBbBVJZPgBEKeTNZ+VLlXgtxDoy6CDENUqcqcKtSpyuwhcHbaJjuRA/AICszufLMgHQ6IM8q0CQCXXoMFrgJBGKJRD7QeyTlzdDCPEiiG2gDZyTrtRnp3+lk/k3zfQRTT4/cwSrYhks5ACxXJrLn/N/piN/l7xcxfAc1rCqZ8lCYpUxw7w9ypkRpsTqEL+VpEdGQawNAIqLhYP2SszMUoQkqOxRG4GcC3MGmBBPkufG8Yb4WCE/IAwqQ4gzJLmR4UM2RRniIKUNzB9aIc7nxUOsB3GNSB4YN2RzTDYjdnjeaxkyLmeIf8qXDfqg1P+syEngqPQx7SwRb0gfcyzMik+CmApxQIE4MRJiDYgj5TlxYUM2qYVZ3MhhG5kiVhmLBcQykSTYX6WPlWfIgmKH7Ovy5MOxY8eyxLzIIXwpPys+RJUr7JGAP+g/jAXrE0k4CcM6Ivnk8OFYhKKAQFXsOFkkSYhT8bieNN8/VjUWt5PmRg/Z4/6i3GAlbwZxvLwgbnhsQT5cnCp9vESaHx2v8hOvzOaHRqv8wfeBcMAFAYAFFLCmgxkgG4g7ussAAAD//2YeHJoACxBJREFU7Z17cFTVHcd/N9ndhE0CbMBiiUwLasJDsIx1aitWrOIYeYqj1j/6sDpOVSoQntZpx/FRX7yi0DrOtLbijJUqImJRUisKfQ0yPMtLiyBCDUnYsNlNsptNbs9vt3d3T/bcvXfDhtwk3zsD956T+zj7OZ8593fPPfde7Z57a3XqY1NhoUbPV19g+1c99bSf/nO0LbH+ZeM8NPfBwYl0poWVqxrpwMGItEp5uZsWLfBJeWaJZ5b56ZNPkseuENsutLkt7/O+B05TNGq2996fr0FQos6CDhCCr1xxAeXnW1fwu+810xvrg9KKM2cU0bSpRVKeKhGJ6DR3fr0QLNlGQFCZFAQVPDoLyoh+vtRHI0e6ZVqK1PHPo/T4E2ekvyxd4qOLR1lve+hQhJavbJS2haASDoKggodK0Nm3FFPlTV6ZliKli8avamE9BYMdsb9yeLHKZuv71sYQbXonJO0Vgko4ICjjUAk6TsSh82zGoS+8eJZ27gzHyE4Y76GfzbEXvz79rJ8+/TQZf/IOIGgMY+I/tKAChUrQbFrCj7a10NpXmmJQ77i9mG643rrlVcWfvAMIGsOY+A+CChQqQZnQQyKWHGUjlqyra6eHf9FAfLp/5JelVFbmSgA2W+Arf+4B6DxBUJkIBBU8zAS1G4cy0ocebiBuFZc9M5Q0TYasSr25IUR/3izHn7weBJVpQVDBw0zQcWNFHDrXXjz58tqmmKD33D1QJmySMjsmBJWBQdAMghYUaFS90l5/6I6PWykc1mnS1QNkwopUa6tO8xfUKTvYIagMDIJmEJRRLV0s+jQvtu7TbGrqoLY2nUpLrXv3/30gQquq0+NPPh4EZQrJCYIKFmanW8Z0y6xiurnS+qo8idR6af2bIdr8bnr8yVtCUJkfBBU8Mgk6doyH5s+zF4fKaM1TTz7lp6OfyfefsZagsWMgqAwNgmaQ8QA=="
  },
  "description": "Privacy-first AI marketing analytics. No cookies, GDPR compliant, on-device AI insights.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "trackingId",
    "displayName": "Website ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Marketist dashboard: Settings - Tracking - Google Tag Manager. This is the website UUID, not your domain name."
  },
  {
    "type": "SELECT",
    "name": "trackType",
    "displayName": "Track Type",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "pageview",
        "displayValue": "Pageview"
      },
      {
        "value": "event",
        "displayValue": "Custom Event"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "pageview",
    "help": "Pageview: use an All Pages trigger. On a single-page app, add a second Pageview tag on a History Change trigger to record client-side route changes. Custom Event: fire on your conversion trigger."
  },
  {
    "type": "TEXT",
    "name": "eventName",
    "displayName": "Event Name",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "trackType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ],
    "help": "For example: purchase, lead_form_submit, signup_completed, demo_requested."
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "eventProperties",
    "displayName": "Event Properties (optional - use GTM variables for dynamic values)",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Property name",
        "name": "name",
        "type": "TEXT",
        "isUnique": true
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
        "type": "TEXT",
        "valueHint": "{{Transaction Revenue}}"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "trackType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "publicKey",
    "displayName": "Public Key - encrypted sites only",
    "simpleValueType": true,
    "lineCount": 4,
    "help": "Copy from Settings - Tracking - Google Tag Manager. Leave blank on plaintext sites. Paste the current key exactly: the tracker compares it against the key registered for this website and stops sending data if they differ. Re-copy it here after any key rotation."
  },
  {
    "type": "TEXT",
    "name": "hmacSecret",
    "displayName": "HMAC Secret - encrypted sites only",
    "simpleValueType": true,
    "help": "Copy from Settings - Tracking - Google Tag Manager. Required whenever a Public Key is set - encryption stays off unless both fields are filled in."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___
const injectScript = require('injectScript');
const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const log = require('logToConsole');

// Read before the write below: true only if a Marketist tag already fired on
// this page. tracker.js sends its own pageview when it loads, so the first tag
// must not send a second one. A later fire (History Change trigger on a
// single-page app) hits an already-loaded tracker that sends nothing by itself,
// and is the one case where this tag has to send the pageview.
const trackerAlreadyRunning = copyFromWindow('_mkt_gtm_loaded');

// Set all globals before the script loads - matches direct-snippet ordering
// (globals first, async script second) so the tracker reads them at eval time.
// Every key here needs BOTH read and write in access_globals: setInWindow asks
// the sandbox for "readwrite", so a write-only grant throws and kills the tag.
setInWindow('_mkt_site', data.trackingId, true);
// Mirrors _mkt_site. The v3 (X-Wing) seal reads the site id to build its AAD
// binding. Current trackers fall back to _mkt_site, but a browser holding an
// older cached tracker copy does not, and would fail the seal. lib/snippet.ts
// emits both names for the same reason.
setInWindow('_mkt_website_id', data.trackingId, true);
if (data.publicKey)   setInWindow('_mkt_public_key', data.publicKey,   true);
if (data.hmacSecret)  setInWindow('_mkt_hmac',        data.hmacSecret,  true);

setInWindow('_mkt_gtm_loaded', true, true);

function buildProps(rows) {
  var p = {};
  if (rows) {
    for (var i = 0; i < rows.length; i++) {
      if (rows[i].name) p[rows[i].name] = rows[i].value || '';
    }
  }
  return p;
}

// Both calls below run only after tracker.js has loaded, so window.marketist is
// the real API by then and no queue stub is needed. createArgumentsQueue cannot
// be used to build one: it resolves the parent of the dotted key and throws
// "Path marketist.track does not exist" whenever window.marketist is absent,
// which is exactly the GTM-only install this template exists to serve.
function onScriptLoad() {
  if (data.trackType === 'event' && data.eventName) {
    callInWindow('marketist.track', data.eventName, buildProps(data.eventProperties));
  } else if (data.trackType === 'pageview' && trackerAlreadyRunning) {
    // Only reached on a repeat fire, i.e. an SPA route change.
    callInWindow('marketist.pageview');
  }
  data.gtmOnSuccess();
}

function onScriptError() {
  log('Marketist: Failed to load tracker script');
  data.gtmOnFailure();
}

injectScript(
  'https://marketist.site/tracker.js',
  onScriptLoad,
  onScriptError,
  'marketist_tracker'
);

___WEB_PERMISSIONS___
[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_mkt_site"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_mkt_website_id"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_mkt_public_key"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_mkt_hmac"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_mkt_gtm_loaded"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "marketist.track"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "marketist.pageview"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://marketist.site/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]

___TESTS___

scenarios: []


___NOTES___

Created on 5/30/2026, 9:33:31 AM
