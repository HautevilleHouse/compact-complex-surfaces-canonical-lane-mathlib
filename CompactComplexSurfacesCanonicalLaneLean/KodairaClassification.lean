import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure KodairaClassificationPackage (A : AdmissibleClass) where
  surface : A.object
  kodairaDimension : ℤ
  classificationType : String
  birationalInvariants : Prop
  classificationEvidence : birationalInvariants ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def KodairaClassificationClosed (A : AdmissibleClass) (K : KodairaClassificationPackage A) : Prop :=
  K.birationalInvariants ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem kodaira_classification_closed_from_evidence (A : AdmissibleClass) (K : KodairaClassificationPackage A) :
    KodairaClassificationClosed A K := by
  exact K.classificationEvidence

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse