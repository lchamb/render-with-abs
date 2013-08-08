require 'spec_helper'

class TestController
  include RenderWithAbs::ControllerMethods

  def index
    render_with_abs 'dashboard'
  end

  private
  def render(*options)
  end
end

 describe 'controller methods' do
  let(:controller){ TestController.new }

  describe "#render_with_abs" do

    it "asks render_with_abs for the example template" do
      controller.should_receive(:render_with_abs).with('dashboard')
      controller.index
    end

    context "it's decided to render the 'A' template" do
      before { controller.stub(:a_or_b).and_return(:a) }

      it "renders 'example_a' template" do
        controller.should_receive(:render).with('dashboard_a')
        controller.index
      end
    end

    context "it's decided to render the 'B' template" do
      before { controller.stub(:a_or_b).and_return(:b) }

      it "renders 'example_b' template" do
        controller.should_receive(:render).with('dashboard_b')
        controller.index
      end
    end

  end
end
