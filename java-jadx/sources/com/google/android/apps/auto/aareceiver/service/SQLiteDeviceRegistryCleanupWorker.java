package com.google.android.apps.auto.aareceiver.service;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import defpackage.bax;
import defpackage.bby;
import defpackage.dpx;
import defpackage.ex;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SQLiteDeviceRegistryCleanupWorker extends Worker {
    private final bby g;

    public SQLiteDeviceRegistryCleanupWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.g = ((bax) dpx.s(context, bax.class)).e();
    }

    @Override // androidx.work.Worker
    public final ex h() {
        this.g.i();
        return ex.h();
    }
}
