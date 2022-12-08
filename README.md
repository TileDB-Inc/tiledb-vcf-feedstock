About tiledb-vcf
================

Home: http://tiledb.com

Package license: MIT

Feedstock license: [BSD-3-Clause](https://github.com/TileDB-Inc/tiledb-vcf-feedstock/blob/master/LICENSE.txt)

Summary: Efficient variant-call data storage and retrieval library using the TileDB storage library.

Development: https://github.com/TileDB-Inc/TileDB-VCF

Documentation: https://docs.tiledb.com/developer/tiledbvcf/introduction

TileDB-VCF is the python interface to the TileDB-VCF library.


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/TileDB-Inc/feedstock-builds/_build/latest?definitionId=&branchName=master">
            <img src="https://dev.azure.com/TileDB-Inc/feedstock-builds/_apis/build/status/tiledb-vcf-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/TileDB-Inc/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/TileDB-Inc/feedstock-builds/_apis/build/status/tiledb-vcf-feedstock?branchName=master&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/TileDB-Inc/feedstock-builds/_build/latest?definitionId=&branchName=master">
                  <img src="https://dev.azure.com/TileDB-Inc/feedstock-builds/_apis/build/status/tiledb-vcf-feedstock?branchName=master&jobName=osx&configuration=osx%20osx_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libtiledbvcf-green.svg)](https://anaconda.org/tiledb/libtiledbvcf) | [![Conda Downloads](https://img.shields.io/conda/dn/tiledb/libtiledbvcf.svg)](https://anaconda.org/tiledb/libtiledbvcf) | [![Conda Version](https://img.shields.io/conda/vn/tiledb/libtiledbvcf.svg)](https://anaconda.org/tiledb/libtiledbvcf) | [![Conda Platforms](https://img.shields.io/conda/pn/tiledb/libtiledbvcf.svg)](https://anaconda.org/tiledb/libtiledbvcf) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-tiledbvcf--py-green.svg)](https://anaconda.org/tiledb/tiledbvcf-py) | [![Conda Downloads](https://img.shields.io/conda/dn/tiledb/tiledbvcf-py.svg)](https://anaconda.org/tiledb/tiledbvcf-py) | [![Conda Version](https://img.shields.io/conda/vn/tiledb/tiledbvcf-py.svg)](https://anaconda.org/tiledb/tiledbvcf-py) | [![Conda Platforms](https://img.shields.io/conda/pn/tiledb/tiledbvcf-py.svg)](https://anaconda.org/tiledb/tiledbvcf-py) |

Installing tiledb-vcf
=====================

Installing `tiledb-vcf` from the `tiledb` channel can be achieved by adding `tiledb` to your channels with:

```
conda config --add channels tiledb
conda config --set channel_priority strict
```

Once the `tiledb` channel has been enabled, `libtiledbvcf, tiledbvcf-py` can be installed with `conda`:

```
conda install libtiledbvcf tiledbvcf-py
```

or with `mamba`:

```
mamba install libtiledbvcf tiledbvcf-py
```

It is possible to list all of the versions of `libtiledbvcf` available on your platform with `conda`:

```
conda search libtiledbvcf --channel tiledb
```

or with `mamba`:

```
mamba search libtiledbvcf --channel tiledb
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search libtiledbvcf --channel tiledb

# List packages depending on `libtiledbvcf`:
mamba repoquery whoneeds libtiledbvcf --channel tiledb

# List dependencies of `libtiledbvcf`:
mamba repoquery depends libtiledbvcf --channel tiledb
```




Updating tiledb-vcf-feedstock
=============================

If you would like to improve the tiledb-vcf recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`tiledb` channel, whereupon the built conda packages will be available for
everybody to install and use from the `tiledb` channel.
Note that all branches in the TileDB-Inc/tiledb-vcf-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ihnorton](https://github.com/ihnorton/)
* [@shelnutt2](https://github.com/shelnutt2/)

