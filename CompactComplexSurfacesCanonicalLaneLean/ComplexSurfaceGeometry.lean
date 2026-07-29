import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure ComplexSurfaceGeometryPackage where
  complexStructure : Type u
  kahlerMetric : Prop
  hodgeDecomposition : Prop
  symplecticForm : Prop

structure ComplexSurfaceGeometryEvidence (G : ComplexSurfaceGeometryPackage) where
  kahlerMetricClosed : G.kahlerMetric
  hodgeDecompositionClosed : G.hodgeDecomposition
  symplecticFormClosed : G.symplecticForm

def ComplexSurfaceGeometryClosed (G : ComplexSurfaceGeometryPackage) : Prop :=
  G.kahlerMetric ∧ G.hodgeDecomposition ∧ G.symplecticForm

theorem complex_surface_geometry_closed_from_evidence
    (G : ComplexSurfaceGeometryPackage) (E : ComplexSurfaceGeometryEvidence G) :
    ComplexSurfaceGeometryClosed G := by
  exact And.intro E.kahlerMetricClosed
    (And.intro E.hodgeDecompositionClosed E.symplecticFormClosed)

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse
