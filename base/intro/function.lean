def hello := "Hello, "
def lean := "Lean!"
def greeting := String.append hello lean

def successor (n : Nat) : Nat := n + 1

def max_nat (a : Nat) (b : Nat) : Nat :=
  if a > b then a else b

abbrev N : Type := Nat
