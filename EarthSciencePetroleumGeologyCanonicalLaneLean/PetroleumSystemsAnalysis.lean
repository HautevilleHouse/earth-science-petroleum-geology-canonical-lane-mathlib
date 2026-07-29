import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure PetroleumSystemsAnalysisPackage where
  sourceRockAssessment : Type u
  migrationPathways : Type v
  trapFormation : Prop
  sealIntegrity : Prop
  timingMatch : Prop

structure PetroleumSystemsAnalysisEvidence (P : PetroleumSystemsAnalysisPackage) where
  trapFormationClosed : P.trapFormation
  sealIntegrityClosed : P.sealIntegrity
  timingMatchClosed : P.timingMatch

def PetroleumSystemsAnalysisClosed (P : PetroleumSystemsAnalysisPackage) : Prop :=
  P.trapFormation ∧ P.sealIntegrity ∧ P.timingMatch

theorem petroleum_systems_analysis_closed_from_evidence (P : PetroleumSystemsAnalysisPackage) (E : PetroleumSystemsAnalysisEvidence P) : PetroleumSystemsAnalysisClosed P := by
  exact And.intro E.trapFormationClosed (And.intro E.sealIntegrityClosed E.timingMatchClosed)

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse