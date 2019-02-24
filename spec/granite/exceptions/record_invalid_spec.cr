require "../../spec_helper"

describe Granite::RecordNotSaved do
  pending "should have a message" do
    parent = Parent.new
    parent.save

    Granite::RecordNotSaved
      .new(Parent.name, parent)
      .message
      .should eq("Could not process Parent")
  end

  pending "should have a model" do
    parent = Parent.new
    parent.save

    Granite::RecordNotSaved
      .new(Parent.name, parent)
      .model
      .should eq(parent)
  end
end
