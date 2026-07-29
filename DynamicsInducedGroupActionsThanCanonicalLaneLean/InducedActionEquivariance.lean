import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure InducedActionEquivariancePackage {G : GroupActionDynamicsPackage} where
  subspace : G.actedSpace → Prop
  inducedAction : G.groupCarrier → subspace → subspace
  equivarianceCondition : Prop
  restrictionCompatibility : Prop

structure InducedActionEquivarianceEvidence {G : GroupActionDynamicsPackage}
    (P : InducedActionEquivariancePackage G) where
  equivarianceConditionClosed : P.equivarianceCondition
  restrictionCompatibilityClosed : P.restrictionCompatibility

def InducedActionEquivarianceClosed {G : GroupActionDynamicsPackage}
    (P : InducedActionEquivariancePackage G) : Prop :=
  P.equivarianceCondition ∧ P.restrictionCompatibility

theorem induced_action_equivariance_closed_from_evidence {G : GroupActionDynamicsPackage}
    (P : InducedActionEquivariancePackage G) (E : InducedActionEquivarianceEvidence P) :
    InducedActionEquivarianceClosed P := by
  exact And.intro E.equivarianceConditionClosed E.restrictionCompatibilityClosed

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse