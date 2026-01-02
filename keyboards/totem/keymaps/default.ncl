let { tap, hold, td, combo, encoder, .. } = import "fak/keycode.ncl" in

let kc = tap.reg.kc in
let md = hold.reg.mod in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in
let MO = hold.reg.layer in
let me = tap.custom.media in

let cu = {
  BOOT = tap.custom.fak.BOOT,
} in

{
  virtual_keys = [
  ],
  layers = [
    [
             kc.Q, kc.W, kc.E, kc.R, kc.T,     kc.Y, kc.U, kc.I, kc.O, kc.P,
             kc.A, kc.S, kc.D, kc.F, kc.G,     kc.H, kc.J, kc.K, kc.L, kc.SCLN,
    kc.BSPC, kc.Z, kc.X, kc.C, kc.V, kc.B,     kc.B, kc.N, kc.M, kc.COMM, kc.DOT, kc.SLSH,
                   kc.SPC, kc.SPC, kc.SPC,     kc.SPC, kc.SPC, kc.SPC,
    ]
  ]
}
