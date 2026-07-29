import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInducedGroupActionsThanCanonicalLaneLean.DynamicsInducedGroupActions

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure MeasurePreservingAction (X : Type u) [MeasureSpace X] where
  group : GroupActionPackage X
  invariantMeasure : Measure X
  invariantUnderAction : ∀ g, MeasurePreserving (group.action g) invariantMeasure invariantMeasure

structure ErgodicAction (X : Type u) [MeasureSpace X] (act : MeasurePreservingAction X) where
  ergodic : ∀ E : Set X, MeasurableSet E → (∀ g, act.group.action g '' E = E) → (invariantMeasure E = 0 ∨ invariantMeasure E = 1)
  where invariantMeasure := act.invariantMeasure

def ErgodicClosed (A : AdmissibleClass) : Prop := True

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse