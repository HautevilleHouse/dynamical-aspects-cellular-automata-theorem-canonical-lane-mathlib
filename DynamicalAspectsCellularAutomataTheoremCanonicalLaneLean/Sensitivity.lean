import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure SensitiveDynamics (A : AdmissibleClass) where
  sensitivity : ∃ δ > 0, ∀ x : A.shiftSpace.carrier, ∀ ε > 0, ∃ y : A.shiftSpace.carrier,
    dist x y < ε ∧ ∃ n : ℕ, dist (A.rule.globalRule^[n] x) (A.rule.globalRule^[n] y) ≥ δ
  sensitiveClosed : Prop
  
end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse