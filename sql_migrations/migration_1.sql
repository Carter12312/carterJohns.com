CREATE TABLE species (
    species_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    bbs_aou_code CHAR(5) NULL,
    common_name VARCHAR(150) NOT NULL,
    taxonomic_order VARCHAR(100) NOT NULL,
    family VARCHAR(100) NOT NULL,
    genus VARCHAR(100) NOT NULL,
    specific_epithet VARCHAR(100) NOT NULL,

    PRIMARY KEY (species_id),
    UNIQUE KEY uq_species_bbs_aou_code (bbs_aou_code),
    INDEX idx_species_common_name (common_name)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;