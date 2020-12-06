module github.com/shawn-hurley/mig-client

go 1.14

// Use fork
replace bitbucket.org/ww/goautoneg v0.0.0-20120707110453-75cd24fc2f2c => github.com/markusthoemmes/goautoneg v0.0.0-20190713162725-c6008fefa5b1

replace github.com/vmware-tanzu/velero => github.com/konveyor/velero v0.0.0-20201026230312-8bd8ce8744d5

//k8s deps pinning
replace k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20181127025237-2b1284ed4c93

replace k8s.io/client-go => k8s.io/client-go v0.0.0-20181213151034-8d9ed539ba31

replace k8s.io/api => k8s.io/api v0.0.0-20181213150558-05914d821849

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20181213153335-0fe22c71c476

//openshift deps pinning
replace github.com/openshift/api => github.com/openshift/api v0.0.0-20190716152234-9ea19f9dd578

replace github.com/konveyor/mig-controller => github.com/shawn-hurley/mig-controller v0.0.0-20201124183406-31bc6e9427ac

require (
	cloud.google.com/go/storage v1.12.0 // indirect
	github.com/Azure/azure-sdk-for-go v49.0.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest v0.11.13 // indirect
	github.com/Azure/go-autorest/autorest/adal v0.9.8 // indirect
	github.com/aws/aws-sdk-go v1.36.2 // indirect
	github.com/evanphx/json-patch v4.9.0+incompatible // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/konveyor/mig-controller v0.0.0-00010101000000-000000000000
	github.com/matttproud/golang_protobuf_extensions v1.0.2-0.20181231171920-c182affec369 // indirect
	github.com/onsi/gomega v1.10.3 // indirect
	github.com/openshift/api v0.0.0-20201019163320-c6a5ec25f267 // indirect
	github.com/prometheus/client_golang v1.8.0 // indirect
	golang.org/x/crypto v0.0.0-20201203163018-be400aefbc4c // indirect
	golang.org/x/net v0.0.0-20201202161906-c7110b5ffcbb // indirect
	golang.org/x/oauth2 v0.0.0-20201203001011-0b49973bad19 // indirect
	golang.org/x/time v0.0.0-20200630173020-3af7569d3a1e // indirect
	google.golang.org/api v0.36.0 // indirect
	k8s.io/api v0.17.4
	k8s.io/utils v0.0.0-20201110183641-67b214c5f920 // indirect
	sigs.k8s.io/controller-runtime v0.1.11
)
