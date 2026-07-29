import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure ReservoirModelingPackage where
  porosityPermeabilityField : Type u
  fluidSaturationModel : Type v
  pressureVolumeTemperatureData : Prop
  reservoirHeterogeneity : Prop
  dynamicFlowSimulation : Prop

structure ReservoirModelingEvidence (R : ReservoirModelingPackage) where
  pressureVolumeTemperatureDataClosed : R.pressureVolumeTemperatureData
  reservoirHeterogeneityClosed : R.reservoirHeterogeneity
  dynamicFlowSimulationClosed : R.dynamicFlowSimulation

def ReservoirModelingClosed (R : ReservoirModelingPackage) : Prop :=
  R.pressureVolumeTemperatureData ∧ R.reservoirHeterogeneity ∧ R.dynamicFlowSimulation

theorem reservoir_modeling_closed_from_evidence (R : ReservoirModelingPackage) (E : ReservoirModelingEvidence R) : ReservoirModelingClosed R := by
  exact And.intro E.pressureVolumeTemperatureDataClosed (And.intro E.reservoirHeterogeneityClosed E.dynamicFlowSimulationClosed)

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse