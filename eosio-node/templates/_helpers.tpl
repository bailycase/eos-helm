{{- define "eosnode.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "eosnode.fullname" -}}
{{- $name := include "eosnode.name" . -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "eosnode.headlessname" -}}
{{- printf "%s-headless" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "eosnode.nodeosfullname" -}}
{{- printf "%s-nodeos" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "eosnode.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "eosnode.nodeargs" -}}
{{- join " " .Values.args }}
{{- end -}}

{{- define "eosnode.morenodeargs" -}}
{{- join " " .Values.moreargs }}
{{- end -}}
