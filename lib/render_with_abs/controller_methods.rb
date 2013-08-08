module RenderWithAbs
  module ControllerMethods
    private
    def render_with_abs(template)
      render template + "_#{a_or_b}"
    end

    def a_or_b
      rand > 0.5 ? :a : :b
    end
  end
end
