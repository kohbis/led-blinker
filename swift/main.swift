import Glibc
import SwiftyGPIO

let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
var gp = gpios[.P2]!

gp.direction = .OUT

for _ in 1...7 {
    gp.value = 1
    sleep(1)
    gp.value = 0
    sleep(1)
}
