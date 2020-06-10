# Ontology Medadata Validation for Agent Information

Agents, individual persons or organisations, should be associated with ontologies to indicate *authors*, *creators*, *publishers* etc. There are 2 ways to do this that pyLODE understands: datatype & object type.

Datatype - not preferred
~~~~~~~~~~~~~~~~~~~~~~~~
A simple literal value for an agent that a human can read but not a machine can't understand:

* ``<ONTOLOGY_URI> dc:creator "AGENT NAME" .``
   * the range value is a string literal, either string typed (``^^xsd:string``) or language typed (``@en`` or ``@de``)
   * the following `Dublin Core Elements 1.1 <https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#section-3>`__ properties may be used:
      * ``dc:contributor``
      * ``dc:creator``
      * ``dc:publisher``
   * the following `schema.org <https://schema.org>`__ properties may be used:
      * ``schema:author``
      * ``schema:contributor``
      * ``schema:creator``
      * ``schema:editor``
      * ``schema:funder``
      * ``schema:publisher``
      * ``schema:translator``


