apiVersion: operators.coreos.com/v1
kind: OperatorGroup
metadata:
  name: {{ .Values.operatorGroup.name }}
  namespace: {{ .Values.operatorGroup.namespace }}
spec:
  targetNamespaces:
    - {{ .Values.operatorGroup.namespace }}

