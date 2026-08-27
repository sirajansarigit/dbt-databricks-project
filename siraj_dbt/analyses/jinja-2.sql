{%- set apples = ["Gala", "Fuji", "Honeycrisp"] -%}

{% for i in apples %}

  {% if i != "Gala" %}

    {{ i }}

  {% else %}

    I hate {{ i }}

  {% endif %}

{% endfor %}

