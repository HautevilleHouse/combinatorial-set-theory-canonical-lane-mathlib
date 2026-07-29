import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure DiamondPrinciplePackage where
  cardinalType : Type u
  stationarySetFamily : Type v
  diamondSequence : Type w
  sequenceGuessing : Prop
  stationaryCorrectness : Prop

structure DiamondPrincipleEvidence (D : DiamondPrinciplePackage) where
  sequenceGuessingClosed : D.sequenceGuessing
  stationaryCorrectnessClosed : D.stationaryCorrectness

def DiamondPrincipleClosed (D : DiamondPrinciplePackage) : Prop :=
  D.sequenceGuessing ∧ D.stationaryCorrectness

theorem diamond_principle_closed_from_evidence (D : DiamondPrinciplePackage)
    (E : DiamondPrincipleEvidence D) : DiamondPrincipleClosed D := by
  exact And.intro E.sequenceGuessingClosed E.stationaryCorrectnessClosed

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse