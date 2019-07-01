package main

import (
    "os"
    "fmt"
    "time"
    "github.com/stianeikeland/go-rpio"
)

var (
    pin = rpio.Pin(2)
)

func main()  {

    err := rpio.Open()

    if err != nil {
        fmt.Println(err)
        os.Exit(1)
    }

    pin.Output()

    for i := 0; i < 7; i++ {
        pin.High()
        time.Sleep(1 * time.Second)
        pin.Low()
        time.Sleep(1 * time.Second)
    } 

    rpio.Close()
}
