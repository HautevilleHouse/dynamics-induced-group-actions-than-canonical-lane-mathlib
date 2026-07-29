import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure ErgodicDecompositionPackage where
  measureSpace : InvariantMeasurePackage
  ergodicComponents : List (InvariantMeasurePackage)
  decompositionUnique : Prop
  ergodicComponentClosed : Prop

def ErgodicDecompositionClosed (E : ErgodicDecompositionPackage) : Prop :=
  E.decompositionUnique ∧ E.ergodicComponentClosed

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse