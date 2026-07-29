import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanCanonicalLaneLean.ThanOperatorBridge

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

def ConstrainedDynamicsInducedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamics_induced_endgame (A : AdmissibleClass) :
    ConstrainedDynamicsInducedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse