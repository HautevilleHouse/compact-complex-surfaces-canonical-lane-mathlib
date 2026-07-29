import canonicalLaneMathlib.AdmissibleClass

/-!
# Complex Surfaces Geometries Package
-/

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure ComplexSurfaceGeometriesPackage where
  kahlerCondition : Prop
  algebraicDimension : Prop
  enriquesClassification : Prop
  minimalModel : Prop

structure ComplexSurfaceGeometriesEvidence (C : ComplexSurfaceGeometriesPackage) where
  kahlerConditionClosed : C.kahlerCondition
  algebraicDimensionClosed : C.algebraicDimension
  enriquesClassificationClosed : C.enriquesClassification
  minimalModelClosed : C.minimalModel

def ComplexSurfaceGeometriesClosed (C : ComplexSurfaceGeometriesPackage) : Prop :=
  C.kahlerCondition ∧ C.algebraicDimension ∧ C.enriquesClassification ∧ C.minimalModel

theorem complex_surface_geometries_closed_from_evidence
    (C : ComplexSurfaceGeometriesPackage) (E : ComplexSurfaceGeometriesEvidence C) :
    ComplexSurfaceGeometriesClosed C := by
  exact And.intro E.kahlerConditionClosed
    (And.intro E.algebraicDimensionClosed
      (And.intro E.enriquesClassificationClosed E.minimalModelClosed))

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse