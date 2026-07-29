import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomataDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure TopologicalDynamicsPackage {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    (D : CellularAutomataDynamicsPackage T) where
  chainRecurrenceDefined : Prop
  omegaLimitSetsClassified : Prop
  attractorStructure : Prop
  equicontinuityStructure : Prop
  sensitivityAnalysis : Prop

structure TopologicalDynamicsEvidence {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    {D : CellularAutomataDynamicsPackage T} (TD : TopologicalDynamicsPackage D) where
  chainRecurrenceDefinedClosed : TD.chainRecurrenceDefined
  omegaLimitSetsClassifiedClosed : TD.omegaLimitSetsClassified
  attractorStructureClosed : TD.attractorStructure
  equicontinuityStructureClosed : TD.equicontinuityStructure
  sensitivityAnalysisClosed : TD.sensitivityAnalysis

def TopologicalDynamicsClosed {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    {D : CellularAutomataDynamicsPackage T} (TD : TopologicalDynamicsPackage D) : Prop :=
  TD.chainRecurrenceDefined ∧ TD.omegaLimitSetsClassified ∧
  TD.attractorStructure ∧ TD.equicontinuityStructure ∧
  TD.sensitivityAnalysis

theorem topological_dynamics_closed_from_evidence
    {C : CellularAutomataClassPackage} {S : SpaceConfigurationPackage C}
    {T : TimeEvolutionPackage S} {D : CellularAutomataDynamicsPackage T}
    (TD : TopologicalDynamicsPackage D) (E : TopologicalDynamicsEvidence TD) :
    TopologicalDynamicsClosed TD := by
  exact And.intro E.chainRecurrenceDefinedClosed
    (And.intro E.omegaLimitSetsClassifiedClosed
      (And.intro E.attractorStructureClosed
        (And.intro E.equicontinuityStructureClosed E.sensitivityAnalysisClosed)))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse