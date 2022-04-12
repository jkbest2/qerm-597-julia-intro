# QERM 597 Intro to Julia

This repository currently consists of a Pluto notebook. Open Julia from this
director (or change the working directory once Julia is open), and then run the
following to install the required packages:

```julia
import Pkg
Pkg.activate(".")
Pkg.instantiate()
```

This might take a few minutes to complete. Once that is done, start the Pluto
notebook server. The following will start the server and open it in your web
browser, where you will be able to open this notebook:

```julia
using Pluto
Pluto.run()
```
