{{- define "templating-deep-dive.fullname" -}}
{{- $defaultName := printf "%s-%s" .Release.Name .Chart.Name }}
{{- .Values.customName | default $defaultName | trimSuffix "-" | trimPrefix "-" | trunc 63 }}
{{- end -}}

{{- define "templating-deep-dive.servicename" -}}
{{- printf "%s-%s-svc" .Release.Name .Chart.Name | trimSuffix "-" | trimPrefix "-" | trunc 63 | lower -}}
{{- end -}}

{{- define  "templating-deep-dive.selectorLabels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end -}}