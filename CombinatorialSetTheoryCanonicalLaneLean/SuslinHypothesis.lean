import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure SuslinHypothesisPackage where
  linearOrderType : Type u
  denseWithoutEndpoints : Prop
  countableChainCondition : Prop
  separable : Prop
  suslinLineExists : Prop

structure SuslinHypothesisEvidence (S : SuslinHypothesisPackage) where
  denseWithoutEndpointsClosed : S.denseWithoutEndpoints
  countableChainConditionClosed : S.countableChainCondition
  separableClosed : S.separable
  suslinLineExistsClosed : S.suslinLineExists

def SuslinHypothesisClosed (S : SuslinHypothesisPackage) : Prop :=
  S.denseWithoutEndpoints ∧ S.countableChainCondition ∧ S.separable ∧ S.suslinLineExists

theorem suslin_hypothesis_closed_from_evidence (S : SuslinHypothesisPackage)
    (E : SuslinHypothesisEvidence S) : SuslinHypothesisClosed S := by
  exact And.intro E.denseWithoutEndpointsClosed
    (And.intro E.countableChainConditionClosed
      (And.intro E.separableClosed E.suslinLineExistsClosed))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse