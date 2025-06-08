---
layout: default
title: Certifications
permalink: /certifications/
---

# Professional Certifications

{% assign certs = site.data.certifications %}

{% for category in certs %}
## {{ category[1].title }}

<div class="certification-grid">
{% for cert in category[1].items %}
  <div class="certification-card">
    {% if cert.badge_image %}
    <div class="cert-image">
      <img src="{{ cert.badge_image | relative_url }}" alt="{{ cert.name }} badge" class="cert-badge">
    </div>
    {% endif %}
    <div class="cert-details">
      <h3>{{ cert.name }}</h3>
      <p class="issuer">{{ cert.issuer }}</p>
      <p class="date">Issued: {{ cert.date }}</p>
      {% if cert.url %}
      <a href="{{ cert.url }}" class="verify-link" target="_blank">Verify Certificate</a>
      {% endif %}
    </div>
  </div>
{% endfor %}
</div>
{% endfor %} 