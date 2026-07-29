import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure InvariantMeasuresPackage (G : Type u) (X : Type v) [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X] where
  invariantMeasureExistence : Prop
  ergodicDecomposition : Prop
  uniqueErgodicMeasure : Prop
  invariantMeasureClassification : Prop

structure InvariantMeasuresEvidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : InvariantMeasuresPackage G X) where
  invariantMeasureExistenceClosed : P.invariantMeasureExistence
  ergodicDecompositionClosed : P.ergodicDecomposition
  uniqueErgodicMeasureClosed : P.uniqueErgodicMeasure
  invariantMeasureClassificationClosed : P.invariantMeasureClassification

def InvariantMeasuresClosed {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : InvariantMeasuresPackage G X) : Prop :=
  P.invariantMeasureExistence ∧ P.ergodicDecomposition ∧ P.uniqueErgodicMeasure ∧ P.invariantMeasureClassification

theorem invariant_measures_closed_from_evidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : InvariantMeasuresPackage G X) (E : InvariantMeasuresEvidence P) :
    InvariantMeasuresClosed P := by
  exact And.intro E.invariantMeasureExistenceClosed
    (And.intro E.ergodicDecompositionClosed
      (And.intro E.uniqueErgodicMeasureClosed E.invariantMeasureClassificationClosed))

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse