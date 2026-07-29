import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure TopologicalEntropyPackage {C : CellularAutomatonDynamicsPackage}
    (CD : CellularAutomatonDynamicsEvidence C) where
  entropyDefined : Prop
  entropyUpperBound : Prop
  entropyForTransitive : Prop
  entropyViaSubshifts : Prop

def TopologicalEntropyClosed {C : CellularAutomatonDynamicsPackage}
    {CD : CellularAutomatonDynamicsEvidence C} (T : TopologicalEntropyPackage CD) : Prop :=
  T.entropyDefined ∧ T.entropyUpperBound ∧ T.entropyForTransitive ∧ T.entropyViaSubshifts

theorem topological_entropy_closed_from_evidence {C : CellularAutomatonDynamicsPackage}
    {CD : CellularAutomatonDynamicsEvidence C} (T : TopologicalEntropyPackage CD) :
    TopologicalEntropyClosed T := by
  exact And.intro T.entropyDefined (And.intro T.entropyUpperBound
    (And.intro T.entropyForTransitive T.entropyViaSubshifts))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
