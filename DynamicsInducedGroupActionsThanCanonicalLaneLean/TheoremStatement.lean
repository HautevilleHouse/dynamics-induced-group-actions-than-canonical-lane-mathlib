import DynamicsInducedGroupActionsThanCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure DynamicsThanSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicsThanAdmittedObject where
  space : DynamicsThanSpace
  dynamicsInduced : Prop
  groupActionContinuous : Prop
  conclusion : dynamicsInduced ∧ groupActionContinuous

def DynamicsWitnessClosed (O : DynamicsThanAdmittedObject) : Prop :=
  O.dynamicsInduced ∧ O.groupActionContinuous

theorem dynamics_witness_closed_from_object (O : DynamicsThanAdmittedObject) :
    DynamicsWitnessClosed O := by
  exact O.conclusion

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse