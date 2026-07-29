import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure CanonicalBundlePackage (A : AdmissibleClass) where
  surface : A.object
  canonicalBundle : Type
  sectionRingFinitelyGenerated : Prop
  kodairaDimensionDefined : Prop
  plurigeneraComputed : Prop
  bundleEvidence : sectionRingFinitelyGenerated ∧ kodairaDimensionDefined ∧ plurigeneraComputed

def CanonicalBundleClosed (A : AdmissibleClass) (C : CanonicalBundlePackage A) : Prop :=
  C.sectionRingFinitelyGenerated ∧ C.kodairaDimensionDefined ∧ C.plurigeneraComputed

theorem canonical_bundle_closed_from_evidence (A : AdmissibleClass) (C : CanonicalBundlePackage A) :
    CanonicalBundleClosed A C := by
  exact C.bundleEvidence

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse