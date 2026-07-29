import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

def ConstrainedComplexSurfacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_complex_surfaces_endgame (A : AdmissibleClass) :
    ConstrainedComplexSurfacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse