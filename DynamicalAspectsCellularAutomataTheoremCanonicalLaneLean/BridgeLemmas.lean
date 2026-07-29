import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellularAutomatonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse