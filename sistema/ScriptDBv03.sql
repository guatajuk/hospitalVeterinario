
/* *************************************************************************** 	*/
/*		BASE DE DATOS: HOSPITAL VETERINARIO UNIVERSIDAD DE CALDAS	*/
/*		FECHA: JUNIO 11 - 2013						*/
/*		VERSION: V0.3							*/
/*		AUTOR: JUAN CASTAÑO						*/
/* *************************************************************************** 	*/

/*	ZONA DE CREACION DE BASE DE DATOS					*/
/*	SCRIPT PARA CREAR LA BASE DE DATOS "HISTORIAL_VETERINARIO"		*/
/*	( SOLO DESCOMENTAR )							*/

/*	CREATE DATABASE "HISTORIAL_VETERINARIO";				*/

/* ****************************************************************************	*/

/*	ZONA DE BORRADO DE BASE DE DATOS					*/
/*	SCRIPT PARA BORRAR LA BASE DE DATOS "HISTORIAL_VETERINARIO"		*/
/*	( SOLO DESCOMENTAR )							*/

/*	DROP DATABASE "HISTORIAL_VETERINARIO";					*/

/* ****************************************************************************	*/

/*	ZONA DE BORRADO DE TABLAS						*/ 
/* 	SCRIPT PARA BORRAR LAS TABLAS DE LA BASE DE DATOS ( SOLO DESCOMENTAR )	*/

/*

DROP TABLE HistorialMedico;
DROP TABLE Veterinario;
DROP TABLE HistorialVacunas;
DROP TABLE TipoVacuna;
DROP TABLE TipoDieta;
DROP TABLE Paciente;
DROP TABLE Raza;
DROP TABLE Especie;
DROP TABLE Propietario;

*/

/* ****************************************************************************	*/

/*	ZONA DE CREACION DE TABLAS						*/
/*	SCRIPT PARA CREAR LAS TABLAS DE LA BASE DE DATOS			*/

/*	TABLA PROPIETARIO 	*/

CREATE OR REPLACE TABLE Propietario(
	codigo				SERIAL,
	nombre				VARCHAR(50),
	dni				VARCHAR(12) UNIQUE,
	telefono			VARCHAR(20),
	direccion			TEXT
);

ALTER TABLE Propietario ADD PRIMARY KEY (codigo);

/*	TABLA ESPECIE		*/

CREATE OR REPLACE TABLE Especie(
	codigo				SERIAL,
	nombre				VARCHAR(50),
	descripcion			TEXT
);

ALTER TABLE Especie ADD PRIMARY KEY (codigo);


/*	TABLA RAZA 		*/

CREATE OR REPLACE TABLE Raza(
	codigo				SERIAL,
	nombre 				VARCHAR(50),
	descripcion			TEXT
);

ALTER TABLE Raza ADD PRIMARY KEY (codigo);


/* 	TABLA PACIENTE 		*/

CREATE OR REPLACE TABLE Paciente(
	codigo				SERIAL,
	nombre				VARCHAR(50),
	especie				INT,
	raza				VARCHAR(50),
	sexo				CHAR(1),
	edad				CHAR(2),
	color				VARCHAR(10),
	procedencia			VARCHAR(20),
	codigoPropietario		INT
);

ALTER TABLE Paciente ADD PRIMARY KEY (codigo), 
			ADD FOREIGN KEY (especie) REFERENCES Especie (codigo),
			ADD FOREIGN KEY (codigoPropietario) REFERENCES Propietario (codigo);


/* 	TABLA  TIPO DIETA 	*/

CREATE OR REPLACE TABLE TipoDieta(
	codigo			SERIAL,
	descripcion		TEXT
);

ALTER TABLE TipoDieta ADD PRIMARY KEY (codigo);


/* 	TABLA TIPO VACUNA 	*/

CREATE OR REPLACE TABLE TipoVacuna(
	codigo 			SERIAL,
	descripcion		TEXT
);

ALTER TABLE TipoVacuna ADD PRIMARY KEY (codigo);


/* 	TABLA HISTORIAL VACUNA 	*/

CREATE OR REPLACE TABLE HistorialVacunas(
	codigo					SERIAL,
	codigoPaciente			INT,
	fecha					DATE,
	tipoVacuna				INT
);

ALTER TABLE HistorialVacunas ADD FOREIGN KEY (codigoPaciente) REFERENCES Paciente (codigo),
			ADD FOREIGN KEY (tipoVacuna) REFERENCES TipoVacuna (codigo);


/* 	TABLA VETERINARIO 	*/

CREATE OR REPLACE TABLE Veterinario(
	codigo					SERIAL,
	cedula					VARCHAR(12),
	nombre					VARCHAR(50),
	especialidad			VARCHAR(50)
);

ALTER TABLE Veterinario ADD PRIMARY KEY (codigo);


/* 	TABLA HISTORIAL MEDICO 	*/

CREATE OR REPLACE TABLE HistorialMedico(
	codigo								SERIAL,
	codigoPaciente						INT,
	codigoVeterinario					INT,
	fecha								DATE,
	tipoDieta							INT,
	frecuenciaAlimentacion				CHAR(2),
	procedencia							VARCHAR(100),
	otrosAnimales						SMALLINT,
	enfermedadesAnteriores				TEXT,
	tratamientoPrevio					TEXT,
	desparacitacion						VARCHAR(200),
	anamnesis							TEXT,
	temperatura							NUMERIC(4,2),
	frecuenciaCardiaca					VARCHAR(100),
	mucosas								VARCHAR(100),
	reflejos							VARCHAR(100),
	pulso								VARCHAR(10),
	caracteristicasPulso				VARCHAR(200),
	frecuenciaRespiratoria				VARCHAR(100),
	ganglios							VARCHAR(100),
	llenadoCapilar						VARCHAR(100),
	peso								NUMERIC(4,2),
	palpacionRectal						VARCHAR(100),
	actitud								CHAR(2),
	hidratacion							CHAR(2),
	estadoNutricional					CHAR(2),
	gangliosLinfaticosSuperficiales		CHAR(2),
	membranasMucosas					CHAR(2),
	sistemaCardiovascular				CHAR(2),
	sistemaRespiratorio					CHAR(2),
	sistemaDigestivo					CHAR(2),
	sistemaUrinario						CHAR(2),
	sistemaReproductor					CHAR(2),
	sistemaMusculoEsqueletico			CHAR(2),
	sistemaNervioso						CHAR(2),
	pielyAnexos							CHAR(2),
	ojos								CHAR(2)
);

ALTER TABLE HistorialMedico ADD PRIMARY KEY (codigo), 
							ADD FOREIGN KEY (codigoPaciente) REFERENCES Paciente(codigo),
							ADD FOREIGN KEY (codigoVeterinario) REFERENCES Veterinario(codigo),
							ADD FOREIGN KEY (tipoDieta) REFERENCES TipoDieta(codigo);


							
/* ********************************************************************	*/
/* 	FIN DEL SCRIPT							*/
/* ********************************************************************	*/