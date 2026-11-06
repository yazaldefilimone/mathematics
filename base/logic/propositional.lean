namespace base.logic

theorem and_comm (p q : Prop) : p ∧ q ↔ q ∧ p := by
  apply Iff.intro
  · intro ⟨hp, hq⟩; exact ⟨hq, hp⟩
  · intro ⟨hq, hp⟩; exact ⟨hp, hq⟩

theorem and_assoc (p q r : Prop) : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r) := by
  apply Iff.intro
  · intro ⟨⟨hp, hq⟩, hr⟩; exact ⟨hp, ⟨hq, hr⟩⟩
  · intro ⟨hp, ⟨hq, hr⟩⟩; exact ⟨⟨hp, hq⟩, hr⟩

theorem or_comm (p q : Prop) : p ∨ q ↔ q ∨ p := by
  apply Iff.intro
  · intro h
    cases h with
    | inl hp => exact Or.inr hp
    | inr hq => exact Or.inl hq
  · intro h
    cases h with
    | inl hq => exact Or.inr hq
    | inr hp => exact Or.inl hp

theorem modus_ponens (p q : Prop) (hp : p) (hpq : p → q) : q :=
  hpq hp

theorem contraposition (p q : Prop) (hpq : p → q) : ¬q → ¬p := by
  intro hnq hp
  exact hnq (hpq hp)

end base.logic
