namespace base.data

inductive INat where
  | zero : INat
  | succ : INat → INat

namespace INat

def add (n m : INat) : INat :=
  match m with
  | zero => n
  | succ m' => succ (add n m')

instance : Add INat where
  add := add

theorem add_zero (n : INat) : n + zero = n := rfl

theorem zero_add (n : INat) : zero + n = n := by
  induction n with
  | zero => rfl
  | succ n' ih =>
    show succ (zero + n') = succ n'
    rw [ih]

theorem add_succ (n m : INat) : n + succ m = succ (n + m) := rfl

theorem succ_add (n m : INat) : succ n + m = succ (n + m) := by
  induction m with
  | zero => rfl
  | succ m' ih =>
    show succ (succ n + m') = succ (succ (n + m'))
    rw [ih]

theorem add_assoc (a b c : INat) : (a + b) + c = a + (b + c) := by
  induction c with
  | zero => rfl
  | succ c' ih =>
    show succ ((a + b) + c') = succ (a + (b + c'))
    rw [ih]

theorem add_comm (a b : INat) : a + b = b + a := by
  induction b with
  | zero =>
    rw [add_zero, zero_add]
  | succ b' ih =>
    rw [add_succ, succ_add, ih]

end INat
end base.data
