#!/bin/sh

mix phx.gen.html --binary-id \
  Qualia ColorTheme color_themes \
    updated_at_timestamp_utc:naive_datetime \
    updated_at_clock_count:integer \
    updated_by_uri:text \
    tenant_uri:text \
    type_uri:text \
    state_uri:text \
    primary_color_id:uuid \
    secondary_color_id:uuid \
    tertiary_color_id:uuid \
    success_color_id:uuid \
    failure_color_id:uuid \
    light_color_id:uuid \
    dark_color_id:uuid \
    safety_color_id:uuid \
    caution_color_id:uuid \
    warning_color_id:uuid \
    danger_color_id:uuid \
    rag_status_r_color_id:uuid \
    rag_status_a_color_id:uuid \
    rag_status_g_color_id:uuid
    
mix phx.gen.json --binary-id --web Api --no-context --no-schema \
  Qualia ColorTheme color_themes \
    updated_at_timestamp_utc:naive_datetime \
    updated_at_clock_count:integer \
    updated_by_uri:text \
    tenant_uri:text \
    type_uri:text \
    state_uri:text \
    primary_color_id:uuid \
    secondary_color_id:uuid \
    tertiary_color_id:uuid \
    success_color_id:uuid \
    failure_color_id:uuid \
    light_color_id:uuid \
    dark_color_id:uuid \
    safety_color_id:uuid \
    caution_color_id:uuid \
    warning_color_id:uuid \
    danger_color_id:uuid \
    rag_status_r_color_id:uuid \
    rag_status_a_color_id:uuid \
    rag_status_g_color_id:uuid
