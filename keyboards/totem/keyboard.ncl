let { ColToRowKey, PeripheralSideKey, PhysicalEncoder, PeripheralSideEncoder, SoftSerialPin, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

let M = ColToRowKey in
let S = PeripheralSideKey in
  
#             | SW01  | SW02  | SW03  | SW04  | SW05  |  | SW05  | SW04  | SW03  | SW02  | SW01  |
#             | SW06  | SW07  | SW08  | SW09  | SW10  |  | SW10  | SW09  | SW08  | SW07  | SW06  | 
#      | SW16 | SW11  | SW12  | SW13  | SW14  | SW15  |  | SW15  | SW14  | SW13  | SW12  | SW11  | SW16  |
#                             | SW17  | SW18  | SW19  |  | SW19  | SW18  | SW17  | 

let kbd_matrix = {
  cols = [35, 34, 15, 16, 17],
  rows = [32, 11, 12, 13],
} in

let side_periph = {
  mcu = CH552T,
  split.channel = CH552T.features.uart_30_31,
  matrix = kbd_matrix,
  keys = [
    M 4 0, M 3 0, M 2 0, M 1 0, M 0 0,
    M 4 1, M 3 1, M 2 1, M 1 1, M 0 1,
    M 4 2, M 3 2, M 2 2, M 1 2, M 0 2, M 0 3,
    M 4 3, M 3 3, M 2 3
  ]
} in

{
  mcu = CH552T,
  split.channel = CH552T.features.uart_30_31,
  split.peripheral = side_periph,
  matrix = kbd_matrix,
  usb_dev = {
    vendor_id = 4348,
    product_id = 1,
    product_ver = 130,
  },
  keys = [
           M 0 0, M 1 0, M 2 0, M 3 0, M 4 0,     S 0, S 1, S 2, S 3, S 4,
           M 0 1, M 1 1, M 2 1, M 3 1, M 4 1,     S 5, S 6, S 7, S 8, S 9,
    M 0 3, M 0 2, M 1 2, M 2 2, M 3 2, M 4 2,     S 10, S 11, S 12, S 13, S 14, S 15,
                         M 2 3, M 3 3, M 4 3,     S 16, S 17, S 18,
  ]
}
