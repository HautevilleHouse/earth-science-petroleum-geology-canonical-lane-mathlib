import EarthSciencePetroleumGeologyCanonicalLaneLean.PetroleumSystem

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure ExplorationRiskPackage where
  geologicalRisk : Prop
  reservoirRisk : Prop
  sealRisk : Prop
  trapRisk : Prop
  chargeRisk : Prop
  timingRisk : Prop
  economicRisk : Prop

def ExplorationRiskClosed (R : ExplorationRiskPackage) : Prop :=
  R.geologicalRisk ∧ R.reservoirRisk ∧ R.sealRisk ∧ R.trapRisk ∧
  R.chargeRisk ∧ R.timingRisk ∧ R.economicRisk

theorem exploration_risk_closed (R : ExplorationRiskPackage) (E : ExplorationRiskEvidence R) :
    ExplorationRiskClosed R := by
  exact And.intro E.geologicalRiskClosed
    (And.intro E.reservoirRiskClosed
      (And.intro E.sealRiskClosed
        (And.intro E.trapRiskClosed
          (And.intro E.chargeRiskClosed
            (And.intro E.timingRiskClosed E.economicRiskClosed)))))

structure ExplorationRiskEvidence (R : ExplorationRiskPackage) where
  geologicalRiskClosed : R.geologicalRisk
  reservoirRiskClosed : R.reservoirRisk
  sealRiskClosed : R.sealRisk
  trapRiskClosed : R.trapRisk
  chargeRiskClosed : R.chargeRisk
  timingRiskClosed : R.timingRisk
  economicRiskClosed : R.economicRisk

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse