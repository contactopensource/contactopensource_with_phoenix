#!/bin/sh

mix phx.gen.html --binary-id \
  Graph Edge edges \
  tenant_id:uuid \
  type_uri:text \
  type_text:text \
  state_uri:text \
  state_text:text \
  updated_at_timestamp_utc:naive_datetime \
  updated_at_clock_count:integer \
  updated_by_text:text \
  subject_uri:text \
  subject_database:text \
  subject_schema:text \
  subject_table:text \
  subject_id:uuid \
  predicate_uri:text \
  predicate_database:text \
  predicate_schema:text \
  predicate_table:text \
  predicate_id:uuid \
  object_uri:text \
  object_database:text \
  object_schema:text \
  object_table:text \
  object_id:uuid \
  start_at_timestamp_utc:naive_datetime \
  stop_at_timestamp_utc:naive_datetime \
  count:integer \
  weight:decimal \
  probability:decimal

mix phx.gen.json --binary-id --web Api --no-context --no-schema \
  Graph Edge edges \
  tenant_id:uuid \
  type_uri:text \
  type_text:text \
  state_uri:text \
  state_text:text \
  updated_at_timestamp_utc:naive_datetime \
  updated_at_clock_count:integer \
  updated_by_text:text \
  subject_uri:text \
  subject_database:text \
  subject_schema:text \
  subject_table:text \
  subject_id:uuid \
  predicate_uri:text \
  predicate_database:text \
  predicate_schema:text \
  predicate_table:text \
  predicate_id:uuid \
  object_uri:text \
  object_database:text \
  object_schema:text \
  object_table:text \
  object_id:uuid \
  start_at_timestamp_utc:naive_datetime \
  stop_at_timestamp_utc:naive_datetime \
  count:integer \
  weight:decimal \
  probability:decimal
