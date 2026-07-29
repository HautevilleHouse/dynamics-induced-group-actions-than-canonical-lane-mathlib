import DynamicsInducedGroupActionsThanCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dynamicsProjection : Projection DynamicsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dynamics_projection_idempotent (x : DynamicsEndgameState) :
    dynamicsProjection.toFun (dynamicsProjection.toFun x) = dynamicsProjection.toFun x := by
  exact dynamicsProjection.idempotent x

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse
