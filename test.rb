require 'minitest/autorun'
require 'minitest/spec'
require './gittex.rb'

describe GitTex do
  [:in].each do |method_name|
    it "must respond to #{method_name}" do
      GitTex.respond_to?(method_name).must_be true
    end
  end

  it "should have a repository after being instantiated" do
    fail
  end
end
