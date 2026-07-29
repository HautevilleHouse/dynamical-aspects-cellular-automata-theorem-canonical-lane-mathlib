import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure CellularAutomatonRule where
  radius : ℕ
  localRule : (Fin (2*radius+1) → ℕ) → ℕ
  globalRule : (ℕ → ℕ) → (ℕ → ℕ)
  globalContinuous : Continuous globalRule
  shiftCommutes : ∀ x n, globalRule (λ i => x (i+n)) = λ i => (globalRule x) (i+n)

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse