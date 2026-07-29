import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure RamseyTheoremPackage where
  hypergraphType : Type u
  edgeColoring : Type v
  infiniteSubset : Prop
  homogeneousSet : Prop
  finiteVersion : Prop

structure RamseyTheoremEvidence (R : RamseyTheoremPackage) where
  infiniteSubsetClosed : R.infiniteSubset
  homogeneousSetClosed : R.homogeneousSet
  finiteVersionClosed : R.finiteVersion

def RamseyTheoremClosed (R : RamseyTheoremPackage) : Prop :=
  R.infiniteSubset ∧ R.homogeneousSet ∧ R.finiteVersion

theorem ramsey_theorem_closed_from_evidence (R : RamseyTheoremPackage)
    (E : RamseyTheoremEvidence R) : RamseyTheoremClosed R := by
  exact And.intro E.infiniteSubsetClosed
    (And.intro E.homogeneousSetClosed E.finiteVersionClosed)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse