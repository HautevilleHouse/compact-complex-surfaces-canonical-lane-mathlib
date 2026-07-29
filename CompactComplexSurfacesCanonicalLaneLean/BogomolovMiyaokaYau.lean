import canonicalLaneMathlib.AdmissibleClass
import CompactComplexSurfacesCanonicalLaneLean.CompactComplexSurfacesAdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure BogomolovMiyaokaYauPackage (A : AdmittedObject) where
  chernNumbers : ℕ × ℕ
  inequality : Prop
  equalityCase : Prop
  proofCitation : String

structure BogomolovMiyaokaYauEvidence (A : AdmittedObject) (B : BogomolovMiyaokaYauPackage A) where
  inequalityClosed : B.inequality
  equalityCaseClosed : B.equalityCase

def BogomolovMiyaokaYauClosed (A : AdmittedObject) (B : BogomolovMiyaokaYauPackage A) : Prop :=
  B.inequality ∧ B.equalityCase

theorem bogomolov_miyaoka_yau_closed_from_evidence (A : AdmittedObject) (B : BogomolovMiyaokaYauPackage A) (Ev : BogomolovMiyaokaYauEvidence A B) :
    BogomolovMiyaokaYauClosed A B := by
  exact And.intro Ev.inequalityClosed Ev.equalityCaseClosed

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse