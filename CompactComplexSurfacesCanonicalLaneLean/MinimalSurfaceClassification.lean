import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure MinimalSurfaceClassificationPackage where
  minimalModel : Type u
  singularitiesRational : Prop
  birationalEquivalence : Prop
  minimalModelExists : Prop

structure MinimalSurfaceClassificationEvidence (M : MinimalSurfaceClassificationPackage) where
  minimalModelExistsClosed : M.minimalModelExists
  singularitiesRationalClosed : M.singularitiesRational
  birationalEquivalenceClosed : M.birationalEquivalence

def MinimalSurfaceClassificationClosed (M : MinimalSurfaceClassificationPackage) : Prop :=
  M.minimalModelExists ∧ M.singularitiesRational ∧ M.birationalEquivalence

theorem minimal_surface_classification_closed_from_evidence
    (M : MinimalSurfaceClassificationPackage) (E : MinimalSurfaceClassificationEvidence M) :
    MinimalSurfaceClassificationClosed M := by
  exact And.intro E.minimalModelExistsClosed
    (And.intro E.singularitiesRationalClosed E.birationalEquivalenceClosed)

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse
