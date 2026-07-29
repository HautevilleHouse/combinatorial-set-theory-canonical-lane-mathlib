import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure LargeCardinalAxiomPackage where
  cardinalType : Type u
  inaccessibility : Prop
  measurability : Prop
  strongCompactness : Prop
  supercompactness : Prop

structure LargeCardinalAxiomEvidence (L : LargeCardinalAxiomPackage) where
  inaccessibilityClosed : L.inaccessibility
  measurabilityClosed : L.measurability
  strongCompactnessClosed : L.strongCompactness
  supercompactnessClosed : L.supercompactness

def LargeCardinalAxiomClosed (L : LargeCardinalAxiomPackage) : Prop :=
  L.inaccessibility ∧ L.measurability ∧ L.strongCompactness ∧ L.supercompactness

theorem large_cardinal_axiom_closed_from_evidence (L : LargeCardinalAxiomPackage)
    (E : LargeCardinalAxiomEvidence L) : LargeCardinalAxiomClosed L := by
  exact And.intro E.inaccessibilityClosed
    (And.intro E.measurabilityClosed
      (And.intro E.strongCompactnessClosed E.supercompactnessClosed))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse