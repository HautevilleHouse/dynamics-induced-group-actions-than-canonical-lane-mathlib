import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure GroupActionTopologyPackage where
  actingGroup : Type u
  space : Type v
  action : actingGroup → space → space
  continuousAction : Prop
  properAction : Prop
  orbitSpaceHausdorff : Prop

def GroupActionTopologyClosed (G : GroupActionTopologyPackage) : Prop :=
  G.continuousAction ∧ G.properAction ∧ G.orbitSpaceHausdorff

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse