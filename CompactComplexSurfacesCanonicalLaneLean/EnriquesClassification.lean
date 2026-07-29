import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

inductive SurfaceType where
  | rational
  | ruled
  | K3
  | Enriques
  | elliptic
  | generalType
  
structure EnriquesClassificationPackage where
  surfaceType : SurfaceType
  kodairaDimension : ℤ
  plurigeneraNonzero : Prop
  classificationCorrect : Prop

structure EnriquesClassificationEvidence (C : EnriquesClassificationPackage) where
  classificationCorrectClosed : C.classificationCorrect

def EnriquesClassificationClosed (C : EnriquesClassificationPackage) : Prop :=
  C.classificationCorrect

theorem enriques_classification_closed_from_evidence
    (C : EnriquesClassificationPackage) (E : EnriquesClassificationEvidence C) :
    EnriquesClassificationClosed C := by
  exact E.classificationCorrectClosed

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse
