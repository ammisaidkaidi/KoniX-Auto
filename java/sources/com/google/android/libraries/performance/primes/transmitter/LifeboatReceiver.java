package com.google.android.libraries.performance.primes.transmitter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import defpackage.PrimesLogMessage;
import defpackage.SnapshotUploadTaskFactory;
import defpackage.DirectExecutorEnum_czj;
import defpackage.ListenableFuture;
import defpackage.ExtensionRegistryLite;
import defpackage.GeneratedMessageLite;
import defpackage.InvalidProtocolBufferException;
import defpackage.ProjectionIntentHelper;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LifeboatReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.hasExtra("MetricSnapshot") && intent.hasExtra("Transmitters")) {
            byte[] byteArrayExtra = intent.getByteArrayExtra("MetricSnapshot");
            byteArrayExtra.getClass();
            try {
                PrimesLogMessage ccsVar = (PrimesLogMessage) GeneratedMessageLite.r(ccs.c, byteArrayExtra, ExtensionRegistryLite.b());
                final BroadcastReceiver.PendingResult goAsync = goAsync();
                String[] stringArrayExtra = intent.getStringArrayExtra("Transmitters");
                stringArrayExtra.getClass();
                String[] strArr = stringArrayExtra;
                ArrayList arrayList = new ArrayList(strArr.length);
                for (String str : strArr) {
                    try {
                        Constructor<?> declaredConstructor = Class.forName(str).getDeclaredConstructor(new Class[0]);
                        declaredConstructor.setAccessible(true);
                        arrayList.add(((SnapshotUploadTaskFactory) declaredConstructor.newInstance(new Object[0])).a(context, ccsVar));
                    } catch (Throwable th) {
                        Log.e("PrimesLifeboatReceiver", String.format("Unable to transmit the crash using %s.", str), th);
                    }
                }
                ListenableFuture n = ProjectionIntentHelper.n(arrayList);
                goAsync.getClass();
                n.aW(new Runnable() { // from class: ccr
                    @Override // java.lang.Runnable
                    public final void run() {
                        goAsync.finish();
                    }
                }, czj.a);
            } catch (InvalidProtocolBufferException e) {
                Log.e("PrimesLifeboatReceiver", "Unable to parse the payload of MetricSnapshot.", e);
            }
        }
    }
}
