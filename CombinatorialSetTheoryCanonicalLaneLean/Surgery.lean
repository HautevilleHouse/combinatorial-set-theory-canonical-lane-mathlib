import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

structure SurgeryPackage {G : ForcingPackage} where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryGenericFilterControlled : Prop
  monotonicitySurvivesSurgery : Prop
  topologyChangeAccounted : Prop

structure SurgeryEvidence {G : ForcingPackage} (U : SurgeryPackage G) where
  surgeryTimesDiscreteClosed : U.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : U.surgeryRegionAdmissible
  postSurgeryGenericFilterControlledClosed : U.postSurgeryGenericFilterControlled
  monotonicitySurvivesSurgeryClosed : U.monotonicitySurvivesSurgery
  topologyChangeAccountedClosed : U.topologyChangeAccounted

def SurgeryClosed {G : ForcingPackage} (U : SurgeryPackage G) : Prop :=
  U.surgeryTimesDiscrete ∧ U.surgeryRegionAdmissible ∧
  U.postSurgeryGenericFilterControlled ∧ U.monotonicitySurvivesSurgery ∧
  U.topologyChangeAccounted

theorem surgery_closed_from_evidence {G : ForcingPackage} (U : SurgeryPackage G)
    (E : SurgeryEvidence U) : SurgeryClosed U := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.surgeryRegionAdmissibleClosed
      (And.intro E.postSurgeryGenericFilterControlledClosed
        (And.intro E.monotonicitySurvivesSurgeryClosed E.topologyChangeAccountedClosed)))

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse