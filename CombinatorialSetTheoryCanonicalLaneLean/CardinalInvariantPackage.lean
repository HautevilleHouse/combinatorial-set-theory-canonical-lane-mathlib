import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure CardinalInvariantPackage where
  cardinal : Type u
  invariantProperty : Prop
  inequality : Prop
  consistencyResult : Prop

structure CardinalInvariantEvidence (C : CardinalInvariantPackage) where
  invariantPropertyClosed : C.invariantProperty
  inequalityClosed : C.inequality
  consistencyResultClosed : C.consistencyResult

def CardinalInvariantClosed (C : CardinalInvariantPackage) : Prop :=
  C.invariantProperty ∧ C.inequality ∧ C.consistencyResult

theorem cardinal_invariant_closed_from_evidence (C : CardinalInvariantPackage) (E : CardinalInvariantEvidence C) : CardinalInvariantClosed C := by
  exact And.intro E.invariantPropertyClosed (And.intro E.inequalityClosed E.consistencyResultClosed)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse