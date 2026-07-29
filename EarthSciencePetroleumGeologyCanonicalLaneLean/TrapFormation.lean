import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure TrapFormationPackage where
  structuralTrap : Prop
  stratigraphicTrap : Prop
  combinationTrap : Prop
  sealIntegrity : Prop
  closureTiming : Prop

structure TrapFormationEvidence (T : TrapFormationPackage) where
  structuralTrapClosed : T.structuralTrap
  stratigraphicTrapClosed : T.stratigraphicTrap
  combinationTrapClosed : T.combinationTrap
  sealIntegrityClosed : T.sealIntegrity
  closureTimingClosed : T.closureTiming

def TrapFormationClosed (T : TrapFormationPackage) : Prop :=
  T.structuralTrap ∧ T.stratigraphicTrap ∧ T.combinationTrap ∧ T.sealIntegrity ∧ T.closureTiming

theorem trap_formation_closed_from_evidence (T : TrapFormationPackage) (E : TrapFormationEvidence T) :
    TrapFormationClosed T := by
  exact And.intro E.structuralTrapClosed
    (And.intro E.stratigraphicTrapClosed
      (And.intro E.combinationTrapClosed
        (And.intro E.sealIntegrityClosed E.closureTimingClosed)))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse