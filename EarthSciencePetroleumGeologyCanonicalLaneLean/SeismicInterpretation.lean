import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure SeismicInterpretationPackage where
  seismicSection : Type u
  stratigraphicHorizons : Prop
  faultIdentification : Prop
  velocityModel : Prop
  depthConversion : Prop

structure SeismicInterpretationEvidence (S : SeismicInterpretationPackage) where
  stratigraphicHorizonsClosed : S.stratigraphicHorizons
  faultIdentificationClosed : S.faultIdentification
  velocityModelClosed : S.velocityModel
  depthConversionClosed : S.depthConversion

def SeismicInterpretationClosed (S : SeismicInterpretationPackage) : Prop :=
  S.stratigraphicHorizons ∧ S.faultIdentification ∧ S.velocityModel ∧ S.depthConversion

theorem seismic_interpretation_closed_from_evidence (S : SeismicInterpretationPackage) (E : SeismicInterpretationEvidence S) : SeismicInterpretationClosed S :=
  And.intro E.stratigraphicHorizonsClosed (And.intro E.faultIdentificationClosed (And.intro E.velocityModelClosed E.depthConversionClosed))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
