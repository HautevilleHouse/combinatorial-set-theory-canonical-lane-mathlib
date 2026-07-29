import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure ContinuumHypothesisPackage where
  alephOne : Type u
  continuum : Type v
  chStatement : Prop
  consistencyWithZFC : Prop
  independenceFromZFC : Prop

structure ContinuumHypothesisEvidence (C : ContinuumHypothesisPackage) where
  chStatementClosed : C.chStatement
  consistencyWithZFCC : C.consistencyWithZFC
  independenceFromZFCC : C.independenceFromZFC

def ContinuumHypothesisClosed (C : ContinuumHypothesisPackage) : Prop :=
  C.chStatement ∧ C.consistencyWithZFC ∧ C.independenceFromZFC

theorem continuum_hypothesis_closed_from_evidence
    (C : ContinuumHypothesisPackage) (E : ContinuumHypothesisEvidence C) :
    ContinuumHypothesisClosed C := by
  exact And.intro E.chStatementClosed
    (And.intro E.consistencyWithZFCC E.independenceFromZFCC)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse