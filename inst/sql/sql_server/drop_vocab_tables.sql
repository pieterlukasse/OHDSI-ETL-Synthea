
if object_id('@vocab_schema.attribute_definition', 'U')  is not null drop table @vocab_schema.attribute_definition  CASCADE;
if object_id('@vocab_schema.cohort_definition', 'U')     is not null drop table @vocab_schema.cohort_definition  CASCADE;
if object_id('@vocab_schema.concept', 'U')               is not null drop table @vocab_schema.concept  CASCADE;
if object_id('@vocab_schema.concept_ancestor', 'U')      is not null drop table @vocab_schema.concept_ancestor  CASCADE;
if object_id('@vocab_schema.concept_class', 'U')         is not null drop table @vocab_schema.concept_class  CASCADE;
if object_id('@vocab_schema.concept_relationship', 'U')  is not null drop table @vocab_schema.concept_relationship  CASCADE;
if object_id('@vocab_schema.concept_synonym', 'U')       is not null drop table @vocab_schema.concept_synonym  CASCADE;
if object_id('@vocab_schema.domain', 'U')                is not null drop table @vocab_schema.domain  CASCADE;
if object_id('@vocab_schema.drug_strength', 'U')         is not null drop table @vocab_schema.drug_strength  CASCADE;
if object_id('@vocab_schema.relationship', 'U')          is not null drop table @vocab_schema.relationship  CASCADE;
if object_id('@vocab_schema.source_to_concept_map', 'U') is not null drop table @vocab_schema.source_to_concept_map  CASCADE;
if object_id('@vocab_schema.vocabulary', 'U')            is not null drop table @vocab_schema.vocabulary  CASCADE;
