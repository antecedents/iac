<br>

### Notes

The script [registry.sh](registry.sh) creates [an Amazon ECR (Elastic Container Registry) repository](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecr/create-repository.html).  Always ensure the _**tags**_ text, of the `--cli-input-json` file does not include special characters.  The skeleton of `--cli-input-json` file is created via the command

```shell
aws ecr create-repository --generate-cli-skeleton > registry.json
```

The registry.sh script is run via

```shell
bash ~/src/ecr/registry.sh {region}
```

Repository [deletion](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecr/delete-repository.html):

```shell
aws ecr delete-repository \
    --repository-name {repository.name} \
    --force
```

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
