import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.SpaceConfigurationPackage

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure CellularAutomataDynamicsPackage {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} (T : TimeEvolutionPackage S) where
  localRuleDeterministic : Prop
  shiftInvariant : Prop
  uniformContinuity : Prop
  compactMetricSpace : Prop
  surjectivityOnConfigurationSpace : Prop
  equicontinuityCharacterization : Prop

structure CellularAutomataDynamicsEvidence {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    (D : CellularAutomataDynamicsPackage T) where
  localRuleDeterministicClosed : D.localRuleDeterministic
  shiftInvariantClosed : D.shiftInvariant
  uniformContinuityClosed : D.uniformContinuity
  compactMetricSpaceClosed : D.compactMetricSpace
  surjectivityOnConfigurationSpaceClosed : D.surjectivityOnConfigurationSpace
  equicontinuityCharacterizationClosed : D.equicontinuityCharacterization

def CellularAutomataDynamicsClosed {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    (D : CellularAutomataDynamicsPackage T) : Prop :=
  D.localRuleDeterministic ∧ D.shiftInvariant ∧
  D.uniformContinuity ∧ D.compactMetricSpace ∧
  D.surjectivityOnConfigurationSpace ∧ D.equicontinuityCharacterization

theorem cellular_automata_dynamics_closed_from_evidence
    {C : CellularAutomataClassPackage} {S : SpaceConfigurationPackage C}
    {T : TimeEvolutionPackage S} (D : CellularAutomataDynamicsPackage T)
    (E : CellularAutomataDynamicsEvidence D) : CellularAutomataDynamicsClosed D := by
  exact And.intro E.localRuleDeterministicClosed
    (And.intro E.shiftInvariantClosed
      (And.intro E.uniformContinuityClosed
        (And.intro E.compactMetricSpaceClosed
          (And.intro E.surjectivityOnConfigurationSpaceClosed
            E.equicontinuityCharacterizationClosed))))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse