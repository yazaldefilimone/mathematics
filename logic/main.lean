def and (a b : Prop) : Prop := a ∧ b

theorem and_comm (a b : Prop) : and a b ↔ and b a :=
begin
  split,
  { intro h, exact ⟨h.right, h.left⟩ },
  { intro h, exact ⟨h.right, h.left⟩ }
end
