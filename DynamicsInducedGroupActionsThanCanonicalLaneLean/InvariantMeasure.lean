import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure InvariantMeasurePackage where
  space : Type u
  sigmaAlgebra : Set (Set space)
  measure : Measure space sigmaAlgebra
  groupAction : GroupActionTopologyPackage
  invariantUnderAction : Prop
  ergodicComponent : Prop

def InvariantMeasureClosed (M : InvariantMeasurePackage) : Prop :=
  M.invariantUnderAction ∧ M.ergodicComponent

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse