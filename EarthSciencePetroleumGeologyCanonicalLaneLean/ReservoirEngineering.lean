import EarthSciencePetroleumGeologyCanonicalLaneLean.ExplorationRisk

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure ReservoirEngineeringPackage where
  porosityPermeabilityModel : Prop
  fluidSaturationDistribution : Prop
  reservoirPressure : Prop
  driveMechanism : Prop
  recoveryFactor : Prop
  developmentPlan : Prop

def ReservoirEngineeringClosed (R : ReservoirEngineeringPackage) : Prop :=
  R.porosityPermeabilityModel ∧ R.fluidSaturationDistribution ∧
  R.reservoirPressure ∧ R.driveMechanism ∧ R.recoveryFactor ∧ R.developmentPlan

theorem reservoir_engineering_closed (R : ReservoirEngineeringPackage) (E : ReservoirEngineeringEvidence R) :
    ReservoirEngineeringClosed R := by
  exact And.intro E.porosityPermeabilityModelClosed
    (And.intro E.fluidSaturationDistributionClosed
      (And.intro E.reservoirPressureClosed
        (And.intro E.driveMechanismClosed
          (And.intro E.recoveryFactorClosed E.developmentPlanClosed))))

structure ReservoirEngineeringEvidence (R : ReservoirEngineeringPackage) where
  porosityPermeabilityModelClosed : R.porosityPermeabilityModel
  fluidSaturationDistributionClosed : R.fluidSaturationDistribution
  reservoirPressureClosed : R.reservoirPressure
  driveMechanismClosed : R.driveMechanism
  recoveryFactorClosed : R.recoveryFactor
  developmentPlanClosed : R.developmentPlan

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse