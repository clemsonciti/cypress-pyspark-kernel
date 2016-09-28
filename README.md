# cypress-pyspark-kernel
For running PySpark on the Cypress Cluster via the JupyterHub notebook interface deployed on the Palmetto Cluster.

## Installation on Cypress and Palmetto
### For users with a Mac or Linux Operating System
Run the following command in a console on your computer (replacing $USER with your Clemson University username):
```
ssh $USER@cypress.clemson.edu 'git clone https://github.com/clemsonciti/cypress-pyspark-kernel && cd cypress-pyspark-kernel && ./setup'
```
Use your Clemson University password if prompted for one.

### For users with a Windows Operating System
If you are using the *Secure Shell Client* software or *PuTTY* on Windows, then you need to connect to *cypress.clemson.edu* first using your Clemson University username and password. Then, in your console, run the following command:
```
git clone https://github.com/clemsonciti/cypress-pyspark-kernel && cd cypress-pyspark-kernel && ./setup
```

## Use PySpark on Cypress via the Palmetto Cluster JupyterHub
1. Using your web browser visit: https://www.palmetto.clemson.edu/jupyterhub

2. Log-in using your Clemson University username and password.

3. Start your Jupyter Notebook Server on Palmetto. For more information, consult: https://www.palmetto.clemson.edu/jupyterhub/docs/

4. Create a new notebook using the *Anaconda/4.0.0 (Python 2) PySpark on Cypress* option.

Congratulations, you may now use PySpark on YARN via your notebook.

## Customize your YARN resource request:
To customize the number of Spark executors and other resource request parameters, customize the .pysparkrc file that was installed under your $HOME directory.

This can be done in your browser by visiting: https://www.palmetto.clemson.edu:8443/user/$USER/edit/.pysparkrc

After saving the .pysparkrc file, future notebooks that use the PySpark on Cypress kernel will use any overridden values in your .pysparkrc file when making the YARN resource request on Cypress.

