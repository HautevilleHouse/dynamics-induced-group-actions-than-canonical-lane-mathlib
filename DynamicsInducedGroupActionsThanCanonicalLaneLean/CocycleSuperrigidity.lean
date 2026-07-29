import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure CocycleSuperrigidityPackage (G : Type u) (X : Type v) [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X] where
  cocycleSuperrigidity : Prop
  propertyT : Prop
  orbitEquivalenceRigidity : Prop
  superrigidityClassification : Prop

structure CocycleSuperrigidityEvidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : CocycleSuperrigidityPackage G X) where
  cocycleSuperrigidityClosed : P.cocycleSuperrigidity
  propertyTClosed : P.propertyT
  orbitEquivalenceRigidityClosed : P.orbitEquivalenceRigidity
  superrigidityClassificationClosed : P.superrigidityClassification

def CocycleSuperrigidityClosed {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : CocycleSuperrigidityPackage G X) : Prop :=
  P.cocycleSuperrigidity ∧ P.propertyT ∧ P.orbitEquivalenceRigidity ∧ P.superrigidityClassification

theorem cocycle_superrigidity_closed_from_evidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : CocycleSuperrigidityPackage G X) (E : CocycleSuperrigidityEvidence P) :
    CocycleSuperrigidityClosed P := by
  exact And.intro E.cocycleSuperrigidityClosed
    (And.intro E.propertyTClosed
      (And.intro E.orbitEquivalenceRigidityClosed E.superrigidityClassificationClosed))

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse