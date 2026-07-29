import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure AdmissibleClass where
  object : ComplexSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexSurfaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse