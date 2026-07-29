import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CombinatorialSetTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

def ConstrainedSetTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_set_theory_endgame (A : AdmissibleClass) :
    ConstrainedSetTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse