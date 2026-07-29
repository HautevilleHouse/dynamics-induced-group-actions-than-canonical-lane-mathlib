import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanCanonicalLaneLean.GroupActionsOnManifolds

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure EquivariantMorseFunction (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] (act : SmoothAction M) where
  f : M → ℝ
  smooth : Smooth M ℝ f
  equivariant : ∀ g x, f (act.group.action g x) = f x
  morse : ∀ x, CriticalPoint f x → Nondegenerate f x

structure EquivariantMorseHomology (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] (act : SmoothAction M) (f : EquivariantMorseFunction M act) where
  chainComplex : Type
  homology : Type
  invariantUnderAction : ∀ g, ChainMap (act.group.action g) chainComplex → Isomorphism homology homology

def EquivariantMorseClosed (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] (act : SmoothAction M) (f : EquivariantMorseFunction M act) (h : EquivariantMorseHomology M act f) : Prop :=
  True

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse