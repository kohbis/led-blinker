require 'pi_piper'

pin = PiPiper::Pin.new(:pin => 2, :direction => :out)

7.times do
  pin.on
  sleep 1
  pin.off
  sleep 1
end
