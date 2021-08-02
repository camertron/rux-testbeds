class HomeComponent < ViewComponent::Base
  include(RuxBootstrap::Buttons)

  def call
    Rux.tag("div") {
      Rux.create_buffer.tap { |_rux_buf_,|
        _rux_buf_ << " "
        _rux_buf_ << render(DangerButton.new(**{ outline: true, size: :large, disabled: "true", block_level: true })) {
          " Click Me! "
        }
        _rux_buf_ << " "
      }.to_s
    }
  end
end
