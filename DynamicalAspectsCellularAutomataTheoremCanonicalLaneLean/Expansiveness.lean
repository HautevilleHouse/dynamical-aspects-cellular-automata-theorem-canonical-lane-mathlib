import canonicalLaneMathlib.AdmissibleClass
import AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure ExpansiveDynamics (A : AdmissibleClass) where
  expansivityConstant : ℝ
  expansivity : ∀ x y : A.shiftSpace.carrier, x ≠ y → ∃ n : ℤ,
    dist (A.rule.globalRule^[n] x) (A.rule.globalRule^[n] y) ≥ expansivityConstant
  expansiveClosed : Prop
  
end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse