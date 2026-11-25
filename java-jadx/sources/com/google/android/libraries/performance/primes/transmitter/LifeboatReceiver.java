package com.google.android.libraries.performance.primes.transmitter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import defpackage.ccs;
import defpackage.ccu;
import defpackage.czj;
import defpackage.dag;
import defpackage.dcz;
import defpackage.ddk;
import defpackage.ddu;
import defpackage.hh;
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
                ccs ccsVar = (ccs) ddk.r(ccs.c, byteArrayExtra, dcz.b());
                final BroadcastReceiver.PendingResult goAsync = goAsync();
                String[] stringArrayExtra = intent.getStringArrayExtra("Transmitters");
                stringArrayExtra.getClass();
                String[] strArr = stringArrayExtra;
                ArrayList arrayList = new ArrayList(strArr.length);
                for (String str : strArr) {
                    try {
                        Constructor<?> declaredConstructor = Class.forName(str).getDeclaredConstructor(new Class[0]);
                        declaredConstructor.setAccessible(true);
                        arrayList.add(((ccu) declaredConstructor.newInstance(new Object[0])).a(context, ccsVar));
                    } catch (Throwable th) {
                        Log.e("PrimesLifeboatReceiver", String.format("Unable to transmit the crash using %s.", str), th);
                    }
                }
                dag n = hh.n(arrayList);
                goAsync.getClass();
                n.aW(new Runnable() { // from class: ccr
                    @Override // java.lang.Runnable
                    public final void run() {
                        goAsync.finish();
                    }
                }, czj.a);
            } catch (ddu e) {
                Log.e("PrimesLifeboatReceiver", "Unable to parse the payload of MetricSnapshot.", e);
            }
        }
    }
}
