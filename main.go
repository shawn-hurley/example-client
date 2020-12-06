package main

import (
	"context"
	"fmt"
	"os"

	"github.com/konveyor/mig-controller/pkg/apis/migration/v1alpha1"
	kapi "k8s.io/api/core/v1"
	"sigs.k8s.io/controller-runtime/pkg/client/config"
	"sigs.k8s.io/controller-runtime/pkg/manager"
)

func main() {

	cluster := &v1alpha1.MigCluster{
		Spec: v1alpha1.MigClusterSpec{
			URL: "testing-url",
			ServiceAccountSecretRef: &kapi.ObjectReference{
				Namespace: "testing",
				Name:      "test",
			},
			Insecure: true,
		},
	}

	cfg, err := config.GetConfig()
	if err != nil {
		fmt.Printf("\nerror: %v\n", err)
		os.Exit(1)
	}

	mgr, err := manager.New(cfg, manager.Options{})
	if err != nil {
		fmt.Printf("\nerror: %v\n", err)
		os.Exit(2)
	}

	client := mgr.GetClient()

	err = client.Create(context.TODO(), cluster)
	if err != nil {
		fmt.Printf("\nerror: %v\n", err)
		os.Exit(2)
	}

}
