# GitHub Copilot Workshop

## Work with Terraform files using GitHub Copilot

<img width="400" alt="Building in the clouds image" src="./assets/Terraform-image.png">

In this fun workshop, you will learn how to use GitHub Copilot to help you work with Terraform files.

Estimated time to complete: `10 to 45 minutes`

Participants will be guided to install the GitHub Copilot VS Code extension, follow a CodeTour to learn how to interact with GitHub Copilot, and then use GitHub Copilot to update, document and create Terraform files. 



## Instructions 

Inside the `.instructions` folder you will find a number of markdown files that contain the instructions for this workshop.

Filename | Description
--- | ---
[1. setup.md](</.instructions/1. setup.md>) | Instructions for installing the GitHub Copilot VS Code extension and joining the GitHub Copilot trial.
[2. getting started.md](</.instructions/2. getting started.md>) | Instructions for getting started with GitHub Copilot.
[3. challenge exercises.md](</.instructions/3. challenge exercises.md>) | Challenge exercises for participants to complete.
[4. additional resources.md](</.instructions/4. additional resources.md>) | Additional resources for participants to explore after the workshop.


## Running a workshop?

If you're planning to run a GitHub Copilot workshop, please review the [workshop guide](</.instructions/workshop organisers.md>) for tips and tricks to help you run a successful workshop. 


## Project Structure

In this project you will find: 

* a `variables.tf` file we'll use to influence Copilot's suggestions
* a `main.tf` file that contains a Terraform module that creates a resource group in Azure
* a devcontainer that installs CodeTour and GitHub Copilot when the Codespace is created (If you want to use Codespaces)
* a `.instructions` folder all the instructions for this workshop.
* an `assets` folder containing images used in this workshop documentation.
* a `.tours` folder that includes the CodeTour file if you wish to use it.



## FAQ 

- **How do I get a GitHub Copilot license?**
  - You can request a trial license from your GitHub Sales representative or via Copilot for Individuals or Business licenses.
- **How do I get a GitHub Codespaces license?**
    - Codespaces is included with GitHub Enterprise Cloud, GitHub Enterprise Server, and GitHub Free. You can check under your [billing settings page](https://github.com/settings/billing).
- **I am having trouble activating GitHub Copilot after I load the plugin, what should I do?**
    - This could be because you launched your Codespace before you activated GitHub Copilot or accepted the invitation to the trial org. Please try to reload your Codespace and try again.

## Acknowledgements

A special thanks to the following awesome Hubbers who have contributed in many different ways to our workshops. 
[blackgirlbytes](https://github.com/blackgirlbytes), [pierluigi](https://github.com/pierluigi), [yuichielectric](https://github.com/yuichielectric), [dchomh](https://github.com/dchomh), [nolecram](https://github.com/nolecram), [rsymo](https://github.com/rsymo), [damovisa](https://github.com/damovisa) and anyone else I've inadvertently missed.

Enjoy your workshop!
[anthonyborton](https://github.com/anthonyborton)

_v1.0 Released May, 2023_

# Tips

## VMサイズの選択方法

```PowerShell
$REGION = "japaneast"
az vm list-sizes --location $REGION --output table | Select-String "F"

Output > 
MaxDataDiskCount    MemoryInMb    Name                      NumberOfCores    OsDiskSizeInMb    ResourceDiskSizeInMb
4                   2048          Standard_F1               1                1047552           16384
8                   4096          Standard_F2               2                1047552           32768
16                  8192          Standard_F4               4                1047552           65536
32                  16384         Standard_F8               8                1047552           131072
64                  32768         Standard_F16              16               1047552           262144
4                   2048          Standard_F1s              1                1047552           4096
8                   4096          Standard_F2s              2                1047552           8192
16                  8192          Standard_F4s              4                1047552           16384
32                  16384         Standard_F8s              8                1047552           32768
64                  32768         Standard_F16s             16               1047552           65536
4                   4096          Standard_F2s_v2           2                1047552           16384
8                   8192          Standard_F4s_v2           4                1047552           32768
16                  16384         Standard_F8s_v2           8                1047552           65536
32                  32768         Standard_F16s_v2          16               1047552           131072
32                  65536         Standard_F32s_v2          32               1047552           262144
32                  98304         Standard_F48s_v2          48               1047552           393216
32                  131072        Standard_F64s_v2          64               1047552           524288
32                  147456        Standard_F72s_v2          72               1047552           589824
8                   86016         Standard_FX4mds           4                1047552           172032
24                  258048        Standard_FX12mds          12               1047552           516096
32                  516096        Standard_FX24mds          24               1047552           1032192
32                  774144        Standard_FX36mds          36               1047552           1548288
32                  1032192       Standard_FX48mds          48               1047552           2064384
```

## 利用可能なVMイメージを取得

参考：[[Azure]TerraformでデプロイするLinux VMイメージの情報をjqでイイカンジに調べる方法](https://zenn.dev/gkz/articles/azure-provider-terraform-jq)

```Powershell
PS > az vm image list --output table
You are viewing an offline list of images, use --all to retrieve an up-to-date list
Architecture    Offer                         Publisher               Sku                                 Urn                                                                             UrnAlias                 Version
--------------  ----------------------------  ----------------------  ----------------------------------  ------------------------------------------------------------------------------  -----------------------  ---------
x64             0001-com-ubuntu-server-jammy  Canonical               22_04-lts-gen2                      Canonical:0001-com-ubuntu-server-jammy:22_04-lts-gen2:latest                    Ubuntu2204               latest
```

# Provider

## AzAPI Provider
https://learn.microsoft.com/ja-jp/azure/developer/terraform/overview-azapi-provider