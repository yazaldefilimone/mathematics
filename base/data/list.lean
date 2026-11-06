namespace base.data

inductive IList (α : Type) where
  | nil : IList α
  | cons : α → IList α → IList α

namespace IList

def length {α : Type} : IList α → Nat
  | nil => 0
  | cons _ xs => 1 + length xs

def append {α : Type} : IList α → IList α → IList α
  | nil, ys => ys
  | cons x xs, ys => cons x (append xs ys)

theorem append_nil {α : Type} (xs : IList α) : append xs nil = xs := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
    show cons x (append xs nil) = cons x xs
    rw [ih]

end IList
end base.data
