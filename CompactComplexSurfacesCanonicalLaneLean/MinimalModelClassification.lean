import canonicalLaneMathlib.AdmissibleClass

/-!
# Minimal Model Classification Package
-/

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure MinimalModelClassificationPackage {C : ComplexSurfaceGeometriesPackage}
    (M : ComplexSurfaceMinimalModelPackage C) where
  ruledSurfaceCase : Prop
  ellipticSurfaceCase : Prop
  k3SurfaceCase : Prop
  enriquesSurfaceCase : Prop
  generalTypeCase : Prop

structure MinimalModelClassificationEvidence {C : ComplexSurfaceGeometriesPackage}
    {M : ComplexSurfaceMinimalModelPackage C} (K : MinimalModelClassificationPackage M) where
  ruledSurfaceCaseClosed : K.ruledSurfaceCase
  ellipticSurfaceCaseClosed : K.ellipticSurfaceCase
  k3SurfaceCaseClosed : K.k3SurfaceCase
  enriquesSurfaceCaseClosed : K.enriquesSurfaceCase
  generalTypeCaseClosed : K.generalTypeCase

def MinimalModelClassificationClosed {C : ComplexSurfaceGeometriesPackage}
    {M : ComplexSurfaceMinimalModelPackage C} (K : MinimalModelClassificationPackage M) : Prop :=
  K.ruledSurfaceCase ∧ K.ellipticSurfaceCase ∧ K.k3SurfaceCase ∧ K.enriquesSurfaceCase ∧ K.generalTypeCase

theorem minimal_model_classification_closed_from_evidence
    {C : ComplexSurfaceGeometriesPackage} {M : ComplexSurfaceMinimalModelPackage C}
    (K : MinimalModelClassificationPackage M) (E : MinimalModelClassificationEvidence K) :
    MinimalModelClassificationClosed K := by
  exact And.intro E.ruledSurfaceCaseClosed
    (And.intro E.ellipticSurfaceCaseClosed
      (And.intro E.k3SurfaceCaseClosed
        (And.intro E.enriquesSurfaceCaseClosed E.generalTypeCaseClosed)))

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse