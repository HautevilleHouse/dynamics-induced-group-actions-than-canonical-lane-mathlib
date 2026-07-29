import DynamicsInducedGroupActionsThanCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicsAdmittedObject where
  space : DynamicsSpace
  groupAction : Prop
  inducedAction : Prop
  invariantMeasure : Prop
  ergodicProperty : Prop
  conclusion : invariantMeasure ∧ ergodicProperty

structure DynamicsEndgameState where
  object : DynamicsAdmittedObject

def DynamicsWitnessClosed (O : DynamicsAdmittedObject) : Prop :=
  O.invariantMeasure ∧ O.ergodicProperty

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse
