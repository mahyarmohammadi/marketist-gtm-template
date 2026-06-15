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
  "description": "Privacy-first AI marketing analytics. \n  No cookies, GDPR compliant, on-device AI insights.",
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
    "simpleValueType": true
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
    "defaultValue": "pageview"
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
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "eventProperties",
    "displayName": "Event Properties (optional — use GTM variables for dynamic values)",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Property name",
        "name": "name",
        "isUnique": true
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
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
    "displayName": "RSA Public Key — only for E2E-encrypted sites (Settings → Tracking → Encryption)",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "hmacSecret",
    "displayName": "HMAC Secret — only for E2E-encrypted sites (Settings → Tracking → Encryption)",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const callInWindow = require('callInWindow');
const setInWindow = require('setInWindow');
const log = require('logToConsole');

// Set all globals before the script loads — matches direct-snippet ordering
// (globals first, async script second) so the tracker reads them at eval time.
setInWindow('_mkt_site', data.trackingId, true);
if (data.publicKey)   setInWindow('_mkt_public_key', data.publicKey,   true);
if (data.hmacSecret)  setInWindow('_mkt_hmac',        data.hmacSecret,  true);

function buildProps(rows) {
  var p = {};
  if (rows) {
    for (var i = 0; i < rows.length; i++) {
      if (rows[i].name) p[rows[i].name] = rows[i].value || '';
    }
  }
  return p;
}

function onScriptLoad() {
  if (data.trackType === 'event' && data.eventName) {
    callInWindow('marketist.track', data.eventName, buildProps(data.eventProperties));
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
                    "boolean": false
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
                    "boolean": false
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
                    "boolean": false
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
                    "string": "marketist"
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
