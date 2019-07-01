use std::error::Error;
use std::thread;
use std::time::Duration;

use rppal::gpio::Gpio;

const GPIO_LED: u8 = 2;

fn main() -> Result<(), Box<dyn Error>> {

    let mut pin = Gpio::new()?.get(GPIO_LED)?.into_output();

    for _ in 0..7 {
        pin.set_high();
        thread::sleep(Duration::from_secs(1));
        pin.set_low();
        thread::sleep(Duration::from_secs(1));
    };

    Ok(())
}
