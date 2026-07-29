import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure ProperForcingPackage (F : ForcingAxiomsPackage G) where
  properCondition : Type u
  preservationOfStationary : Prop
  properAxiom : Prop
  iterationPreservesProperness : Prop

structure ProperForcingEvidence {F : ForcingAxiomsPackage G} (P : ProperForcingPackage F) where
  preservationOfStationaryClosed : P.preservationOfStationary
  properAxiomClosed : P.properAxiom
  iterationPreservesPropernessClosed : P.iterationPreservesProperness

def ProperForcingClosed {F : ForcingAxiomsPackage G} (P : ProperForcingPackage F) : Prop :=
  P.preservationOfStationary ∧ P.properAxiom ∧ P.iterationPreservesProperness

theorem proper_forcing_closed_from_evidence
    {F : ForcingAxiomsPackage G} (P : ProperForcingPackage F)
    (E : ProperForcingEvidence P) : ProperForcingClosed P := by
  exact And.intro E.preservationOfStationaryClosed
    (And.intro E.properAxiomClosed E.iterationPreservesPropernessClosed)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse