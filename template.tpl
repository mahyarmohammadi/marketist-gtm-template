___INFO___

{
  "type": "TAG",
  "id": "cvt_marketist",
  "version": 1,
  "securityGroups": [],
  "displayName": "Marketist Analytics",
  "categories": ["ANALYTICS"],
  "brand": {
    "id": "brand_marketist",
    "displayName": "Marketist",
    "thumbnail": "data:image/png;base64,..."
  },
  "description": "Privacy-first AI marketing analytics. No cookies, GDPR compliant, with on-device AI insights.",
  "containerContexts": ["WEB"]
}

___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "trackingId",
    "displayName": "Website ID",
    "simpleValueType": true,
    "valueValidators": [{
      "type": "NON_EMPTY"
    }],
    "help": "Find your Website ID in Marketist Dashboard → Settings → Tracking"
  },
  {
    "type": "SELECT",
    "name": "trackType",
    "displayName": "Track Type",
    "simpleValueType": true,
    "defaultValue": "pageview",
    "selectItems": [
      {"value": "pageview", "displayValue": "Pageview"},
      {"value": "event", "displayValue": "Custom Event"}
    ]
  },
  {
    "type": "TEXT",
    "name": "eventName",
    "displayName": "Event Name",
    "simpleValueType": true,
    "enablingConditions": [{
      "paramName": "trackType",
      "paramValue": "event",
      "type": "EQUALS"
    }],
    "help": "e.g. purchase, signup, demo_request"
  },
  {
    "type": "PARAM_TABLE",
    "name": "eventProperties",
    "displayName": "Event Properties",
    "enablingConditions": [{
      "paramName": "trackType",
      "paramValue": "event",
      "type": "EQUALS"
    }],
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "key",
          "displayName": "Property Name",
          "simpleValueType": true
        },
        "isUnique": true
      },
      {
        "param": {
          "type": "TEXT",
          "name": "value",
          "displayName": "Value",
          "simpleValueType": true
        }
      }
    ]
  }
]

___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const callInWindow = require('callInWindow');
const makeString = require('makeString');
const log = require('logToConsole');

const trackingId = data.trackingId;
const trackType = data.trackType;

// Set tracking ID for the script
const setInWindow = require('setInWindow');
setInWindow('_mkt_site', trackingId, true);

// Function to run after script loads
function onScriptLoad() {
  if (trackType === 'event') {
    const props = {};
    if (data.eventProperties) {
      data.eventProperties.forEach(function(row) {
        props[row.key] = row.value;
      });
    }
    callInWindow('marketist.track', data.eventName, props);
  }
  data.gtmOnSuccess();
}

function onScriptError() {
  log('Marketist: Failed to load tracker script');
  data.gtmOnFailure();
}

// Load the Marketist tracker
injectScript(
  'https://marketist-c78m.vercel.app/tracker.js',
  onScriptLoad,
  onScriptError,
  'marketist_tracker'
);

___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [{
        "key": "urls",
        "value": {
          "type": 2,
          "listItem": [{
            "type": 1,
            "string": "https://marketist-c78m.vercel.app/"
          }]
        }
      }]
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
                  {"type": 1, "string": "key"},
                  {"type": 1, "string": "read"},
                  {"type": 1, "string": "write"},
                  {"type": 1, "string": "execute"}
                ],
                "mapValue": [
                  {"type": 1, "string": "_mkt_site"},
                  {"type": 8, "boolean": false},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": false}
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {"type": 1, "string": "key"},
                  {"type": 1, "string": "read"},
                  {"type": 1, "string": "write"},
                  {"type": 1, "string": "execute"}
                ],
                "mapValue": [
                  {"type": 1, "string": "marketist"},
                  {"type": 8, "boolean": false},
                  {"type": 8, "boolean": false},
                  {"type": 8, "boolean": true}
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
  }
]

___NOTES___

Install instructions:
1. Add this tag to your GTM container
2. Enter your Marketist Website ID
   (found in Dashboard → Settings → Tracking)
3. Set trigger to "All Pages"
4. Publish your container

For custom event tracking:
1. Create a new tag using this template
2. Select "Custom Event" as Track Type
3. Enter your event name
4. Set trigger to your custom trigger
5. Publish

Privacy:
- No cookies are set
- No personal data collected
- GDPR compliant without consent banner
- IP addresses are anonymized server-side
