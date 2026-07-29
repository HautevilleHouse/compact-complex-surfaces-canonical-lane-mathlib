import CompactComplexSurfacesCanonicalLaneLean.CompactComplexSurfacesAdmissibleClass

/-!
# Kodaira-Enriques Classification Package
-/

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure KodairaEnriquesClassificationPackage (A : AdmissibleClass) where
  minimalModelExists : Prop
  birationalClassification : Prop
  kodairaDimensionDefined : Prop
  enriquesSurfaceClassified : Prop
  k3SurfaceClassified : Prop
  ellipticSurfaceClassified : Prop
  generalTypeSurfaceClassified : Prop

structure KodairaEnriquesClassificationEvidence {A : AdmissibleClass} (C : KodairaEnriquesClassificationPackage A) where
  minimalModelExistsClosed : C.minimalModelExists
  birationalClassificationClosed : C.birationalClassification
  kodairaDimensionDefinedClosed : C.kodairaDimensionDefined
  enriquesSurfaceClassifiedClosed : C.enriquesSurfaceClassified
  k3SurfaceClassifiedClosed : C.k3SurfaceClassified
  ellipticSurfaceClassifiedClosed : C.ellipticSurfaceClassified
  generalTypeSurfaceClassifiedClosed : C.generalTypeSurfaceClassified

def KodairaEnriquesClassificationClosed {A : AdmissibleClass} (C : KodairaEnriquesClassificationPackage A) : Prop :=
  C.minimalModelExists ∧ C.birationalClassification ∧ C.kodairaDimensionDefined ∧
  C.enriquesSurfaceClassified ∧ C.k3SurfaceClassified ∧ C.ellipticSurfaceClassified ∧
  C.generalTypeSurfaceClassified

theorem kodaira_enriques_classification_closed_from_evidence
    {A : AdmissibleClass} (C : KodairaEnriquesClassificationPackage A)
    (E : KodairaEnriquesClassificationEvidence C) : KodairaEnriquesClassificationClosed C := by
  exact And.intro E.minimalModelExistsClosed
    (And.intro E.birationalClassificationClosed
      (And.intro E.kodairaDimensionDefinedClosed
        (And.intro E.enriquesSurfaceClassifiedClosed
          (And.intro E.k3SurfaceClassifiedClosed
            (And.intro E.ellipticSurfaceClassifiedClosed
              E.generalTypeSurfaceClassifiedClosed)))))

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse