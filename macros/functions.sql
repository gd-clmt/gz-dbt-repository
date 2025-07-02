{% macro margin_percent(margin, revenue) %}
 ROUND(SAFE_DIVIDE({{margin}},{{revenue}}),2)
{% endmacro %}