import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure DiamondAndSquarePackage (P : JensenPrinciplePackage) where
  diamondSequence : Type u
  squareSequence : Type v
  diamondPrediction : Prop
  squareCoherence : Prop
  diamondHolds : Prop
  squareHolds : Prop

structure DiamondAndSquareEvidence {P : JensenPrinciplePackage} (D : DiamondAndSquarePackage P) where
  diamondPredictionClosed : D.diamondPrediction
  squareCoherenceClosed : D.squareCoherence
  diamondHoldsClosed : D.diamondHolds
  squareHoldsClosed : D.squareHolds

def DiamondAndSquareClosed {P : JensenPrinciplePackage} (D : DiamondAndSquarePackage P) : Prop :=
  D.diamondPrediction ∧ D.squareCoherence ∧ D.diamondHolds ∧ D.squareHolds

theorem diamond_and_square_closed_from_evidence
    {P : JensenPrinciplePackage} (D : DiamondAndSquarePackage P)
    (E : DiamondAndSquareEvidence D) : DiamondAndSquareClosed D := by
  exact And.intro E.diamondPredictionClosed
    (And.intro E.squareCoherenceClosed
      (And.intro E.diamondHoldsClosed E.squareHoldsClosed))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse