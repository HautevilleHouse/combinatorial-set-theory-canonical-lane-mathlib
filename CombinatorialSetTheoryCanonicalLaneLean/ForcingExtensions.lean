import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure ForcingExtensionPackage where
  partialOrder : Type u
  genericFilterExists : Prop
  extensionModel : Prop
  forcingRelationDefined : Prop

structure ForcingExtensionEvidence (F : ForcingExtensionPackage) where
  genericFilterExistsClosed : F.genericFilterExists
  extensionModelClosed : F.extensionModel
  forcingRelationDefinedClosed : F.forcingRelationDefined

def ForcingExtensionClosed (F : ForcingExtensionPackage) : Prop :=
  F.genericFilterExists ∧ F.extensionModel ∧ F.forcingRelationDefined

theorem forcing_extension_closed_from_evidence
    (F : ForcingExtensionPackage) (E : ForcingExtensionEvidence F) :
    ForcingExtensionClosed F := by
  exact And.intro E.genericFilterExistsClosed
    (And.intro E.extensionModelClosed E.forcingRelationDefinedClosed)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse