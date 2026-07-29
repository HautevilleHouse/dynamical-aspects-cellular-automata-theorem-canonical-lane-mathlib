import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure EquicontinuousDynamics (A : AdmissibleClass) where
  equicontinuousFamily : ∀ ε > 0, ∃ δ > 0, ∀ n : ℕ, ∀ x y : A.shiftSpace.carrier,
    dist x y < δ → dist (A.rule.globalRule^[n] x) (A.rule.globalRule^[n] y) < ε
  equicontinuousClosed : Prop
  
end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse