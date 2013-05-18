{% set basename = 'phantomjs-1.9.0-linux-x86_64' %}
{% set filename = '{}.tar.bz2'.format(basename) %}

/usr/share/phantomjs:
  file.directory:
    - makedirs: True
    - user: vagrant
    - group: vagrant

phantomjs-download:
  cmd.run:
    - cwd: /usr/share/phantomjs
    - name: curl -O http://phantomjs.googlecode.com/files/{{ filename }}
    - unless: test -f /usr/share/phantomjs/{{ filename }}
    - require:
      - file: /usr/share/phantomjs
      - pkg: curl

phantomjs-extract:
  cmd.wait:
    - cwd: /usr/share/phantomjs
    - name: tar -xf {{ filename }}
    - watch:
      - cmd: phantomjs-download

phantomjs-symlink:
  cmd.wait:
    - cwd: /usr/local/bin
    - name: ln -s /usr/share/phantomjs/{{ basename }}/bin/phantomjs
    - user: root
    - group: root
    - watch:
      - cmd: phantomjs-extract
