module RenderWithAbs
  class Railtie < Rails::Railtie
    initializer "render_with_abs.action_controller" do
      ActiveSupport.on_load(:action_controller) do
        include RenderWithAbs::ControllerMethods
      end
    end
  end
end
