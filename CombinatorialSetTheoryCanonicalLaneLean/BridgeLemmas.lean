import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialSetTheoryCanonicalLaneLean
end HautevilleHouse