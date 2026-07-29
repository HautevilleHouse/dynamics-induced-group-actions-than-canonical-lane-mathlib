import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanCanonicalLaneLean.InducedActionEquivariance
import HautevilleHouse.DynamicsInducedGroupActionsThanCanonicalLaneLean.ErgodicDecomposition

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure ThanOperatorBridgePackage {G : GroupActionDynamicsPackage}
    {I : InducedActionEquivariancePackage G} {D : ErgodicDecompositionPackage G} where
  thanCondition : Prop
  bridgingLemma : Prop
  connectednessProof : Prop

structure ThanOperatorBridgeEvidence {G : GroupActionDynamicsPackage}
    {I : InducedActionEquivariancePackage G} {D : ErgodicDecompositionPackage G}
    (B : ThanOperatorBridgePackage G I D) where
  thanConditionClosed : B.thanCondition
  bridgingLemmaClosed : B.bridgingLemma
  connectednessProofClosed : B.connectednessProof

def ThanOperatorBridgeClosed {G : GroupActionDynamicsPackage}
    {I : InducedActionEquivariancePackage G} {D : ErgodicDecompositionPackage G}
    (B : ThanOperatorBridgePackage G I D) : Prop :=
  B.thanCondition ∧ B.bridgingLemma ∧ B.connectednessProof

theorem than_operator_bridge_closed_from_evidence {G : GroupActionDynamicsPackage}
    {I : InducedActionEquivariancePackage G} {D : ErgodicDecompositionPackage G}
    (B : ThanOperatorBridgePackage G I D) (E : ThanOperatorBridgeEvidence B) :
    ThanOperatorBridgeClosed B := by
  exact And.intro E.thanConditionClosed
    (And.intro E.bridgingLemmaClosed E.connectednessProofClosed)

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse