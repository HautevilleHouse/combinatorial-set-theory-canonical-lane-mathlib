import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure UltrafilterPackage where
  carrierSet : Type u
  ultrafilter : Set (Set (carrierSet))
  nonprincipal : Prop
  completeness : Cardinal
  measurableLimit : Prop

structure UltrafilterEvidence (U : UltrafilterPackage) where
  ultrafilterClosed : Nonempty U.ultrafilter
  nonprincipalClosed : U.nonprincipal
  completenessClosed : U.completeness ≤ Cardinal.aleph0
  measurableLimitClosed : U.measurableLimit

def UltrafilterClosed (U : UltrafilterPackage) : Prop :=
  Nonempty U.ultrafilter ∧ U.nonprincipal ∧ U.completeness ≤ Cardinal.aleph0 ∧ U.measurableLimit

theorem ultrafilter_closed_from_evidence
    (U : UltrafilterPackage) (E : UltrafilterEvidence U) :
    UltrafilterClosed U := by
  exact And.intro E.ultrafilterClosed
    (And.intro E.nonprincipalClosed
      (And.intro E.completenessClosed E.measurableLimitClosed))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse