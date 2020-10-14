
{{/* vim: set filetype=mustache: */}}

{{/*
Create a default fully qualified ui name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "hello-world-ui.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-ui" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

