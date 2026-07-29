import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure MartinAxiomPackage where
  cccForcing : Type u
  genericFilterExists : Prop
  martinAxiomStatement : Prop
  consistencyWithCH : Prop

structure MartinAxiomEvidence (M : MartinAxiomPackage) where
  cccForcingDefined : Prop
  genericFilterExistsClosed : M.genericFilterExists
  martinAxiomStatementClosed : M.martinAxiomStatement
  consistencyWithCHClosed : M.consistencyWithCH

def MartinAxiomClosed (M : MartinAxiomPackage) : Prop :=
  M.genericFilterExists ∧ M.martinAxiomStatement ∧ M.consistencyWithCH

theorem martin_axiom_closed_from_evidence
    (M : MartinAxiomPackage) (E : MartinAxiomEvidence M) :
    MartinAxiomClosed M := by
  exact And.intro E.genericFilterExistsClosed
    (And.intro E.martinAxiomStatementClosed E.consistencyWithCHClosed)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse