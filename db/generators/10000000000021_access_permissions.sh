#!/bin/sh

echo yes | mix phx.gen.schema --binary-id --migration \
  AccessPermission access_permissions \
    created_at_timestamp_utc:naive_datetime \
    created_at_clock_count:integer \
    updated_at_timestamp_utc:naive_datetime \
    updated_at_clock_count:integer \
    updated_by_uri:text \
    tenant_uri:text \
    type_uri:text \
    state_uri:text \
    key: text \
    name: text

echo yes | mix phx.gen.html --binary-id \
  Access AccessPermission access_permissions \
    created_at_timestamp_utc:naive_datetime \
    created_at_clock_count:integer \
    updated_at_timestamp_utc:naive_datetime \
    updated_at_clock_count:integer \
    updated_by_uri:text \
    tenant_uri:text \
    type_uri:text \
    key: text \
    name: text

echo yes | mix phx.gen.json --binary-id --no-context --no-schema --web Api \
  Access AccessPermission access_permissions \
    created_at_timestamp_utc:naive_datetime \
    created_at_clock_count:integer \
    updated_at_timestamp_utc:naive_datetime \
    updated_at_clock_count:integer \
    updated_by_uri:text \
    tenant_uri:text \
    type_uri:text \
    key: text \
    name: text
