class HomeComponent < ViewComponent::Base
  include(RuxBootstrap::Buttons)

  def call
    Rux.tag("div", class: "container") {
      Rux.create_buffer.tap { |_rux_buf_,|
        _rux_buf_ << render(Image.new(src: "cat.png", size: "40"))
        _rux_buf_ << render(DangerButton.new(outline: true, size: :large, disabled: "true", block_level: true)) {
          " Click Me! "
        }
      }.to_s
    }
  end
end
