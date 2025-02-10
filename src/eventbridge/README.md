<br>

## EventBridge Schedules

[EventBridge Scheduler & Schedule Types](https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html)

<br>

### Create

Start [from scratch](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/scheduler/create-schedule.html), or edit the details of [an existing schedule](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/scheduler/get-schedule.html).  Of interest:

* [description: aws scheduler](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/scheduler/index.html#cli-aws-scheduler)
* [create-schedule-group](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/scheduler/create-schedule-group.html)
* [create-schedule](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/scheduler/create-schedule.html)

<br>

Use the `--generate-cli-skeleton` directive to create arguments templates, e.g.,

```shell
aws scheduler create-schedule-group --generate-cli-skeleton yaml-input > group.yaml
```

and

```shell
aws scheduler create-schedule --generate-cli-skeleton yaml-input > schedule.yaml
```


Next, adapt the `yaml` or `json` script in line with *schedule group*, *schedule*, etc., requirements.  


<br>
<br>

## References

Beware of the different cron syntax types

* [Amazon EventBridge Syntax](https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html#cron-based)
* [Baeldung Cron Expressions](https://www.baeldung.com/cron-expressions)
* [CronHub Syntax](https://crontab.cronhub.io)
* [Cronitor Syntax](https://crontab.guru)

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
