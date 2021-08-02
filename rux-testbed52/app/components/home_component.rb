class HomeComponent < ViewComponent::Base
  include(RuxBootstrap::Buttons)

  def call
    Rux.tag("div") {
      render(DangerButton.new(outline: true, size: :large, disabled: "true", block_level: true)) {
        " Click Me! "
      }
    }
  end
end
