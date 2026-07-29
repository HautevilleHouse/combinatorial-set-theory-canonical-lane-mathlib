import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure ForcingAxiomsPackage (G : GenericFilterPackage) where
  partialOrder : Type u
  denseOpen : Type v
  genericFilter : Type w
  axiomSatisfied : Prop
  impliesMartinMaximum : Prop

structure ForcingAxiomsEvidence {G : GenericFilterPackage} (F : ForcingAxiomsPackage G) where
  axiomSatisfiedClosed : F.axiomSatisfied
  impliesMartinMaximumClosed : F.impliesMartinMaximum

def ForcingAxiomsClosed {G : GenericFilterPackage} (F : ForcingAxiomsPackage G) : Prop :=
  F.axiomSatisfied ∧ F.impliesMartinMaximum

theorem forcing_axioms_closed_from_evidence
    {G : GenericFilterPackage} (F : ForcingAxiomsPackage G)
    (E : ForcingAxiomsEvidence F) : ForcingAxiomsClosed F := by
  exact And.intro E.axiomSatisfiedClosed E.impliesMartinMaximumClosed

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse