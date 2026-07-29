import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse
