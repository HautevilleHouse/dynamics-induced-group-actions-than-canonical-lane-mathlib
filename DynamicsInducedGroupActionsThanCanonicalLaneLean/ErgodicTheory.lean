import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure ErgodicTheoryPackage (G : Type u) (X : Type v) [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X] where
  measurePreservingAction : Prop
  ergodicity : Prop
  mixingProperties : Prop
  entropy : Prop

structure ErgodicTheoryEvidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : ErgodicTheoryPackage G X) where
  measurePreservingActionClosed : P.measurePreservingAction
  ergodicityClosed : P.ergodicity
  mixingPropertiesClosed : P.mixingProperties
  entropyClosed : P.entropy

def ErgodicTheoryClosed {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : ErgodicTheoryPackage G X) : Prop :=
  P.measurePreservingAction ∧ P.ergodicity ∧ P.mixingProperties ∧ P.entropy

theorem ergodic_theory_closed_from_evidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : ErgodicTheoryPackage G X) (E : ErgodicTheoryEvidence P) :
    ErgodicTheoryClosed P := by
  exact And.intro E.measurePreservingActionClosed
    (And.intro E.ergodicityClosed
      (And.intro E.mixingPropertiesClosed E.entropyClosed))

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse