require "./spec_helper"

describe I18n::Pluralization::Rule::OneTwoOther do
  describe "#apply" do
    it "returns :one when expected" do
      rule = I18n::Pluralization::Rule::OneTwoOther.new
      rule.apply(1).should eq :one
    end

    it "returns :two when expected" do
      rule = I18n::Pluralization::Rule::OneTwoOther.new
      rule.apply(2).should eq :two
    end

    it "returns :other when expected" do
      rule = I18n::Pluralization::Rule::OneTwoOther.new
      [0, 0.3, 1.2, 3, 5, 10, 11, 21, 23, 31, 50, 81, 99, 100].each do |n|
        rule.apply(n).should eq :other
      end
    end
  end
end
