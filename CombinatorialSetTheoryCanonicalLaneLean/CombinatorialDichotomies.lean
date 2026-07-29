import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure CombinatorialDichotomyPackage where
  ramseyTheorem : Prop
  erdosRadoTheorem : Prop
  silverDichotomy : Prop
  indexSet : Type u
  polarization : Prop

structure CombinatorialDichotomyEvidence (C : CombinatorialDichotomyPackage) where
  ramseyTheoremClosed : C.ramseyTheorem
  erdosRadoTheoremClosed : C.erdosRadoTheorem
  silverDichotomyClosed : C.silverDichotomy
  polarizationClosed : C.polarization

def CombinatorialDichotomyClosed (C : CombinatorialDichotomyPackage) : Prop :=
  C.ramseyTheorem ∧ C.erdosRadoTheorem ∧ C.silverDichotomy ∧ C.polarization

theorem combinatorial_dichotomy_closed_from_evidence
    (C : CombinatorialDichotomyPackage) (E : CombinatorialDichotomyEvidence C) :
    CombinatorialDichotomyClosed C := by
  exact And.intro E.ramseyTheoremClosed
    (And.intro E.erdosRadoTheoremClosed
      (And.intro E.silverDichotomyClosed E.polarizationClosed))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse