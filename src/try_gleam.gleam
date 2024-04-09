//// this is a comment for module

import gleam/io.{println}
import gleam/string as str
import gleam/int
import gleam/bool

const lib_name = "gleam"

/// this is a comment for type, fn, etc
pub type Status =
  String

pub fn main() {
  println("Hello world in gleam!")
  println(
    "asdasd
  asdsad
  asdasd",
  )
  io.println(str.reverse("Hello world in gleam!"))
  io.debug(4)
  io.debug(int.max(4, 5))
  io.debug(5 / 2)
  io.debug(5.0 /. 2.0)
  io.debug(2_000_000)
  io.debug(2 == 2)
  io.debug(2 != 2)
  println("hello" <> "world")
  io.debug(bool.to_string(True))

  let a = "hello"

  let _b = a

  let a = "hello2"
  let c: String = "hello3"
  io.println(a)
  io.println(c)

  let d: Status = "hello4"
  io.println(d)

  // scope
  let val = {
    let default_val = 99
    default_val
  }

  io.debug(val)
  // io.debug(default_val)

  let arr = [1, 2, 3]
  io.debug([0, ..arr])
  println(lib_name <> "eiei")
  io.debug(double(2))
  let eiei = pass_fn
  io.debug(eiei(double, 5))

  let anonymous_fn = fn(a: String) -> String { a }
  io.println(anonymous_fn("asd"))

  let _full_anonymous_fn = fn(x) { pass_fn(double, x) }
  let fn_short_hand = pass_fn(double, _)
  let result = fn_short_hand(10)
  io.debug(result)

  // generic
  // generic_fn("error", plus_one)
  generic_fn(10, plus_one)

  // pipe
  "Hello"
  |> str.reverse()
  |> io.debug
  // labelled args
  some_fn(10, v2: "asd", v3: True)

  old_school()
}

fn double(v: Int) -> Int {
  v * 2
}

fn pass_fn(some_fn: fn(Int) -> Int, v: Int) -> Int {
  some_fn(v)
}

fn plus_one(val: Int) -> Int {
  val + 1
}

fn concat_eiei(val: String) -> String {
  val <> "eiei"
}

fn generic_fn(val: value, function: fn(value) -> value) -> value {
  function(val)
}

fn some_fn(v1: Int, v2 inner_v2: String, v3 innver_v3: Bool) -> Int {
  io.debug(v1)
  io.debug(inner_v2)
  io.debug(innver_v3)
  v1
}

@deprecated("Do not use this functiob krub")
fn old_school() {
  println("deprecated")
}
