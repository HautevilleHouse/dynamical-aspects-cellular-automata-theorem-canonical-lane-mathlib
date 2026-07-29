import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomataClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure SpaceConfigurationPackage {C : CellularAutomataClassPackage} where
  cellSpace : Type
  alphabet : Type
  configurationSpace : Type
  shiftMap : configurationSpace → configurationSpace
  metricSpaceStructure : Prop
  compactOpenTopology : Prop
  shiftContinuous : Prop

structure SpaceConfigurationEvidence {C : CellularAutomataClassPackage}
    (S : SpaceConfigurationPackage C) where
  metricSpaceStructureClosed : S.metricSpaceStructure
  compactOpenTopologyClosed : S.compactOpenTopology
  shiftContinuousClosed : S.shiftContinuous

def SpaceConfigurationClosed {C : CellularAutomataClassPackage}
    (S : SpaceConfigurationPackage C) : Prop :=
  S.metricSpaceStructure ∧ S.compactOpenTopology ∧ S.shiftContinuous

theorem space_configuration_closed_from_evidence
    {C : CellularAutomataClassPackage} (S : SpaceConfigurationPackage C)
    (E : SpaceConfigurationEvidence S) : SpaceConfigurationClosed S := by
  exact And.intro E.metricSpaceStructureClosed
    (And.intro E.compactOpenTopologyClosed E.shiftContinuousClosed)

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse