import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanCanonicalLaneLean.DynamicsInducedGroupActions

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure SymbolicDynamics (X : Type u) where
  alphabet : Type v
  shift : (ℕ → alphabet) → (ℕ → alphabet)
  shiftDef : ∀ s n, shift s n = s (n+1)

structure GroupActionOnShiftSpace (X : Type u) (symb : SymbolicDynamics X) where
  group : GroupActionPackage (ℕ → symb.alphabet)
  actionCommutesWithShift : ∀ g s, symb.shift (group.action g s) = group.action g (symb.shift s)

def SymbolicDynamicsClosed (A : AdmissibleClass) : Prop := True

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse