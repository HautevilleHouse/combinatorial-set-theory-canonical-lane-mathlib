import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CombinatorialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CombinatorialAdmittedObject where
  space : CombinatorialSpace
  infiniteCombinatorialProperty : Prop
  uncountableCoherence : Prop
  combinatorialModel : Type
  modelTopology : TopologicalSpace combinatorialModel
  modelSatisfiesProperty : Prop
  conclusion : modelSatisfiesProperty

structure CombinatorialEndgameState where
  object : CombinatorialAdmittedObject

def CombinatorialWitnessClosed (O : CombinatorialAdmittedObject) : Prop :=
  O.modelSatisfiesProperty

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse