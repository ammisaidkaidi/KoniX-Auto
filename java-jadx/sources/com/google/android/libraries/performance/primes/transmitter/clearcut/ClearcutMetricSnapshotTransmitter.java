package com.google.android.libraries.performance.primes.transmitter.clearcut;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.api.internal.BasePendingResult;
import defpackage.bih;
import defpackage.bij;
import defpackage.bik;
import defpackage.biv;
import defpackage.bkc;
import defpackage.bkj;
import defpackage.bkk;
import defpackage.bpe;
import defpackage.bsh;
import defpackage.btc;
import defpackage.ccs;
import defpackage.ccu;
import defpackage.cda;
import defpackage.cdk;
import defpackage.cnz;
import defpackage.coe;
import defpackage.col;
import defpackage.cxt;
import defpackage.cxu;
import defpackage.cyt;
import defpackage.czj;
import defpackage.dad;
import defpackage.dag;
import defpackage.das;
import defpackage.dba;
import defpackage.dbu;
import defpackage.dcx;
import defpackage.ddf;
import defpackage.ddh;
import defpackage.ddk;
import defpackage.ddn;
import defpackage.ddp;
import defpackage.ddq;
import defpackage.ddr;
import defpackage.dgd;
import defpackage.dgt;
import defpackage.dng;
import defpackage.doj;
import defpackage.dok;
import defpackage.doy;
import defpackage.doz;
import defpackage.dpb;
import defpackage.dpc;
import defpackage.dpi;
import defpackage.dpm;
import defpackage.dpr;
import defpackage.dps;
import defpackage.dpz;
import defpackage.ex;
import defpackage.ho;
import defpackage.hr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutMetricSnapshotTransmitter implements ccu {
    private static final col a = ex.i(bpe.r);
    private volatile bik b;
    private volatile bik c;
    private final col d = ex.i(bpe.q);

    @Override // defpackage.ccu
    public final dag a(Context context, ccs ccsVar) {
        bik bikVar;
        dcx dcxVar = cda.i;
        ccsVar.k(dcxVar);
        ex.m(ccsVar.d.b.get(dcxVar.d) != null, "ClearcutMetricSnapshotTransmitter received a snapshot without the expected extension.");
        dpz dpzVar = ccsVar.b;
        if (dpzVar == null) {
            dpzVar = dpz.y;
        }
        ddf ddfVar = (ddf) dpzVar.E(5);
        ddfVar.n(dpzVar);
        cdk.b(cdk.a, ddfVar);
        dok dokVar = ((dpz) ddfVar.b).k;
        if (dokVar == null) {
            dokVar = dok.c;
        }
        if ((dokVar.a & 1) != 0) {
            dok dokVar2 = ((dpz) ddfVar.b).k;
            if (dokVar2 == null) {
                dokVar2 = dok.c;
            }
            doj dojVar = dokVar2.b;
            if (dojVar == null) {
                dojVar = doj.k;
            }
            ddf ddfVar2 = (ddf) dojVar.E(5);
            ddfVar2.n(dojVar);
            cdk.b(cdk.b, ddfVar2);
            dok dokVar3 = ((dpz) ddfVar.b).k;
            if (dokVar3 == null) {
                dokVar3 = dok.c;
            }
            ddf ddfVar3 = (ddf) dokVar3.E(5);
            ddfVar3.n(dokVar3);
            if (ddfVar3.c) {
                ddfVar3.k();
                ddfVar3.c = false;
            }
            dok dokVar4 = (dok) ddfVar3.b;
            doj dojVar2 = (doj) ddfVar2.h();
            dojVar2.getClass();
            dokVar4.b = dojVar2;
            dokVar4.a |= 1;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpz dpzVar2 = (dpz) ddfVar.b;
            dok dokVar5 = (dok) ddfVar3.h();
            dokVar5.getClass();
            dpzVar2.k = dokVar5;
            dpzVar2.a |= 512;
        }
        dpm dpmVar = ((dpz) ddfVar.b).h;
        if (dpmVar == null) {
            dpmVar = dpm.i;
        }
        if ((dpmVar.a & 256) != 0) {
            dpm dpmVar2 = ((dpz) ddfVar.b).h;
            if (dpmVar2 == null) {
                dpmVar2 = dpm.i;
            }
            cxu cxuVar = dpmVar2.h;
            if (cxuVar == null) {
                cxuVar = cxu.d;
            }
            ddf ddfVar4 = (ddf) cxuVar.E(5);
            ddfVar4.n(cxuVar);
            cxt cxtVar = ((cxu) ddfVar4.b).b;
            if (cxtVar == null) {
                cxtVar = cxt.f;
            }
            ddf ddfVar5 = (ddf) cxtVar.E(5);
            ddfVar5.n(cxtVar);
            String str = ((cxt) ddfVar5.b).c;
            if (!str.isEmpty()) {
                long longValue = dba.a(str).longValue();
                if (ddfVar5.c) {
                    ddfVar5.k();
                    ddfVar5.c = false;
                }
                cxt cxtVar2 = (cxt) ddfVar5.b;
                int i = cxtVar2.a | 4;
                cxtVar2.a = i;
                cxtVar2.d = longValue;
                cxtVar2.a = i & (-3);
                cxtVar2.c = cxt.f.c;
            }
            cxt cxtVar3 = (cxt) ddfVar5.h();
            if (ddfVar4.c) {
                ddfVar4.k();
                ddfVar4.c = false;
            }
            cxu cxuVar2 = (cxu) ddfVar4.b;
            cxtVar3.getClass();
            cxuVar2.b = cxtVar3;
            cxuVar2.a |= 1;
            List<cxt> unmodifiableList = Collections.unmodifiableList(cxuVar2.c);
            if (ddfVar4.c) {
                ddfVar4.k();
                ddfVar4.c = false;
            }
            ((cxu) ddfVar4.b).c = cxu.y();
            for (cxt cxtVar4 : unmodifiableList) {
                ddf ddfVar6 = (ddf) cxtVar4.E(5);
                ddfVar6.n(cxtVar4);
                String str2 = ((cxt) ddfVar6.b).c;
                if (!str2.isEmpty()) {
                    long longValue2 = dba.a(str2).longValue();
                    if (ddfVar6.c) {
                        ddfVar6.k();
                        ddfVar6.c = false;
                    }
                    cxt cxtVar5 = (cxt) ddfVar6.b;
                    int i2 = cxtVar5.a | 4;
                    cxtVar5.a = i2;
                    cxtVar5.d = longValue2;
                    cxtVar5.a = i2 & (-3);
                    cxtVar5.c = cxt.f.c;
                }
                cxt cxtVar6 = (cxt) ddfVar6.h();
                if (ddfVar4.c) {
                    ddfVar4.k();
                    ddfVar4.c = false;
                }
                cxu cxuVar3 = (cxu) ddfVar4.b;
                cxtVar6.getClass();
                cxuVar3.b();
                cxuVar3.c.add(cxtVar6);
            }
            dpm dpmVar3 = ((dpz) ddfVar.b).h;
            if (dpmVar3 == null) {
                dpmVar3 = dpm.i;
            }
            ddf ddfVar7 = (ddf) dpmVar3.E(5);
            ddfVar7.n(dpmVar3);
            cxu cxuVar4 = (cxu) ddfVar4.h();
            if (ddfVar7.c) {
                ddfVar7.k();
                ddfVar7.c = false;
            }
            dpm dpmVar4 = (dpm) ddfVar7.b;
            cxuVar4.getClass();
            dpmVar4.h = cxuVar4;
            dpmVar4.a |= 256;
            dpm dpmVar5 = (dpm) ddfVar7.h();
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpz dpzVar3 = (dpz) ddfVar.b;
            dpmVar5.getClass();
            dpzVar3.h = dpmVar5;
            dpzVar3.a |= 64;
        }
        dps dpsVar = ((dpz) ddfVar.b).j;
        if (dpsVar == null) {
            dpsVar = dps.k;
        }
        if (dpsVar.j.size() != 0) {
            dps dpsVar2 = ((dpz) ddfVar.b).j;
            if (dpsVar2 == null) {
                dpsVar2 = dps.k;
            }
            ddf ddfVar8 = (ddf) dpsVar2.E(5);
            ddfVar8.n(dpsVar2);
            for (int i3 = 0; i3 < ((dps) ddfVar8.b).j.size(); i3++) {
                dpr dprVar = (dpr) ((dps) ddfVar8.b).j.get(i3);
                ddf ddfVar9 = (ddf) dprVar.E(5);
                ddfVar9.n(dprVar);
                if (!TextUtils.isEmpty(((dpr) ddfVar9.b).b)) {
                    if (ddfVar9.c) {
                        ddfVar9.k();
                        ddfVar9.c = false;
                    }
                    ((dpr) ddfVar9.b).c = dpr.w();
                    List a2 = cdk.a(((dpr) ddfVar9.b).b);
                    if (ddfVar9.c) {
                        ddfVar9.k();
                        ddfVar9.c = false;
                    }
                    dpr dprVar2 = (dpr) ddfVar9.b;
                    ddq ddqVar = dprVar2.c;
                    if (!ddqVar.c()) {
                        dprVar2.c = ddk.x(ddqVar);
                    }
                    dbu.d(a2, dprVar2.c);
                }
                if (ddfVar9.c) {
                    ddfVar9.k();
                    ddfVar9.c = false;
                }
                dpr dprVar3 = (dpr) ddfVar9.b;
                dprVar3.a &= -2;
                dprVar3.b = dpr.d.b;
                if (ddfVar8.c) {
                    ddfVar8.k();
                    ddfVar8.c = false;
                }
                dps dpsVar3 = (dps) ddfVar8.b;
                dpr dprVar4 = (dpr) ddfVar9.h();
                dprVar4.getClass();
                ddr ddrVar = dpsVar3.j;
                if (!ddrVar.c()) {
                    dpsVar3.j = ddk.z(ddrVar);
                }
                dpsVar3.j.set(i3, dprVar4);
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpz dpzVar4 = (dpz) ddfVar.b;
            dps dpsVar4 = (dps) ddfVar8.h();
            dpsVar4.getClass();
            dpzVar4.j = dpsVar4;
            dpzVar4.a |= 256;
        }
        doz dozVar = ((dpz) ddfVar.b).g;
        if (dozVar == null) {
            dozVar = doz.b;
        }
        if (dozVar.a.size() != 0) {
            doz dozVar2 = ((dpz) ddfVar.b).g;
            if (dozVar2 == null) {
                dozVar2 = doz.b;
            }
            ddf ddfVar10 = (ddf) dozVar2.E(5);
            ddfVar10.n(dozVar2);
            for (int i4 = 0; i4 < ((doz) ddfVar10.b).a.size(); i4++) {
                doy doyVar = (doy) ((doz) ddfVar10.b).a.get(i4);
                ddf ddfVar11 = (ddf) doyVar.E(5);
                ddfVar11.n(doyVar);
                if (!TextUtils.isEmpty(((doy) ddfVar11.b).d)) {
                    if (ddfVar11.c) {
                        ddfVar11.k();
                        ddfVar11.c = false;
                    }
                    ((doy) ddfVar11.b).e = doy.w();
                    List a3 = cdk.a(((doy) ddfVar11.b).d);
                    if (ddfVar11.c) {
                        ddfVar11.k();
                        ddfVar11.c = false;
                    }
                    doy doyVar2 = (doy) ddfVar11.b;
                    ddq ddqVar2 = doyVar2.e;
                    if (!ddqVar2.c()) {
                        doyVar2.e = ddk.x(ddqVar2);
                    }
                    dbu.d(a3, doyVar2.e);
                }
                if (ddfVar11.c) {
                    ddfVar11.k();
                    ddfVar11.c = false;
                }
                doy doyVar3 = (doy) ddfVar11.b;
                doyVar3.a &= -524289;
                doyVar3.d = doy.g.d;
                if (ddfVar10.c) {
                    ddfVar10.k();
                    ddfVar10.c = false;
                }
                doz dozVar3 = (doz) ddfVar10.b;
                doy doyVar4 = (doy) ddfVar11.h();
                doyVar4.getClass();
                ddr ddrVar2 = dozVar3.a;
                if (!ddrVar2.c()) {
                    dozVar3.a = ddk.z(ddrVar2);
                }
                dozVar3.a.set(i4, doyVar4);
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpz dpzVar5 = (dpz) ddfVar.b;
            doz dozVar4 = (doz) ddfVar10.h();
            dozVar4.getClass();
            dpzVar5.g = dozVar4;
            dpzVar5.a |= 32;
        }
        dpb dpbVar = ((dpz) ddfVar.b).n;
        if (dpbVar == null) {
            dpbVar = dpb.f;
        }
        if (dpbVar.d.size() != 0) {
            dpb dpbVar2 = ((dpz) ddfVar.b).n;
            if (dpbVar2 == null) {
                dpbVar2 = dpb.f;
            }
            ddf ddfVar12 = (ddf) dpbVar2.E(5);
            ddfVar12.n(dpbVar2);
            for (int i5 = 0; i5 < ((dpb) ddfVar12.b).d.size(); i5++) {
                dpc dpcVar = (dpc) ((dpb) ddfVar12.b).d.get(i5);
                ddf ddfVar13 = (ddf) dpcVar.E(5);
                ddfVar13.n(dpcVar);
                cdk.b(cdk.c, ddfVar13);
                if (ddfVar12.c) {
                    ddfVar12.k();
                    ddfVar12.c = false;
                }
                dpb dpbVar3 = (dpb) ddfVar12.b;
                dpc dpcVar2 = (dpc) ddfVar13.h();
                dpcVar2.getClass();
                dpbVar3.c();
                dpbVar3.d.set(i5, dpcVar2);
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpz dpzVar6 = (dpz) ddfVar.b;
            dpb dpbVar4 = (dpb) ddfVar12.h();
            dpbVar4.getClass();
            dpzVar6.n = dpbVar4;
            dpzVar6.a |= 16384;
        }
        dpz dpzVar7 = (dpz) ddfVar.h();
        if (dng.a.a().a(context) && ((Boolean) this.d.a()).booleanValue()) {
            return dad.a;
        }
        dcx dcxVar2 = cda.i;
        ccsVar.k(dcxVar2);
        Object k = ccsVar.d.k(dcxVar2.d);
        if (k == null) {
            k = dcxVar2.b;
        } else if (dcxVar2.d.a() == dgd.ENUM) {
            ddn ddnVar = dcxVar2.d.a;
            ((Integer) k).intValue();
            throw null;
        }
        cda cdaVar = (cda) k;
        String str3 = cdaVar.b;
        if (cdaVar.d) {
            bikVar = this.c;
            if (bikVar == null) {
                synchronized (this) {
                    bikVar = this.c;
                    if (bikVar == null) {
                        bik bikVar2 = new bik(context, str3, bij.f, bkc.h(context), new biv(context));
                        this.c = bikVar2;
                        bikVar = bikVar2;
                    }
                }
            }
        } else {
            bikVar = this.b;
            if (bikVar == null) {
                synchronized (this) {
                    bikVar = this.b;
                    if (bikVar == null) {
                        bikVar = new bik(context, str3);
                        this.b = bikVar;
                    }
                }
            }
        }
        bih a4 = bikVar.a(dpzVar7);
        if (dng.a.a().b(context)) {
            dpi dpiVar = (dpi) a.a();
            context.getClass();
            dpiVar.getClass();
            a4.i = new btc(context.getApplicationContext(), new bsh(dpiVar));
        }
        String str4 = cdaVar.e;
        if (!coe.d(str4)) {
            if (a4.a.c()) {
                throw new IllegalStateException("setZwiebackCookieOverride forbidden on deidentified logger");
            }
            ddh ddhVar = a4.j;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgt dgtVar = (dgt) ddhVar.b;
            dgt dgtVar2 = dgt.j;
            str4.getClass();
            dgtVar.a |= 16777216;
            dgtVar.i = str4;
        }
        if (!cdaVar.d) {
            if ((cdaVar.a & 2) != 0) {
                String str5 = cdaVar.c;
                if (a4.a.c()) {
                    throw new IllegalArgumentException("addMendelPackage forbidden on deidentified logger");
                }
                if (a4.c == null) {
                    a4.c = new ArrayList();
                }
                a4.c.add(str5);
            }
            if ((cdaVar.a & 16) != 0) {
                String str6 = cdaVar.f;
                if (!a4.a.g.contains(bij.ACCOUNT_NAME)) {
                    throw new IllegalStateException("setUploadAccountName forbidden on deidentified logger");
                }
                a4.e = str6;
            }
            ddp ddpVar = cdaVar.g;
            if (!ddpVar.isEmpty()) {
                Object[] array = ddpVar.toArray();
                int length = array.length;
                int[] iArr = new int[length];
                for (int i6 = 0; i6 < length; i6++) {
                    Object obj = array[i6];
                    obj.getClass();
                    iArr[i6] = ((Number) obj).intValue();
                }
                if (a4.a.c()) {
                    throw new IllegalArgumentException("addExperimentIds forbidden on deidentified logger");
                }
                if (length != 0) {
                    if (a4.d == null) {
                        a4.d = new ArrayList();
                    }
                    for (int i7 = 0; i7 < length; i7++) {
                        a4.d.add(Integer.valueOf(iArr[i7]));
                    }
                }
            }
        }
        ho a5 = a4.a();
        final das e = das.e();
        bkj bkjVar = new bkj() { // from class: btl
            @Override // defpackage.bkj
            public final void a(bki bkiVar) {
                das dasVar = das.this;
                if (bkiVar.a().e == 16) {
                    dasVar.cancel(false);
                    return;
                }
                if (bkiVar.a().b()) {
                    dasVar.k(bkiVar);
                } else if (bkiVar.a().g != null) {
                    dasVar.l(new bkh(bkiVar.a()));
                } else {
                    dasVar.l(new bjz(bkiVar.a()));
                }
            }
        };
        synchronized (((BasePendingResult) a5).c) {
            hr.j(!((BasePendingResult) a5).h, "Result has already been consumed.");
            bkk bkkVar = ((BasePendingResult) a5).j;
            hr.j(true, "Cannot set callbacks if then() has been called.");
            synchronized (((BasePendingResult) a5).c) {
            }
            if (((BasePendingResult) a5).o()) {
                ((BasePendingResult) a5).d.a(bkjVar, ((BasePendingResult) a5).k());
            } else {
                ((BasePendingResult) a5).f = bkjVar;
            }
        }
        return cyt.o(e, new cnz(), czj.a);
    }
}
