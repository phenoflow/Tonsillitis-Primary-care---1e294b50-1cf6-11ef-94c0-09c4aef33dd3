cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  tonsillitis-primary-care---primary:
    run: tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  follicular-tonsillitis-primary-care---primary:
    run: follicular-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care---primary/output
  staphylococcal-tonsillitis-primary-care---primary:
    run: staphylococcal-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: follicular-tonsillitis-primary-care---primary/output
  lingular-tonsillitis-primary-care---primary:
    run: lingular-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: staphylococcal-tonsillitis-primary-care---primary/output
  gangrenous-tonsillitis-primary-care---primary:
    run: gangrenous-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: lingular-tonsillitis-primary-care---primary/output
  tonsillitis-primary-care-examination---primary:
    run: tonsillitis-primary-care-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: gangrenous-tonsillitis-primary-care---primary/output
  tonsillitis-primary-care-necrotizing---primary:
    run: tonsillitis-primary-care-necrotizing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care-examination---primary/output
  chronic-tonsillitis-primary-care---primary:
    run: chronic-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care-necrotizing---primary/output
  tonsillitis-primary-care-history---primary:
    run: tonsillitis-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: chronic-tonsillitis-primary-care---primary/output
  viral-tonsillitis-primary-care---primary:
    run: viral-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care-history---primary/output
  acute-tonsillitis-primary-care---primary:
    run: acute-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: viral-tonsillitis-primary-care---primary/output
  erythematous-tonsillitis-primary-care---primary:
    run: erythematous-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: acute-tonsillitis-primary-care---primary/output
  pneumococcal-tonsillitis-primary-care---primary:
    run: pneumococcal-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: erythematous-tonsillitis-primary-care---primary/output
  exudative-tonsillitis-primary-care---primary:
    run: exudative-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: pneumococcal-tonsillitis-primary-care---primary/output
  tonsillitis-primary-care-catarrhal---primary:
    run: tonsillitis-primary-care-catarrhal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: exudative-tonsillitis-primary-care---primary/output
  tonsillitis-primary-care-vincent---primary:
    run: tonsillitis-primary-care-vincent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care-catarrhal---primary/output
  recurrent-tonsillitis-primary-care---primary:
    run: recurrent-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care-vincent---primary/output
  fusobacterial-tonsillitis-primary-care---primary:
    run: fusobacterial-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: recurrent-tonsillitis-primary-care---primary/output
  ulcerative-tonsillitis-primary-care---primary:
    run: ulcerative-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: fusobacterial-tonsillitis-primary-care---primary/output
  infective-tonsillitis-primary-care---primary:
    run: infective-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ulcerative-tonsillitis-primary-care---primary/output
  caseous-tonsillitis-primary-care---primary:
    run: caseous-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: infective-tonsillitis-primary-care---primary/output
  streptococcal-tonsillitis-primary-care---primary:
    run: streptococcal-tonsillitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: caseous-tonsillitis-primary-care---primary/output
  tonsillitis-primary-care-throat---primary:
    run: tonsillitis-primary-care-throat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: streptococcal-tonsillitis-primary-care---primary/output
  tonsillitis-primary-care-organism---primary:
    run: tonsillitis-primary-care-organism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care-throat---primary/output
  tonsillitis---primary:
    run: tonsillitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: tonsillitis-primary-care-organism---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: tonsillitis---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
