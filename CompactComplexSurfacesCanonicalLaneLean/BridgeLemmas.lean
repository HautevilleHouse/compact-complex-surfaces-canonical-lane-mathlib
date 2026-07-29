import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComplexSurfaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse