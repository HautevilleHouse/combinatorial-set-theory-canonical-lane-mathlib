import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse