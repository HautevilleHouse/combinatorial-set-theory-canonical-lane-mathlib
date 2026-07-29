import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure InfiniteRamseyPackage where
  hypergraph : Type u
  coloring : Type v
  homogeneousSetExists : Prop
  infiniteRamseyTheorem : Prop

structure InfiniteRamseyEvidence (R : InfiniteRamseyPackage) where
  homogeneousSetExistsClosed : R.homogeneousSetExists
  infiniteRamseyTheoremClosed : R.infiniteRamseyTheorem

def InfiniteRamseyClosed (R : InfiniteRamseyPackage) : Prop :=
  R.homogeneousSetExists ∧ R.infiniteRamseyTheorem

theorem infinite_ramsey_closed_from_evidence (R : InfiniteRamseyPackage) (E : InfiniteRamseyEvidence R) : InfiniteRamseyClosed R := by
  exact And.intro E.homogeneousSetExistsClosed E.infiniteRamseyTheoremClosed

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse