import DynamicsInducedGroupActionsThanCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse
