import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure EntropyDynamicsPackage (C : CellularAutomatonSpace) where
  topologicalEntropy : Type u
  measureTheoreticEntropy : Type v
  variationalPrinciple : Prop
  entropyExpansive : Prop
  positiveEntropyImpliesChaos : Prop
  entropyCapacity : Prop

structure EntropyDynamicsEvidence {C : CellularAutomatonSpace}
    (E : EntropyDynamicsPackage C) where
  variationalPrincipleClosed : E.variationalPrinciple
  entropyExpansiveClosed : E.entropyExpansive
  positiveEntropyImpliesChaosClosed : E.positiveEntropyImpliesChaos
  entropyCapacityClosed : E.entropyCapacity

def EntropyDynamicsClosed {C : CellularAutomatonSpace}
    (E : EntropyDynamicsPackage C) : Prop :=
  E.variationalPrinciple ∧ E.entropyExpansive ∧
  E.positiveEntropyImpliesChaos ∧ E.entropyCapacity

theorem entropy_dynamics_closed_from_evidence
    {C : CellularAutomatonSpace}
    (E : EntropyDynamicsPackage C)
    (Ev : EntropyDynamicsEvidence E) :
    EntropyDynamicsClosed E := by
  exact And.intro Ev.variationalPrincipleClosed
    (And.intro Ev.entropyExpansiveClosed
      (And.intro Ev.positiveEntropyImpliesChaosClosed
        Ev.entropyCapacityClosed))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse