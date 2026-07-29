import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure AttractorStructurePackage {C : CellularAutomatonDynamicsPackage}
    (CD : CellularAutomatonDynamicsEvidence C) where
  attractorPairs : Prop
  attractorReconstructionTheorem : Prop
  chainRecurrenceClosed : Prop
  equivalenceWithOmegaLimitSets : Prop

def AttractorClosed {C : CellularAutomatonDynamicsPackage}
    {CD : CellularAutomatonDynamicsEvidence C} (A : AttractorStructurePackage CD) : Prop :=
  A.attractorPairs ∧ A.attractorReconstructionTheorem ∧ A.chainRecurrenceClosed ∧ A.equivalenceWithOmegaLimitSets

theorem attractor_closed_from_evidence {C : CellularAutomatonDynamicsPackage}
    {CD : CellularAutomatonDynamicsEvidence C} (A : AttractorStructurePackage CD) :
    AttractorClosed A := by
  exact And.intro A.attractorPairs (And.intro A.attractorReconstructionTheorem
    (And.intro A.chainRecurrenceClosed A.equivalenceWithOmegaLimitSets))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
