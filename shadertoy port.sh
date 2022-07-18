#!/bin/sh

demoFile=$(dirname "$1")"/ps-gl32-img.glsl"

cat << EOF > $demoFile
#version 150
out vec4 FragColor;

uniform vec4 iMouse;
uniform vec2 iResolution;
uniform float iTime;


EOF

sed '' "$1" >> $demoFile

cat << EOF >> $demoFile


void main( void ){vec4 color = vec4(0.0,0.0,0.0,1.0); mainImage(color, gl_FragCoord.xy);color.w = 1.0;FragColor = color;}
EOF