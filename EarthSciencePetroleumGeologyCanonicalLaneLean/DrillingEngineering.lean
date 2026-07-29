import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure DrillingEngineeringPackage where
  wellboreStability : Type u
  drillingFluids : Type v
  cementingProgram : Prop
  casingDesign : Prop
  blowoutPrevention : Prop

structure DrillingEngineeringEvidence (D : DrillingEngineeringPackage) where
  cementingProgramClosed : D.cementingProgram
  casingDesignClosed : D.casingDesign
  blowoutPreventionClosed : D.blowoutPrevention

def DrillingEngineeringClosed (D : DrillingEngineeringPackage) : Prop :=
  D.cementingProgram ∧ D.casingDesign ∧ D.blowoutPrevention

theorem drilling_engineering_closed_from_evidence (D : DrillingEngineeringPackage) (E : DrillingEngineeringEvidence D) : DrillingEngineeringClosed D := by
  exact And.intro E.cementingProgramClosed (And.intro E.casingDesignClosed E.blowoutPreventionClosed)

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse