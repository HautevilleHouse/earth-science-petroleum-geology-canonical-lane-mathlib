import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure ReservoirCharacterizationPackage where
  reservoirRock : Type u
  porosityPermeability : Prop
  fluidSaturation : Prop
  trapGeometry : Prop
  sealIntegrity : Prop

structure ReservoirCharacterizationEvidence (R : ReservoirCharacterizationPackage) where
  porosityPermeabilityClosed : R.porosityPermeability
  fluidSaturationClosed : R.fluidSaturation
  trapGeometryClosed : R.trapGeometry
  sealIntegrityClosed : R.sealIntegrity

def ReservoirCharacterizationClosed (R : ReservoirCharacterizationPackage) : Prop :=
  R.porosityPermeability ∧ R.fluidSaturation ∧ R.trapGeometry ∧ R.sealIntegrity

theorem reservoir_characterization_closed_from_evidence (R : ReservoirCharacterizationPackage) (E : ReservoirCharacterizationEvidence R) : ReservoirCharacterizationClosed R :=
  And.intro E.porosityPermeabilityClosed (And.intro E.fluidSaturationClosed (And.intro E.trapGeometryClosed E.sealIntegrityClosed))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
