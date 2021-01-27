########### Task 02_E03_A
# Add an section to the vignette where it outputs the current date and time
# Make sure that the package still passes devtools::check()
# Build the R package into a single bundled file and install it.
# View the vignette

# in ~/demopkg/vignettes/My-hello-world.Rmd add the following chunk and 
# save the updated file

```{r}
Sys.time()
```

# Make sure the package still passes
# devtools::check()
devtools::check()

# build the package into a single file source via
# devtools::build()
devtools::build(vignettes = TRUE)

# install the tarballed package via
# install.packages()
install.packages("../demopckg_0.0.0.9000.tar.gz",type = "source", repos = NULL)

# View our vignette via
vignette(package = "demopckg", topic = "My-hello-world")

########### Task 02_E03_B
# Now install the R package from the source code
# View the vignette, and see that the time has now updated

# Install the package from source via 
# devtools::install()
devtools::install()

# View our vignette via
vignette(package = "demopckg", topic = "My-hello-world")

########### Task 02_E03_C
# Re-install from the tarball
# View the vignette, and see the time has not changed from the prior install

# install the tarballed package via
# install.packages()
install.packages("../demopckg_0.0.0.9000.tar.gz",type = "source", repos = NULL)

# View our vignette via
vignette(package = "demopckg", topic = "My-hello-world")

########### Task 02_E03_D
# Now install the R package again from the source code
# View the vignette to see that indeed, the time has changed again

# Install the package from source via 
# devtools::install(), but be sure to set build_vignettes to TRUE!
devtools::install()

# View our vignette via
vignette(package = "demopckg", topic = "My-hello-world")
