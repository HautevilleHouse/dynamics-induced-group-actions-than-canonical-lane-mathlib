import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure GroupActionFlowPackage (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] where
  action : G → Homeomorph X X
  continuous : Continuous (Function.uncurry (fun g x => (action g) x)) : Prop
  flowProperty : ∀ g h x, (action (g * h)) x = (action g) ((action h) x)
  flowPropertyTerm : flowProperty

structure GroupActionFlowEvidence {G : Type u} [Group G] {X : Type v} [TopologicalSpace X]
    (F : GroupActionFlowPackage G X) where
  continuousClosed : F.continuous
  flowPropertyClosed : F.flowProperty

def GroupActionFlowClosed {G : Type u} [Group G] {X : Type v} [TopologicalSpace X]
    (F : GroupActionFlowPackage G X) : Prop :=
  F.continuous ∧ F.flowProperty

theorem group_action_flow_closed_from_evidence {G : Type u} [Group G] {X : Type v} [TopologicalSpace X]
    (F : GroupActionFlowPackage G X) (E : GroupActionFlowEvidence F) : GroupActionFlowClosed F :=
  And.intro E.continuousClosed E.flowPropertyClosed

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse