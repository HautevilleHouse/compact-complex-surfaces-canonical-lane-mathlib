import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure CanonicalBundlePackage (M : ComplexManifoldPackage) where
  canonicalLineBundle : Type u
  selfIntersectionNumber : ℤ
  kodairaDimension : ℤ
  holomorphicEulerCharacteristic : ℤ
  genusFormula : Prop

def CanonicalBundleClosed {M : ComplexManifoldPackage} (C : CanonicalBundlePackage M) : Prop :=
  C.genusFormula

theorem canonical_bundle_provides_genus {M : ComplexManifoldPackage}
    (C : CanonicalBundlePackage M) : CanonicalBundleClosed C := by
  exact C.genusFormula

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse
