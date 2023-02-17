-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               PostgreSQL 14.5, compiled by Visual C++ build 1914, 64-bit
-- Server OS:                    
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table public.departments
DROP TABLE IF EXISTS "departments";
CREATE TABLE IF NOT EXISTS "departments" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''departments_id_seq''::regclass)',
	"department_name" TEXT NOT NULL,
	"description" TEXT NOT NULL,
	"user_id" INTEGER NULL DEFAULT NULL,
	"parent_department" TEXT NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"delete_comment" TEXT NULL DEFAULT NULL,
	"delete_reason" TEXT NULL DEFAULT NULL,
	"deleted" BOOLEAN NULL DEFAULT 'false',
	"deleted_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.departments: -1 rows
DELETE FROM "departments";
/*!40000 ALTER TABLE "departments" DISABLE KEYS */;
-- Dumping structure for table public.education_informations
DROP TABLE IF EXISTS "education_informations";
CREATE TABLE IF NOT EXISTS "education_informations" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''education_informations_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"institution_name" TEXT NOT NULL,
	"start_date" TEXT NOT NULL,
	"end_date" TEXT NOT NULL,
	"qualification" TEXT NOT NULL,
	"major_specialization" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.education_informations: -1 rows
DELETE FROM "education_informations";
/*!40000 ALTER TABLE "education_informations" DISABLE KEYS */;
-- Dumping structure for table public.employee_addresses
DROP TABLE IF EXISTS "employee_addresses";
CREATE TABLE IF NOT EXISTS "employee_addresses" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_addresses_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"postal_address" TEXT NULL DEFAULT NULL,
	"street_address" TEXT NULL DEFAULT NULL,
	"city" TEXT NULL DEFAULT NULL,
	"province_state" TEXT NULL DEFAULT NULL,
	"postal_code" TEXT NULL DEFAULT NULL,
	"digital_address" TEXT NULL DEFAULT NULL,
	"country" TEXT NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_addresses: 0 rows
DELETE FROM "employee_addresses";
/*!40000 ALTER TABLE "employee_addresses" DISABLE KEYS */;
/*!40000 ALTER TABLE "employee_addresses" ENABLE KEYS */;

-- Dumping structure for table public.employee_bank_details
DROP TABLE IF EXISTS "employee_bank_details";
CREATE TABLE IF NOT EXISTS "employee_bank_details" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_bank_details_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"bank_name" TEXT NOT NULL,
	"branch" TEXT NOT NULL,
	"account_name" TEXT NOT NULL,
	"account_number" TEXT NOT NULL,
	"sort_code" TEXT NOT NULL,
	"deleted_at" TIMESTAMP NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("user_id")
);

-- Dumping data for table public.employee_bank_details: -1 rows
DELETE FROM "employee_bank_details";
/*!40000 ALTER TABLE "employee_bank_details" DISABLE KEYS */;
-- Dumping structure for table public.employee_bios
DROP TABLE IF EXISTS "employee_bios";
CREATE TABLE IF NOT EXISTS "employee_bios" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_bios_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"title" TEXT NULL DEFAULT NULL,
	"dob" TEXT NULL DEFAULT NULL,
	"gender" TEXT NULL DEFAULT NULL,
	"marital_status" TEXT NULL DEFAULT NULL,
	"place_of_birth" TEXT NULL DEFAULT NULL,
	"nationality" TEXT NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"profile_image" TEXT NULL DEFAULT NULL,
	"short_bio" TEXT NULL DEFAULT NULL,
	"created_by" INTEGER NULL DEFAULT NULL,
	"updated_by" INTEGER NULL DEFAULT NULL,
	"first_name" TEXT NULL DEFAULT NULL,
	"full_name" TEXT NULL DEFAULT NULL,
	"last_name" TEXT NULL DEFAULT NULL,
	"other_name" TEXT NULL DEFAULT NULL,
	"delete_reason" TEXT NULL DEFAULT NULL,
	"deleted" BOOLEAN NULL DEFAULT 'false',
	"delete_comment" TEXT NULL DEFAULT NULL,
	"deleted_date" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_bios: -1 rows
DELETE FROM "employee_bios";
/*!40000 ALTER TABLE "employee_bios" DISABLE KEYS */;
-- Dumping structure for table public.employee_contacts
DROP TABLE IF EXISTS "employee_contacts";
CREATE TABLE IF NOT EXISTS "employee_contacts" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_contacts_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"work_email" TEXT NOT NULL,
	"phone_number_1" TEXT NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"created_by" INTEGER NULL DEFAULT NULL,
	"personal_email" TEXT NULL DEFAULT NULL,
	"city" TEXT NULL DEFAULT NULL,
	"country" TEXT NULL DEFAULT NULL,
	"digital_address" TEXT NULL DEFAULT NULL,
	"postal_address" TEXT NULL DEFAULT NULL,
	"province_state" TEXT NULL DEFAULT NULL,
	"street_address" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_contacts: -1 rows
DELETE FROM "employee_contacts";
/*!40000 ALTER TABLE "employee_contacts" DISABLE KEYS */;
-- Dumping structure for table public.employee_emergency_contacts
DROP TABLE IF EXISTS "employee_emergency_contacts";
CREATE TABLE IF NOT EXISTS "employee_emergency_contacts" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_emergency_contacts_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"name" TEXT NOT NULL,
	"relationship" TEXT NOT NULL,
	"phone_number" TEXT NOT NULL,
	"postal_address" TEXT NULL DEFAULT NULL,
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"city_of_residence" TEXT NULL DEFAULT NULL,
	"country_of_residence" TEXT NULL DEFAULT NULL,
	"digital_address" TEXT NULL DEFAULT NULL,
	"state_region" TEXT NULL DEFAULT NULL,
	"deleted_at" TIMESTAMP NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"country_initial" TEXT NULL DEFAULT NULL,
	"state_region_initial" TEXT NULL DEFAULT NULL,
	"email" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_emergency_contacts: -1 rows
DELETE FROM "employee_emergency_contacts";
/*!40000 ALTER TABLE "employee_emergency_contacts" DISABLE KEYS */;
-- Dumping structure for table public.employee_family_contacts
DROP TABLE IF EXISTS "employee_family_contacts";
CREATE TABLE IF NOT EXISTS "employee_family_contacts" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_family_contacts_id_seq''::regclass)',
	"name_of_contact" TEXT NOT NULL,
	"user_id" INTEGER NOT NULL,
	"relationship" TEXT NOT NULL,
	"phone_number" TEXT NOT NULL,
	"email" TEXT NOT NULL,
	"postal_address" TEXT NULL DEFAULT NULL,
	"digital_address" TEXT NULL DEFAULT NULL,
	"country_of_residence" TEXT NULL DEFAULT NULL,
	"state_region" TEXT NULL DEFAULT NULL,
	"city_of_residence" TEXT NULL DEFAULT NULL,
	"next_of_kin" BOOLEAN NOT NULL DEFAULT 'false',
	"deleted_at" TIMESTAMP NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"country_initial" TEXT NULL DEFAULT NULL,
	"state_region_initial" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_family_contacts: -1 rows
DELETE FROM "employee_family_contacts";
/*!40000 ALTER TABLE "employee_family_contacts" DISABLE KEYS */;
-- Dumping structure for table public.employee_identifications
DROP TABLE IF EXISTS "employee_identifications";
CREATE TABLE IF NOT EXISTS "employee_identifications" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_identifications_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"type" TEXT NOT NULL,
	"identification_number" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_identifications: -1 rows
DELETE FROM "employee_identifications";
/*!40000 ALTER TABLE "employee_identifications" DISABLE KEYS */;
-- Dumping structure for table public.employee_infos
DROP TABLE IF EXISTS "employee_infos";
CREATE TABLE IF NOT EXISTS "employee_infos" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_infos_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"department_id" INTEGER NULL DEFAULT NULL,
	"position_id" INTEGER NULL DEFAULT NULL,
	"starting_date" TEXT NULL DEFAULT NULL,
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"manager_id" INTEGER NULL DEFAULT NULL,
	"employee_id" TEXT NULL DEFAULT NULL,
	"location_id" INTEGER NULL DEFAULT NULL,
	"effective_date" TEXT NULL DEFAULT NULL,
	"created_by" INTEGER NULL DEFAULT NULL,
	"updated_by" INTEGER NULL DEFAULT NULL,
	"bios_id" INTEGER NULL DEFAULT NULL,
	"employee_type_id" INTEGER NULL DEFAULT NULL,
	"active" BOOLEAN NOT NULL DEFAULT 'false',
	"end_date" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id"),
	CONSTRAINT "employee_infos_bios_id_fkey" FOREIGN KEY ("bios_id") REFERENCES "employee_bios" ("id") ON UPDATE CASCADE ON DELETE SET NULL,
	CONSTRAINT "employee_infos_department_id_fkey" FOREIGN KEY ("department_id") REFERENCES "departments" ("id") ON UPDATE CASCADE ON DELETE SET NULL,
	CONSTRAINT "employee_infos_employee_type_id_fkey" FOREIGN KEY ("employee_type_id") REFERENCES "employee_types" ("id") ON UPDATE CASCADE ON DELETE SET NULL,
	CONSTRAINT "employee_infos_location_id_fkey" FOREIGN KEY ("location_id") REFERENCES "locations" ("id") ON UPDATE CASCADE ON DELETE SET NULL,
	CONSTRAINT "employee_infos_position_id_fkey" FOREIGN KEY ("position_id") REFERENCES "positions" ("id") ON UPDATE CASCADE ON DELETE SET NULL
);

-- Dumping data for table public.employee_infos: 0 rows
DELETE FROM "employee_infos";
/*!40000 ALTER TABLE "employee_infos" DISABLE KEYS */;
/*!40000 ALTER TABLE "employee_infos" ENABLE KEYS */;

-- Dumping structure for table public.employee_salaries
DROP TABLE IF EXISTS "employee_salaries";
CREATE TABLE IF NOT EXISTS "employee_salaries" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_salaries_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"salary_name" TEXT NULL DEFAULT NULL,
	"salary_amount" TEXT NOT NULL,
	"pay_rate" TEXT NULL DEFAULT NULL,
	"pay_schedule" TEXT NULL DEFAULT NULL,
	"pay_type" TEXT NULL DEFAULT NULL,
	"effective_date" TEXT NULL DEFAULT NULL,
	"comments" TEXT NULL DEFAULT NULL,
	"created_by" INTEGER NULL DEFAULT NULL,
	"updated_by" INTEGER NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"reason" TEXT NOT NULL,
	"delete_comment" TEXT NULL DEFAULT NULL,
	"delete_reason" TEXT NULL DEFAULT NULL,
	"deleted" BOOLEAN NULL DEFAULT 'false',
	"deleted_at" TIMESTAMP NULL DEFAULT NULL,
	"active" BOOLEAN NULL DEFAULT 'false',
	"end_date" TEXT NULL DEFAULT NULL,
	"ssnit_contributor" BOOLEAN NULL DEFAULT 'true',
	"tax_relief" DOUBLE PRECISION NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_salaries: 33 rows
DELETE FROM "employee_salaries";
/*!40000 ALTER TABLE "employee_salaries" DISABLE KEYS */;
-- Dumping structure for table public.employee_skills
DROP TABLE IF EXISTS "employee_skills";
CREATE TABLE IF NOT EXISTS "employee_skills" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_skills_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"skill_name" TEXT NOT NULL,
	"skill_level" TEXT NULL DEFAULT NULL,
	"proof" TEXT NULL DEFAULT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_skills: -1 rows
DELETE FROM "employee_skills";
/*!40000 ALTER TABLE "employee_skills" DISABLE KEYS */;
-- Dumping structure for table public.employee_status
DROP TABLE IF EXISTS "employee_status";
CREATE TABLE IF NOT EXISTS "employee_status" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_status_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"employee_type_id" INTEGER NULL DEFAULT NULL,
	"comment" TEXT NULL DEFAULT NULL,
	"effective_date" TEXT NULL DEFAULT NULL,
	"updated_by" INTEGER NULL DEFAULT NULL,
	"created_by" INTEGER NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"active" BOOLEAN NOT NULL DEFAULT 'false',
	PRIMARY KEY ("id"),
	CONSTRAINT "employee_status_employee_type_id_fkey" FOREIGN KEY ("employee_type_id") REFERENCES "employee_types" ("id") ON UPDATE CASCADE ON DELETE SET NULL
);

-- Dumping data for table public.employee_status: -1 rows
DELETE FROM "employee_status";
/*!40000 ALTER TABLE "employee_status" DISABLE KEYS */;
-- Dumping structure for table public.employee_types
DROP TABLE IF EXISTS "employee_types";
CREATE TABLE IF NOT EXISTS "employee_types" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''employee_types_id_seq''::regclass)',
	"name" TEXT NOT NULL,
	"description" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"delete_comment" TEXT NULL DEFAULT NULL,
	"delete_reason" TEXT NULL DEFAULT NULL,
	"deleted" BOOLEAN NULL DEFAULT 'false',
	"deleted_date" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.employee_types: -1 rows
DELETE FROM "employee_types";
/*!40000 ALTER TABLE "employee_types" DISABLE KEYS */;
-- Dumping structure for table public.id_prefixs
DROP TABLE IF EXISTS "id_prefixs";
CREATE TABLE IF NOT EXISTS "id_prefixs" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''id_prefixs_id_seq''::regclass)',
	"prefix_name" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"prefix_description" TEXT NOT NULL,
	"delete_comment" TEXT NULL DEFAULT NULL,
	"delete_reason" TEXT NULL DEFAULT NULL,
	"deleted" BOOLEAN NULL DEFAULT 'false',
	"deleted_date" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.id_prefixs: -1 rows
DELETE FROM "id_prefixs";
/*!40000 ALTER TABLE "id_prefixs" DISABLE KEYS */;
-- Dumping structure for table public.locations
DROP TABLE IF EXISTS "locations";
CREATE TABLE IF NOT EXISTS "locations" (
	"state_region" TEXT NULL DEFAULT NULL,
	"town" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"country_name" TEXT NOT NULL,
	"id" INTEGER NOT NULL DEFAULT 'nextval(''locations_id_seq''::regclass)',
	"country_initials" TEXT NULL DEFAULT NULL,
	"state_region_initials" TEXT NULL DEFAULT NULL,
	"branch_name" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.locations: 0 rows
DELETE FROM "locations";
/*!40000 ALTER TABLE "locations" DISABLE KEYS */;
/*!40000 ALTER TABLE "locations" ENABLE KEYS */;

-- Dumping structure for table public.permissions
DROP TABLE IF EXISTS "permissions";
CREATE TABLE IF NOT EXISTS "permissions" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''permissions_id_seq''::regclass)',
	"permission_name" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.permissions: 0 rows
DELETE FROM "permissions";
/*!40000 ALTER TABLE "permissions" DISABLE KEYS */;
/*!40000 ALTER TABLE "permissions" ENABLE KEYS */;

-- Dumping structure for table public.positions
DROP TABLE IF EXISTS "positions";
CREATE TABLE IF NOT EXISTS "positions" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''positions_id_seq''::regclass)',
	"position_name" TEXT NOT NULL,
	"description" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"delete_comment" TEXT NULL DEFAULT NULL,
	"delete_reason" TEXT NULL DEFAULT NULL,
	"deleted" BOOLEAN NULL DEFAULT 'false',
	"deleted_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.positions: -1 rows
DELETE FROM "positions";
/*!40000 ALTER TABLE "positions" DISABLE KEYS */;
-- Dumping structure for table public.roles
DROP TABLE IF EXISTS "roles";
CREATE TABLE IF NOT EXISTS "roles" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''roles_id_seq''::regclass)',
	"name" TEXT NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.roles: 0 rows
DELETE FROM "roles";
/*!40000 ALTER TABLE "roles" DISABLE KEYS */;
/*!40000 ALTER TABLE "roles" ENABLE KEYS */;

-- Dumping structure for table public.social_media_handles
DROP TABLE IF EXISTS "social_media_handles";
CREATE TABLE IF NOT EXISTS "social_media_handles" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''social_media_handles_id_seq''::regclass)',
	"user_id" INTEGER NOT NULL,
	"created_at" TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP',
	"updated_at" TIMESTAMP NULL DEFAULT NULL,
	"facebook" TEXT NULL DEFAULT NULL,
	"instagram" TEXT NULL DEFAULT NULL,
	"linkedin" TEXT NULL DEFAULT NULL,
	"twitter" TEXT NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Dumping data for table public.social_media_handles: -1 rows
DELETE FROM "social_media_handles";
/*!40000 ALTER TABLE "social_media_handles" DISABLE KEYS */;
-- Dumping structure for table public._prisma_migrations
DROP TABLE IF EXISTS "_prisma_migrations";
CREATE TABLE IF NOT EXISTS "_prisma_migrations" (
	"id" VARCHAR(36) NOT NULL,
	"checksum" VARCHAR(64) NOT NULL,
	"finished_at" TIMESTAMPTZ NULL DEFAULT NULL,
	"migration_name" VARCHAR(255) NOT NULL,
	"logs" TEXT NULL DEFAULT NULL,
	"rolled_back_at" TIMESTAMPTZ NULL DEFAULT NULL,
	"started_at" TIMESTAMPTZ NOT NULL DEFAULT 'now()',
	"applied_steps_count" INTEGER NOT NULL DEFAULT '0',
	PRIMARY KEY ("id")
);

-- Dumping data for table public._prisma_migrations: 69 rows
DELETE FROM "_prisma_migrations";
/*!40000 ALTER TABLE "_prisma_migrations" DISABLE KEYS */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
