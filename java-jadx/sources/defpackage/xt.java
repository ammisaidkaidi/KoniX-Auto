package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
public class xt {
    public static ComponentName a(Context context, Intent intent) {
        return context.startForegroundService(intent);
    }

    public static dpd b(dpd dpdVar, long j) {
        ddf ddfVar = (ddf) dpdVar.E(5);
        ddfVar.n(dpdVar);
        dpd dpdVar2 = (dpd) ddfVar.b;
        if ((dpdVar2.a & 2) != 0) {
            long j2 = dpdVar2.c - j;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpd dpdVar3 = (dpd) ddfVar.b;
            dpdVar3.a |= 2;
            dpdVar3.c = j2;
        }
        dpd dpdVar4 = (dpd) ddfVar.b;
        if ((dpdVar4.a & 4) != 0) {
            long j3 = dpdVar4.d - j;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpd dpdVar5 = (dpd) ddfVar.b;
            dpdVar5.a |= 4;
            dpdVar5.d = j3;
        }
        dpd dpdVar6 = (dpd) ddfVar.b;
        if ((dpdVar6.a & 8) != 0) {
            long j4 = dpdVar6.e - j;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpd dpdVar7 = (dpd) ddfVar.b;
            dpdVar7.a |= 8;
            dpdVar7.e = j4;
        }
        return (dpd) ddfVar.h();
    }
}
