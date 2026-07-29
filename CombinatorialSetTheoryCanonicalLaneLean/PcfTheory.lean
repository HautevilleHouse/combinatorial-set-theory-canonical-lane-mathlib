import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure PcfTheoryPackage (S : SingularCardinalsPackage) where
  pcfFamily : Type u
  pcfGenerator : Type v
  pcfStructure : Prop
  shelahBound : Prop
  cofinalitySpectrum : Prop
  pcfCoveringLemma : Prop

structure PcfTheoryEvidence {S : SingularCardinalsPackage} (P : PcfTheoryPackage S) where
  pcfStructureClosed : P.pcfStructure
  shelahBoundClosed : P.shelahBound
  cofinalitySpectrumClosed : P.cofinalitySpectrum
  pcfCoveringLemmaClosed : P.pcfCoveringLemma

def PcfTheoryClosed {S : SingularCardinalsPackage} (P : PcfTheoryPackage S) : Prop :=
  P.pcfStructure ∧ P.shelahBound ∧ P.cofinalitySpectrum ∧ P.pcfCoveringLemma

theorem pcf_theory_closed_from_evidence
    {S : SingularCardinalsPackage} (P : PcfTheoryPackage S)
    (E : PcfTheoryEvidence P) : PcfTheoryClosed P := by
  exact And.intro E.pcfStructureClosed
    (And.intro E.shelahBoundClosed
      (And.intro E.cofinalitySpectrumClosed E.pcfCoveringLemmaClosed))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse