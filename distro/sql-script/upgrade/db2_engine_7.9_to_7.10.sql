-- Related to https://app.camunda.com/jira/browse/CAM-7676
drop index ACT_IDX_JOB_HANDLER;

-- https://app.camunda.com/jira/browse/CAM-9084
ALTER TABLE ACT_RE_PROCDEF
  ADD STARTABLE_ smallint DEFAULT 1 not null check(STARTABLE_ in (1,0));

-- https://app.camunda.com/jira/browse/CAM-9199
ALTER TABLE ACT_HI_PROCINST
  ADD ROOT_PROCESS_INSTANCE_ID_ varchar(64);
create index ACT_IDX_HI_PRO_INST_ROOT_PI on ACT_HI_PROCINST(ROOT_PROCESS_INSTANCE_ID_);