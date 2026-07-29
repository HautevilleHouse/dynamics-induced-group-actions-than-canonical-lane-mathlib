import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanCanonicalLaneLean

structure SpectralTheoryPackage (G : Type u) (X : Type v) [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X] where
  unitaryRepresentation : Prop
  spectralMeasure : Prop
  spectralDecomposition : Prop
  mixingSpectrum : Prop

structure SpectralTheoryEvidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : SpectralTheoryPackage G X) where
  unitaryRepresentationClosed : P.unitaryRepresentation
  spectralMeasureClosed : P.spectralMeasure
  spectralDecompositionClosed : P.spectralDecomposition
  mixingSpectrumClosed : P.mixingSpectrum

def SpectralTheoryClosed {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : SpectralTheoryPackage G X) : Prop :=
  P.unitaryRepresentation ∧ P.spectralMeasure ∧ P.spectralDecomposition ∧ P.mixingSpectrum

theorem spectral_theory_closed_from_evidence {G : Type u} {X : Type v} [TopologicalSpace G] [TopologicalSpace X] [MeasureTheory.MeasureSpace X]
    (P : SpectralTheoryPackage G X) (E : SpectralTheoryEvidence P) :
    SpectralTheoryClosed P := by
  exact And.intro E.unitaryRepresentationClosed
    (And.intro E.spectralMeasureClosed
      (And.intro E.spectralDecompositionClosed E.mixingSpectrumClosed))

end DynamicsInducedGroupActionsThanCanonicalLaneLean
end HautevilleHouse