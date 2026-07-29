import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanCanonicalLaneLean.DynamicsInducedGroupActions

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure SmoothAction (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] where
  group : GroupActionPackage M
  smooth : ∀ g, Smooth M M (group.action g)

structure OrbitStructure (M : Type u) (act : SmoothAction M) where
  orbits : Set (Set M)
  orbitEquivalence : ∀ x y, (∃ g, act.group.action g x = y) ↔ (∃ orbit ∈ orbits, x ∈ orbit ∧ y ∈ orbit)

def OrbitClosed (M : Type u) (act : SmoothAction M) (orb : OrbitStructure M act) : Prop :=
  ∀ orbit ∈ orb.orbits, IsClosed orbit

theorem orbit_closed_from_structure (M : Type u) [TopologicalSpace M] [ChartedSpace ℂ M] (act : SmoothAction M) (orb : OrbitStructure M act) (h : ∀ orbit ∈ orb.orbits, IsClosed orbit) : OrbitClosed M act orb := h

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse