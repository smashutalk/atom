path = require 'path'
fs = require 'fs-plus'

# This is loaded by atom.coffee
module.exports =
  core:
    type: 'object'
    properties:
      ignoredNames:
        type: 'array'
        default: [".git", ".hg", ".svn", ".DS_Store", "Thumbs.db"]
        items:
          type: 'string'
      excludeVcsIgnoredPaths:
        type: 'boolean'
        default: true
      disabledPackages:
        type: 'array'
        default: []
        items:
          type: 'string'
      themes:
        type: 'array'
        default: ['atom-dark-ui', 'atom-dark-syntax']
        items:
          type: 'string'
      projectHome:
        type: 'string'
        default: path.join(fs.getHomeDirectory(), 'github')
      audioBeep:
        type: 'boolean'
        default: true
      destroyEmptyPanes:
        type: 'boolean'
        default: true

  editor:
    type: 'object'
    properties:
      fontFamily:
        type: 'string'
        default: ''
      fontSize:
        type: 'integer'
        default: 16
        minimum: 1
      lineHeight:
        type: 'string'
        default: 1.3
      showInvisibles:
        type: 'boolean'
        default: false
      showIndentGuide:
        type: 'boolean'
        default: false
      showLineNumbers:
        type: 'boolean'
        default: true
      autoIndent:
        type: 'boolean'
        default: true
      normalizeIndentOnPaste:
        type: 'boolean'
        default: true
      nonWordCharacters:
        type: 'string'
        default: "/\\()\"':,.;<>~!@#$%^&*|+=[]{}`?-"
      preferredLineLength:
        type: 'integer'
        default: 80
        minimum: 1
      tabLength:
        type: 'integer'
        default: 2
        minimum: 1
      softWrap:
        type: 'boolean'
        default: false
      softTabs:
        type: 'boolean'
        default: true
      softWrapAtPreferredLineLength:
        type: 'boolean'
        default: false
      scrollSensitivity:
        type: 'integer'
        default: 40
        minimum: 10
        maximum: 200
      scrollPastEnd:
        type: 'boolean'
        default: false
      useHardwareAcceleration:
        type: 'boolean'
        default: true
      confirmCheckoutHeadRevision:
        type: 'boolean'
        default: true
      invisibles:
        type: 'object'
        properties:
          eol:
            type: ['string', 'boolean']
            default: '\u00ac'
          space:
            type: ['string', 'boolean']
            default: '\u00b7'
          tab:
            type: ['string', 'boolean']
            default: '\u00bb'
          cr:
            type: ['string', 'boolean']
            default: '\u00a4'
