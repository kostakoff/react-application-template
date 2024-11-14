{{/*
define global labels helm chart
*/}}
{{- define "chart.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
calculated variables
*/}}

{{- define "app.fullName" -}}
{{ printf "%s-%s" .Values.projectName .Values.applicationName }}
{{- end -}}

{{- define "front.image" -}}
{{ .Values.images.front.registry }}/{{ .Values.images.front.repository }}/{{ .Values.images.front.imageName }}
{{- end -}}

{{/*
Create chart name and version as used by the chart label
*/}}
{{- define "app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | lower }}
{{- end -}}

{{/*
custom
*/}}
