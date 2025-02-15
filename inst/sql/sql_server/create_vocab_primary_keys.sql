ALTER TABLE @vocab_schema.CONCEPT ADD CONSTRAINT xpk_CONCEPT PRIMARY KEY NONCLUSTERED (concept_id);

ALTER TABLE @vocab_schema.VOCABULARY ADD CONSTRAINT xpk_VOCABULARY PRIMARY KEY NONCLUSTERED (vocabulary_id);

ALTER TABLE @vocab_schema.DOMAIN ADD CONSTRAINT xpk_DOMAIN PRIMARY KEY NONCLUSTERED (domain_id);

ALTER TABLE @vocab_schema.CONCEPT_CLASS ADD CONSTRAINT xpk_CONCEPT_CLASS PRIMARY KEY NONCLUSTERED (concept_class_id);

ALTER TABLE @vocab_schema.RELATIONSHIP ADD CONSTRAINT xpk_RELATIONSHIP PRIMARY KEY NONCLUSTERED (relationship_id);
