import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure GroupActionPackage (X : Type u) where
  group : Type v
  action : group → X → X
  identityAction : ∀ x, action 1 x = x
  compatibility : ∀ g h x, action (g * h) x = action g (action h x)

structure DynamicsInducedAction (X : Type u) where
  dynamics : X → X
  inducedMap : ℕ → X → X
  iterates : ∀ n x, inducedMap n x = Nat.iterate dynamics n x

structure ActionEquivariant (X Y : Type u) (φ : X → Y) (actX : GroupActionPackage X) (actY : GroupActionPackage Y) where
  equivariant : ∀ g x, φ (actX.action g x) = actY.action g (φ x)

def ActionClosed (A : AdmissibleClass) : Prop := True

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse