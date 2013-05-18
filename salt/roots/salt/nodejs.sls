nodejs-ppas:
  pkgrepo.managed:
    - human_name: Node.js
    - ppa: chris-lea/node.js
    - require_in:
      - pkg: nodejs

nodejs:
  pkg:
    - installed
    - version: 0.10.7-1chl1~precise1
