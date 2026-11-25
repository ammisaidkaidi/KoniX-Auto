package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
public class PrimesConfigHolder {
    public static ComponentName a(Context context, Intent intent) {
        return context.startForegroundService(intent);
    }

    public static ProtoMessageStringAndThreeLongs b(ProtoMessageStringAndThreeLongs dpdVar, long j) {
        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dpdVar.E(5);
        ddfVar.n(dpdVar);
        ProtoMessageStringAndThreeLongs dpdVar2 = (ProtoMessageStringAndThreeLongs) ddfVar.b;
        if ((dpdVar2.a & 2) != 0) {
            long j2 = dpdVar2.c - j;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoMessageStringAndThreeLongs dpdVar3 = (ProtoMessageStringAndThreeLongs) ddfVar.b;
            dpdVar3.a |= 2;
            dpdVar3.c = j2;
        }
        ProtoMessageStringAndThreeLongs dpdVar4 = (ProtoMessageStringAndThreeLongs) ddfVar.b;
        if ((dpdVar4.a & 4) != 0) {
            long j3 = dpdVar4.d - j;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoMessageStringAndThreeLongs dpdVar5 = (ProtoMessageStringAndThreeLongs) ddfVar.b;
            dpdVar5.a |= 4;
            dpdVar5.d = j3;
        }
        ProtoMessageStringAndThreeLongs dpdVar6 = (ProtoMessageStringAndThreeLongs) ddfVar.b;
        if ((dpdVar6.a & 8) != 0) {
            long j4 = dpdVar6.e - j;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoMessageStringAndThreeLongs dpdVar7 = (ProtoMessageStringAndThreeLongs) ddfVar.b;
            dpdVar7.a |= 8;
            dpdVar7.e = j4;
        }
        return (ProtoMessageStringAndThreeLongs) ddfVar.h();
    }
}
