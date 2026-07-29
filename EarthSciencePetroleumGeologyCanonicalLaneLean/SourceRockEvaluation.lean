import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeology

structure SourceRockPackage where
  organicMatterType : Prop
  thermalMaturity : Prop
  hydrocarbonPotential : Prop
  kerogenQuality : Prop

structure SourceRockEvidence (S : SourceRockPackage) where
  organicMatterTypeClosed : S.organicMatterType
  thermalMaturityClosed : S.thermalMaturity
  hydrocarbonPotentialClosed : S.hydrocarbonPotential
  kerogenQualityClosed : S.kerogenQuality

def SourceRockClosed (S : SourceRockPackage) : Prop :=
  S.organicMatterType ∧ S.thermalMaturity ∧ S.hydrocarbonPotential ∧ S.kerogenQuality

theorem source_rock_closed_from_evidence (S : SourceRockPackage) (E : SourceRockEvidence S) : SourceRockClosed S := by
  exact And.intro E.organicMatterTypeClosed (And.intro E.thermalMaturityClosed (And.intro E.hydrocarbonPotentialClosed E.kerogenQualityClosed))

end EarthSciencePetroleumGeology
end HautevilleHouse