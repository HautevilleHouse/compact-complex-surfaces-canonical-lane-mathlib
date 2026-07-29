import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure CanonicalRingPackage where
  ringStructure : Type u
  generatedInDegree : ℕ
  mRegular : Prop
  birationalNature : Prop

structure CanonicalRingEvidence (R : CanonicalRingPackage) where
  mRegularClosed : R.mRegular
  birationalNatureClosed : R.birationalNature

def CanonicalRingClosed (R : CanonicalRingPackage) : Prop :=
  R.mRegular ∧ R.birationalNature

theorem canonical_ring_closed_from_evidence
    (R : CanonicalRingPackage) (E : CanonicalRingEvidence R) :
    CanonicalRingClosed R := by
  exact And.intro E.mRegularClosed E.birationalNatureClosed

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse
