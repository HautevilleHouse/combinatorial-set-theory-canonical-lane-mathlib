import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure LargeCardinalAxiomPackage where
  inaccessibleExists : Prop
  measurableExists : Prop
  strongCompactExists : Prop
  supercompactExists : Prop
  consistencyStrengthComparison : Prop

structure LargeCardinalAxiomEvidence (L : LargeCardinalAxiomPackage) where
  inaccessibleExistsClosed : L.inaccessibleExists
  measurableExistsClosed : L.measurableExists
  strongCompactExistsClosed : L.strongCompactExists
  supercompactExistsClosed : L.supercompactExists
  consistencyStrengthComparisonClosed : L.consistencyStrengthComparison

def LargeCardinalAxiomClosed (L : LargeCardinalAxiomPackage) : Prop :=
  L.inaccessibleExists ∧ L.measurableExists ∧ L.strongCompactExists ∧
  L.supercompactExists ∧ L.consistencyStrengthComparison

theorem large_cardinal_axiom_closed_from_evidence
    (L : LargeCardinalAxiomPackage) (E : LargeCardinalAxiomEvidence L) :
    LargeCardinalAxiomClosed L := by
  exact And.intro E.inaccessibleExistsClosed
    (And.intro E.measurableExistsClosed
      (And.intro E.strongCompactExistsClosed
        (And.intro E.supercompactExistsClosed E.consistencyStrengthComparisonClosed)))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse