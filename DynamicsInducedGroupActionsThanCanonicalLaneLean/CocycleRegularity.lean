import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure CocycleRegularityPackage where
  actingGroup : Type u
  coefficientGroup : Type v
  cocycle : actingGroup → coefficientGroup
  coboundaryCondition : Prop
  cohomologyClassDefined : Prop
  regularityCondition : Prop

def CocycleRegularityClosed (C : CocycleRegularityPackage) : Prop :=
  C.coboundaryCondition ∧ C.cohomologyClassDefined ∧ C.regularityCondition

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse