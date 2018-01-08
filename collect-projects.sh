#!/bin/sh -e

collect_project
{
  cat > $1.md <<EOF
---
layout: page
title: $1
permalink: /projects/$1/
---
EOF

  cat ../$1/README.md >> $1.md
}

collect_project vapecalc
