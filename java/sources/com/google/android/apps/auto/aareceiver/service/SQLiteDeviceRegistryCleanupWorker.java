package com.google.android.apps.auto.aareceiver.service;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import defpackage.DeviceRegistryComponent;
import defpackage.DeviceRegistryBase;
import defpackage.CommonObjectsAndPreconditionsUtil;
import defpackage.GuavaPreconditionsSuppliersUtil;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SQLiteDeviceRegistryCleanupWorker extends Worker {
    private final DeviceRegistryBase g;

    public SQLiteDeviceRegistryCleanupWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.g = ((DeviceRegistryComponent) CommonObjectsAndPreconditionsUtil.s(context, DeviceRegistryComponent.class)).e();
    }

    @Override // androidx.work.Worker
    public final GuavaPreconditionsSuppliersUtil h() {
        this.g.i();
        return ex.h();
    }
}
