import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomataDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure EntropyDynamicsPackage {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    (D : CellularAutomataDynamicsPackage T) where
  topologicalEntropyDefined : Prop
  metricEntropyDefined : Prop
  variationalPrincipleHolds : Prop
  entropyEquidistribution : Prop
  expansionEntropyRelation : Prop

structure EntropyDynamicsEvidence {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    {D : CellularAutomataDynamicsPackage T} (E : EntropyDynamicsPackage D) where
  topologicalEntropyDefinedClosed : E.topologicalEntropyDefined
  metricEntropyDefinedClosed : E.metricEntropyDefined
  variationalPrincipleHoldsClosed : E.variationalPrincipleHolds
  entropyEquidistributionClosed : E.entropyEquidistribution
  expansionEntropyRelationClosed : E.expansionEntropyRelation

def EntropyDynamicsClosed {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} {T : TimeEvolutionPackage S}
    {D : CellularAutomataDynamicsPackage T} (E : EntropyDynamicsPackage D) : Prop :=
  E.topologicalEntropyDefined ∧ E.metricEntropyDefined ∧
  E.variationalPrincipleHolds ∧ E.entropyEquidistribution ∧
  E.expansionEntropyRelation

theorem entropy_dynamics_closed_from_evidence
    {C : CellularAutomataClassPackage} {S : SpaceConfigurationPackage C}
    {T : TimeEvolutionPackage S} {D : CellularAutomataDynamicsPackage T}
    (E : EntropyDynamicsPackage D) (Ev : EntropyDynamicsEvidence E) :
    EntropyDynamicsClosed E := by
  exact And.intro Ev.topologicalEntropyDefinedClosed
    (And.intro Ev.metricEntropyDefinedClosed
      (And.intro Ev.variationalPrincipleHoldsClosed
        (And.intro Ev.entropyEquidistributionClosed
          Ev.expansionEntropyRelationClosed)))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse