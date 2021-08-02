class FlagsComponent < ViewComponent::Base
  def initialize(first_name:)
    @first_name = first_name
  end

  def call
    Rux.tag("p") {
      Rux.create_buffer.tap { |_rux_buf_|
        _rux_buf_ << "Hey there, "
        _rux_buf_ << @first_name
        _rux_buf_ << "!"
      }.to_s
    }
  end
end
