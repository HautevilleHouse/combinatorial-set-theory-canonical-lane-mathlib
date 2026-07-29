import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure ForcingAxiomPackage where
  partialOrder : Type u
  genericFilter : Type v
  denseSet : Prop
  filterMeetsDense : Prop
  axiomSatisfied : Prop

structure ForcingAxiomEvidence (F : ForcingAxiomPackage) where
  denseSetClosed : F.denseSet
  filterMeetsDenseClosed : F.filterMeetsDense
  axiomSatisfiedClosed : F.axiomSatisfied

def ForcingAxiomClosed (F : ForcingAxiomPackage) : Prop :=
  F.denseSet ∧ F.filterMeetsDense ∧ F.axiomSatisfied

theorem forcing_axiom_closed_from_evidence (F : ForcingAxiomPackage) (E : ForcingAxiomEvidence F) : ForcingAxiomClosed F := by
  exact And.intro E.denseSetClosed (And.intro E.filterMeetsDenseClosed E.axiomSatisfiedClosed)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse