import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure StationarySetsPackage (R : RegularCardinalPackage) where
  stationarySet : Type u
  clubFilter : Type v
  diagonalIntersection : Type w
  stationaryReflection : Prop
  clubSetProperty : Prop
  normalFilter : Prop

structure StationarySetsEvidence {R : RegularCardinalPackage} (S : StationarySetsPackage R) where
  stationaryReflectionClosed : S.stationaryReflection
  clubSetPropertyClosed : S.clubSetProperty
  normalFilterClosed : S.normalFilter

def StationarySetsClosed {R : RegularCardinalPackage} (S : StationarySetsPackage R) : Prop :=
  S.stationaryReflection ∧ S.clubSetProperty ∧ S.normalFilter

theorem stationary_sets_closed_from_evidence
    {R : RegularCardinalPackage} (S : StationarySetsPackage R)
    (E : StationarySetsEvidence S) : StationarySetsClosed S := by
  exact And.intro E.stationaryReflectionClosed
    (And.intro E.clubSetPropertyClosed E.normalFilterClosed)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse