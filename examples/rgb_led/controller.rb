require_relative 'led_3fet'

if __FILE__ == $0 then
	led = RGBLed.new

	puts "Current color:", "  RGB: #{led.get_rgb}", "  HSV: #{led.get_hsv}"

	puts "Starting color wheel rotation"

	h, s, v = *[0, 1, 0.75]

	while true do 
		h += 5
		h -= 360 if h > 360
		
		led.set_hsv(h, s, v)

		sleep(0.01)
	end
end