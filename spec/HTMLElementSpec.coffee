require "node-jquery"
HTMLElement = require "HTMLElement"

describe "HTMLElement", ->

  it "should have data() of jQuery", ->
    elem = new HTMLElement
    expect(elem.data).not.toBeUndefined()
    expect(elem.data).toEqual $("<div>").data
 
  describe "to_css_name", ->
    f = HTMLElement.to_css_name

    it "returns css class name for given function", ->
      expect(f "SequenceObject").toBe "object"
      expect(f "SequenceInteraction").toBe "interaction"
      expect(f "SequenceOccurrence").toBe "occurrence"
      
      expect(f "HTMLElement").toBe "htmlelement"

    it "has Diagram get a hyphenated suffixthe", ->
      expect(f "SequenceDiagram").toBe "sequence-diagram"
      
