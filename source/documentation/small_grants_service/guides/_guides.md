# Guides

This section contains guides for completing common tasks.

## How to login to the GOV.UK PaaS CLI

Firstly, ensure that you have downloaded the Cloud Foundry command line interface. 
Follow [this guidance](https://docs.cloud.service.gov.uk/get_started.html#set-up-the-cloud-foundry-command-line)
on the GOV.UK PaaS documentation to set up the Cloud Foundry CLI.

One installed, follow the below steps to login using your GOV.UK PaaS account.

1. Open a command line window.
2. Run the following command:

    ```bash
   cf login -a api.london.cloud.service.gov.uk -u USERNAME 
   ```
   
    `USERNAME` is your `@heritagefund.org.uk` email address used to set up
   your GOV.UK PaaS account.
   
3. Enter your GOV.UK PaaS account password.

## How to view apps running in GOV.UK PaaS

1. Login to GOV.UK PaaS using the Cloud Foundry CLI.
2. When presented with the option to select a space, enter a number to select
   your chosen space.
3. Run the following command:

    ```bash
   cf apps 
   ```

## How to view services running in GOV.UK PaaS

1. Login to GOV.UK PaaS using the Cloud Foundry CLI.
2. When presented with the option to select a space, enter a number to select
   your chosen space.
3. Run the following command:

    ```bash
   cf services 
   ```

## How to connect to a database running in GOV.UK PaaS

Firstly, ensure that you have installed the Conduit plugin for Cloud Foundry.
To install this plugin, run the following code from the command line:

```bash
cf install-plugin conduit
```

To connect to a database running in GOV.UK PaaS, run the following code from
the command line:

```bash
cf conduit SERVICE_NAME -- psql
```

where `SERVICE_NAME` is a unique descriptive name for this service instance.

## How to cancel a deployment running in GOV.UK PaaS

Sometimes deployments running in GOV.UK PaaS can get stuck. To cancel a stuck
deployment, run the following code from the command line (whilst logged into 
GOV.UK PaaS and inside the relevant space):

```bash
cf v3-cancel-zdt-push APP_NAME
```

where `APP_NAME` is the name of the Cloud Foundry app being deployed.