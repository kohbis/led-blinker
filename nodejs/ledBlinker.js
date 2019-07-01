'use strict';

const Gpio = require('onoff').Gpio;
const pin = new Gpio(2, 'out');

const sleep = (ms) => {
  return new Promise(resolve => setTimeout(resolve, ms))
}

const main = async () => {
  try {
    for (let i = 0; i < 7; i++) {
      pin.writeSync(1);
      await sleep(1000);
      pin.writeSync(0);
      await sleep(1000);
    }
  } catch (err) {
    console.log(err);
  } finally {
    pin.unexport();
  }
}

main();
