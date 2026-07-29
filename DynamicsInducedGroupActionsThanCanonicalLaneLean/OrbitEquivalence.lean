import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure OrbitEquivalencePackage where
  space : Type u
  groupAction : GroupActionTopologyPackage
  orbitEquivalenceRelation : Prop
  crossSection : Prop
  orbitTypeClassification : Prop

def OrbitEquivalenceClosed (O : OrbitEquivalencePackage) : Prop :=
  O.orbitEquivalenceRelation ∧ O.crossSection ∧ O.orbitTypeClassification

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse