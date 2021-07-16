# Tanzu Kubernetes Grid (TKG) Multi-vCenter Server templating using YTT

## Usage

`run_ytt_script.sh` - Demonstrates templating using [ytt](https://github.com/vmware-tanzu/carvel-ytt)
* Takes `values.yaml`, `overlay.yaml` and `tkg-cluster-01-BASE.yaml` and creates `tkg-cluster-01-YTT.yaml` which matches the desired YAML example `tkg-cluster-01-DESIRED.yaml`

`run_sed_script.sh` - Demonstrates templating using classic [sed](https://www.gnu.org/software/sed/manual/sed.html)

* Makes a copy of `tkg-cluster-01-BASE.yaml` and creates `tkg-cluster-01-SED.yaml` which matches the desired YAML example `tkg-cluster-01-DESIRED.yaml`