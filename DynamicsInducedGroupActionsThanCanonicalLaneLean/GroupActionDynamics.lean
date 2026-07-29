import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure GroupActionDynamicsPackage where
  actedSpace : Type u
  groupCarrier : Type v
  groupAction : groupCarrier → actedSpace → actedSpace
  actionContinuity : Prop
  invariantMeasures : Prop
  ergodicComponents : Prop

structure GroupActionDynamicsEvidence (G : GroupActionDynamicsPackage) where
  actionContinuityClosed : G.actionContinuity
  invariantMeasuresClosed : G.invariantMeasures
  ergodicComponentsClosed : G.ergodicComponents

def GroupActionDynamicsClosed (G : GroupActionDynamicsPackage) : Prop :=
  G.actionContinuity ∧ G.invariantMeasures ∧ G.ergodicComponents

theorem group_action_dynamics_closed_from_evidence (G : GroupActionDynamicsPackage)
    (E : GroupActionDynamicsEvidence G) : GroupActionDynamicsClosed G := by
  exact And.intro E.actionContinuityClosed
    (And.intro E.invariantMeasuresClosed E.ergodicComponentsClosed)

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse