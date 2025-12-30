{% macro learn_variables() %}

    {% set your_name_jinja = "Nandu" %}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    {{ log("Hello dbt user " ~ var("user_name", "YOUR USERNAME IS NANDU!!") ~ "!", info=True) }}

    {% if var("in_test", False) %}
       {{ log("In test", info=True) }}
    {% else %}
       {{ log("NOT in test", info=True) }}
    {% endif %}

{% endmacro %}