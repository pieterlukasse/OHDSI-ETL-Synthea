% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateVocabViews.r
\name{CreateVocabViews}
\alias{CreateVocabViews}
\title{Create Vocabulary Views to a Preexisting Vocabulary Schema.}
\usage{
CreateVocabViews(connectionDetails, vocabSourceSchema, vocabTargetSchema)
}
\arguments{
\item{connectionDetails}{An R object of type\cr\code{connectionDetails} created using the
function \code{createConnectionDetails} in the
\code{DatabaseConnector} package.}

\item{vocabSourceSchema}{The name of the database schema that already contains the Vocabulary
tables to create views to.  Requires read permissions to this database. On SQL
Server, this should specifiy both the database and the schema,
so for example 'cdm_instance.dbo'.}

\item{vocabTargetSchema}{The name of the database schema into which to create the Vocabulary
views in.  Requires read and write permissions to this database. On SQL
Server, this should specifiy both the database and the schema,
so for example 'cdm_instance.dbo'.}
}
\description{
This function creates views for all Vocabulary tables to a specified schema that contains all those tables.
}
\details{
This function assumes has already been run and \cr\code{vocabSourceSchema} has all required Vocabulary tables.
}
