import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.SpaceConfiguration

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure TimeEvolutionPackage {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} where
  timeDomain : Type
  iterationMap : timeDomain → S.configurationSpace → S.configurationSpace
  discreteTime : Prop
  localRuleDefined : Prop
  semigroupProperty : Prop
  determinism : Prop

structure TimeEvolutionEvidence {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} (T : TimeEvolutionPackage S) where
  discreteTimeClosed : T.discreteTime
  localRuleDefinedClosed : T.localRuleDefined
  semigroupPropertyClosed : T.semigroupProperty
  determinismClosed : T.determinism

def TimeEvolutionClosed {C : CellularAutomataClassPackage}
    {S : SpaceConfigurationPackage C} (T : TimeEvolutionPackage S) : Prop :=
  T.discreteTime ∧ T.localRuleDefined ∧ T.semigroupProperty ∧ T.determinism

theorem time_evolution_closed_from_evidence
    {C : CellularAutomataClassPackage} {S : SpaceConfigurationPackage C}
    (T : TimeEvolutionPackage S) (E : TimeEvolutionEvidence T) :
    TimeEvolutionClosed T := by
  exact And.intro E.discreteTimeClosed
    (And.intro E.localRuleDefinedClosed
      (And.intro E.semigroupPropertyClosed E.determinismClosed))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse