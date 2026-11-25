package defpackage;

import androidx.work.impl.WorkDatabase_Impl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahw extends aef {
    public final /* synthetic */ WorkDatabase_Impl a;

    public ahw(WorkDatabase_Impl workDatabase_Impl) {
        this.a = workDatabase_Impl;
    }

    @Override // defpackage.aef
    public final aeg a(afh afhVar) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("work_spec_id", new aeo("work_spec_id", "TEXT", true, 1, null, 1));
        hashMap.put("prerequisite_id", new aeo("prerequisite_id", "TEXT", true, 2, null, 1));
        HashSet hashSet = new HashSet(2);
        hashSet.add(new aep("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        hashSet.add(new aep("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(new aer("index_Dependency_work_spec_id", Arrays.asList("work_spec_id")));
        hashSet2.add(new aer("index_Dependency_prerequisite_id", Arrays.asList("prerequisite_id")));
        aes aesVar = new aes("Dependency", hashMap, hashSet, hashSet2);
        aes a = aes.a(afhVar, "Dependency");
        if (!aesVar.equals(a)) {
            return new aeg(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + aesVar + "\n Found:\n" + a);
        }
        HashMap hashMap2 = new HashMap(25);
        hashMap2.put("id", new aeo("id", "TEXT", true, 1, null, 1));
        hashMap2.put("state", new aeo("state", "INTEGER", true, 0, null, 1));
        hashMap2.put("worker_class_name", new aeo("worker_class_name", "TEXT", true, 0, null, 1));
        hashMap2.put("input_merger_class_name", new aeo("input_merger_class_name", "TEXT", false, 0, null, 1));
        hashMap2.put("input", new aeo("input", "BLOB", true, 0, null, 1));
        hashMap2.put("output", new aeo("output", "BLOB", true, 0, null, 1));
        hashMap2.put("initial_delay", new aeo("initial_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("interval_duration", new aeo("interval_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("flex_duration", new aeo("flex_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("run_attempt_count", new aeo("run_attempt_count", "INTEGER", true, 0, null, 1));
        hashMap2.put("backoff_policy", new aeo("backoff_policy", "INTEGER", true, 0, null, 1));
        hashMap2.put("backoff_delay_duration", new aeo("backoff_delay_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("period_start_time", new aeo("period_start_time", "INTEGER", true, 0, null, 1));
        hashMap2.put("minimum_retention_duration", new aeo("minimum_retention_duration", "INTEGER", true, 0, null, 1));
        hashMap2.put("schedule_requested_at", new aeo("schedule_requested_at", "INTEGER", true, 0, null, 1));
        hashMap2.put("run_in_foreground", new aeo("run_in_foreground", "INTEGER", true, 0, null, 1));
        hashMap2.put("out_of_quota_policy", new aeo("out_of_quota_policy", "INTEGER", true, 0, null, 1));
        hashMap2.put("required_network_type", new aeo("required_network_type", "INTEGER", false, 0, null, 1));
        hashMap2.put("requires_charging", new aeo("requires_charging", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_device_idle", new aeo("requires_device_idle", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_battery_not_low", new aeo("requires_battery_not_low", "INTEGER", true, 0, null, 1));
        hashMap2.put("requires_storage_not_low", new aeo("requires_storage_not_low", "INTEGER", true, 0, null, 1));
        hashMap2.put("trigger_content_update_delay", new aeo("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("trigger_max_content_delay", new aeo("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
        hashMap2.put("content_uri_triggers", new aeo("content_uri_triggers", "BLOB", false, 0, null, 1));
        HashSet hashSet3 = new HashSet(0);
        HashSet hashSet4 = new HashSet(2);
        hashSet4.add(new aer("index_WorkSpec_schedule_requested_at", Arrays.asList("schedule_requested_at")));
        hashSet4.add(new aer("index_WorkSpec_period_start_time", Arrays.asList("period_start_time")));
        aes aesVar2 = new aes("WorkSpec", hashMap2, hashSet3, hashSet4);
        aes a2 = aes.a(afhVar, "WorkSpec");
        if (!aesVar2.equals(a2)) {
            return new aeg(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + aesVar2 + "\n Found:\n" + a2);
        }
        HashMap hashMap3 = new HashMap(2);
        hashMap3.put("tag", new aeo("tag", "TEXT", true, 1, null, 1));
        hashMap3.put("work_spec_id", new aeo("work_spec_id", "TEXT", true, 2, null, 1));
        HashSet hashSet5 = new HashSet(1);
        hashSet5.add(new aep("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet6 = new HashSet(1);
        hashSet6.add(new aer("index_WorkTag_work_spec_id", Arrays.asList("work_spec_id")));
        aes aesVar3 = new aes("WorkTag", hashMap3, hashSet5, hashSet6);
        aes a3 = aes.a(afhVar, "WorkTag");
        if (!aesVar3.equals(a3)) {
            return new aeg(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + aesVar3 + "\n Found:\n" + a3);
        }
        HashMap hashMap4 = new HashMap(2);
        hashMap4.put("work_spec_id", new aeo("work_spec_id", "TEXT", true, 1, null, 1));
        hashMap4.put("system_id", new aeo("system_id", "INTEGER", true, 0, null, 1));
        HashSet hashSet7 = new HashSet(1);
        hashSet7.add(new aep("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        aes aesVar4 = new aes("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
        aes a4 = aes.a(afhVar, "SystemIdInfo");
        if (!aesVar4.equals(a4)) {
            return new aeg(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + aesVar4 + "\n Found:\n" + a4);
        }
        HashMap hashMap5 = new HashMap(2);
        hashMap5.put("name", new aeo("name", "TEXT", true, 1, null, 1));
        hashMap5.put("work_spec_id", new aeo("work_spec_id", "TEXT", true, 2, null, 1));
        HashSet hashSet8 = new HashSet(1);
        hashSet8.add(new aep("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet9 = new HashSet(1);
        hashSet9.add(new aer("index_WorkName_work_spec_id", Arrays.asList("work_spec_id")));
        aes aesVar5 = new aes("WorkName", hashMap5, hashSet8, hashSet9);
        aes a5 = aes.a(afhVar, "WorkName");
        if (!aesVar5.equals(a5)) {
            return new aeg(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + aesVar5 + "\n Found:\n" + a5);
        }
        HashMap hashMap6 = new HashMap(2);
        hashMap6.put("work_spec_id", new aeo("work_spec_id", "TEXT", true, 1, null, 1));
        hashMap6.put("progress", new aeo("progress", "BLOB", true, 0, null, 1));
        HashSet hashSet10 = new HashSet(1);
        hashSet10.add(new aep("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        aes aesVar6 = new aes("WorkProgress", hashMap6, hashSet10, new HashSet(0));
        aes a6 = aes.a(afhVar, "WorkProgress");
        if (!aesVar6.equals(a6)) {
            return new aeg(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + aesVar6 + "\n Found:\n" + a6);
        }
        HashMap hashMap7 = new HashMap(2);
        hashMap7.put("key", new aeo("key", "TEXT", true, 1, null, 1));
        hashMap7.put("long_value", new aeo("long_value", "INTEGER", false, 0, null, 1));
        aes aesVar7 = new aes("Preference", hashMap7, new HashSet(0), new HashSet(0));
        aes a7 = aes.a(afhVar, "Preference");
        if (aesVar7.equals(a7)) {
            return new aeg(true, null);
        }
        return new aeg(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + aesVar7 + "\n Found:\n" + a7);
    }

    @Override // defpackage.aef
    public final void b(afh afhVar) {
        afhVar.g("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
        afhVar.g("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
        afhVar.g("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
        afhVar.g("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        afhVar.g("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
        afhVar.g("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        afhVar.g("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        afhVar.g("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        afhVar.g("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
    }
}
