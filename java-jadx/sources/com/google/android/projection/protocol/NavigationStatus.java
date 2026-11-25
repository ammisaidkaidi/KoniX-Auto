package com.google.android.projection.protocol;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.apps.auto.aareceiver.cluster.ClusterImageProvider;
import com.google.android.embedded.projection.R;
import defpackage.a;
import defpackage.awm;
import defpackage.awn;
import defpackage.b;
import defpackage.byl;
import defpackage.c;
import defpackage.cki;
import defpackage.ckj;
import defpackage.ckk;
import defpackage.ckl;
import defpackage.ckm;
import defpackage.ckn;
import defpackage.cko;
import defpackage.ckp;
import defpackage.ckq;
import defpackage.ckr;
import defpackage.cks;
import defpackage.ckt;
import defpackage.cku;
import defpackage.ckv;
import defpackage.clk;
import defpackage.clx;
import defpackage.cqc;
import defpackage.cqh;
import defpackage.cqk;
import defpackage.csx;
import defpackage.d;
import defpackage.dbu;
import defpackage.dcz;
import defpackage.ddf;
import defpackage.ddk;
import defpackage.ddr;
import defpackage.ddu;
import defpackage.dkp;
import defpackage.e;
import defpackage.f;
import defpackage.g;
import defpackage.h;
import defpackage.hf;
import defpackage.hn;
import defpackage.i;
import defpackage.j;
import defpackage.k;
import defpackage.l;
import defpackage.m;
import defpackage.n;
import defpackage.r;
import j$.time.Duration;
import j$.time.Instant;
import j$.util.Optional;
import j$.util.function.Consumer;
import java.text.NumberFormat;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public class NavigationStatus implements NavigationStatusCallbacks, clk {
    private final clx a;
    private long mNativeNavigationStatus;

    public NavigationStatus(clx clxVar) {
        this.a = clxVar;
    }

    private native int nativeInit(int i, long j, int i2, int i3, int i4, int i5, int i6);

    private native void nativeStart();

    private native void nativeStop();

    @Override // defpackage.clw
    public final long a() {
        return this.mNativeNavigationStatus;
    }

    @Override // defpackage.clw
    public final void b() {
        nativeStop();
    }

    @Override // defpackage.clk
    public final boolean c(int i, long j) {
        if (nativeInit(i, j, 1000, 2, 512, 512, 32) != 0) {
            return false;
        }
        nativeStart();
        return true;
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public final void navigationCurrentPositionCallback(byte[] bArr) {
        awn awnVar;
        Object obj;
        int i;
        String i2;
        int i3;
        try {
            ckj ckjVar = (ckj) ddk.r(ckj.e, bArr, dcz.a());
            clx clxVar = this.a;
            Bundle bundle = new Bundle();
            awn awnVar2 = (awn) clxVar;
            Object obj2 = awnVar2.e;
            synchronized (obj2) {
                try {
                    try {
                        ckv ckvVar = ckjVar.b;
                        if (ckvVar == null) {
                            ckvVar = ckv.c;
                        }
                        int i4 = 1;
                        boolean z = false;
                        if ((ckvVar.a & 1) != 0) {
                            ckv ckvVar2 = ckjVar.b;
                            if (ckvVar2 == null) {
                                ckvVar2 = ckv.c;
                            }
                            ckm ckmVar = ckvVar2.b;
                            if (ckmVar == null) {
                                ckmVar = ckm.e;
                            }
                            d a = awn.a(ckmVar);
                            synchronized (((awn) clxVar).e) {
                                if (((awn) clxVar).f.isPresent()) {
                                    ddf ddfVar = (ddf) ((awn) clxVar).f.get();
                                    if (ddfVar.c) {
                                        ddfVar.k();
                                        ddfVar.c = false;
                                    }
                                    m mVar = (m) ddfVar.b;
                                    m mVar2 = m.e;
                                    a.getClass();
                                    mVar.a = a;
                                    ddf ddfVar2 = ((awn) clxVar).j;
                                    if (ddfVar2.c) {
                                        ddfVar2.k();
                                        ddfVar2.c = false;
                                    }
                                    k kVar = (k) ddfVar2.b;
                                    m mVar3 = (m) ddfVar.h();
                                    k kVar2 = k.e;
                                    mVar3.getClass();
                                    kVar.b();
                                    kVar.a.set(0, mVar3);
                                } else {
                                    ddf n = m.e.n();
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    m mVar4 = (m) n.b;
                                    a.getClass();
                                    mVar4.a = a;
                                    ((awn) clxVar).j.ai(n);
                                    ((awn) clxVar).f = Optional.of(n);
                                }
                            }
                        }
                        if (ckjVar.c.size() != 0) {
                            synchronized (((awn) clxVar).e) {
                                int i5 = 0;
                                while (true) {
                                    try {
                                        if (i5 >= ckjVar.c.size()) {
                                            awnVar = awnVar2;
                                            obj = obj2;
                                            break;
                                        }
                                        ckl cklVar = (ckl) ckjVar.c.get(i5);
                                        ddf n2 = c.e.n();
                                        if (i5 < ((k) ((awn) clxVar).j.b).b.size()) {
                                            c cVar = (c) ((k) ((awn) clxVar).j.b).b.get(i5);
                                            ddf ddfVar3 = (ddf) cVar.E(5);
                                            ddfVar3.n(cVar);
                                            n2 = ddfVar3;
                                        }
                                        if ((cklVar.a & i4) != 0) {
                                            ckm ckmVar2 = cklVar.b;
                                            if (ckmVar2 == null) {
                                                ckmVar2 = ckm.e;
                                            }
                                            d a2 = awn.a(ckmVar2);
                                            if (n2.c) {
                                                n2.k();
                                                n2.c = z;
                                            }
                                            c cVar2 = (c) n2.b;
                                            a2.getClass();
                                            cVar2.b = a2;
                                        }
                                        if ((cklVar.a & 4) != 0) {
                                            long j = cklVar.c;
                                            Duration ofSeconds = Duration.ofSeconds(Math.round(Math.max(j, 60L) / 60.0f) * 60);
                                            i = i5;
                                            int days = (int) ofSeconds.toDays();
                                            long j2 = days;
                                            awnVar = awnVar2;
                                            obj = obj2;
                                            try {
                                                int hours = (int) ofSeconds.minusDays(j2).toHours();
                                                int minutes = (int) ofSeconds.minusDays(j2).minusHours(hours).toMinutes();
                                                if (days > 0) {
                                                    if (minutes > 29) {
                                                        i3 = hours + 1;
                                                        if (i3 == 24) {
                                                            days++;
                                                            i3 = 0;
                                                        }
                                                    } else {
                                                        i3 = hours;
                                                    }
                                                    hours = i3;
                                                    minutes = 0;
                                                }
                                                if (days > 0) {
                                                    i2 = hf.i(((awn) clxVar).b, R.string.time_format_days, "number_days", Integer.valueOf(days));
                                                    if (hours != 0) {
                                                        i2 = ((awn) clxVar).b.getResources().getString(R.string.time_format_days_and_hours, i2, hf.i(((awn) clxVar).b, R.string.time_format_hours, "number_hours", Integer.valueOf(hours)));
                                                    }
                                                } else if (hours > 0) {
                                                    String i6 = hf.i(((awn) clxVar).b, R.string.time_format_hours, "number_hours", Integer.valueOf(hours));
                                                    i2 = minutes != 0 ? ((awn) clxVar).b.getResources().getString(R.string.time_format_hours_and_minutes, i6, hf.i(((awn) clxVar).b, R.string.time_format_minutes, "number_minutes", Integer.valueOf(minutes))) : i6;
                                                } else {
                                                    i2 = j > 0 ? hf.i(((awn) clxVar).b, R.string.time_format_minutes, "number_minutes", Integer.valueOf(minutes)) : ((awn) clxVar).b.getResources().getString(R.string.time_arrived);
                                                }
                                                if (n2.c) {
                                                    n2.k();
                                                    n2.c = false;
                                                }
                                                c cVar3 = (c) n2.b;
                                                i2.getClass();
                                                cVar3.d = i2;
                                                if (dkp.a.a().a()) {
                                                    long j3 = cklVar.c;
                                                    ddf n3 = n.b.n();
                                                    long epochSecond = Instant.now().plusSeconds(j3).getEpochSecond();
                                                    if (n3.c) {
                                                        n3.k();
                                                        n3.c = false;
                                                    }
                                                    ((n) n3.b).a = epochSecond;
                                                    n nVar = (n) n3.h();
                                                    if (n2.c) {
                                                        n2.k();
                                                        n2.c = false;
                                                    }
                                                    c cVar4 = (c) n2.b;
                                                    nVar.getClass();
                                                    cVar4.c = nVar;
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                throw th;
                                            }
                                        } else {
                                            awnVar = awnVar2;
                                            obj = obj2;
                                            i = i5;
                                        }
                                        int i7 = i;
                                        if (i7 < ((k) ((awn) clxVar).j.b).b.size()) {
                                            ddf ddfVar4 = ((awn) clxVar).j;
                                            if (ddfVar4.c) {
                                                ddfVar4.k();
                                                ddfVar4.c = false;
                                            }
                                            k kVar3 = (k) ddfVar4.b;
                                            c cVar5 = (c) n2.h();
                                            cVar5.getClass();
                                            kVar3.c();
                                            kVar3.b.set(i7, cVar5);
                                        } else {
                                            ddf ddfVar5 = ((awn) clxVar).j;
                                            if (ddfVar5.c) {
                                                ddfVar5.k();
                                                ddfVar5.c = false;
                                            }
                                            k kVar4 = (k) ddfVar5.b;
                                            c cVar6 = (c) n2.h();
                                            cVar6.getClass();
                                            kVar4.c();
                                            kVar4.b.add(cVar6);
                                            i5 = i7 + 1;
                                            obj2 = obj;
                                            awnVar2 = awnVar;
                                            i4 = 1;
                                            z = false;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                }
                            }
                        } else {
                            awnVar = awnVar2;
                            obj = obj2;
                        }
                        if ((ckjVar.a & 2) != 0) {
                            ddf ddfVar6 = ((awn) clxVar).j;
                            cks cksVar = ckjVar.d;
                            if (cksVar == null) {
                                cksVar = cks.c;
                            }
                            ddf n4 = l.b.n();
                            if ((cksVar.a & 1) != 0) {
                                String str = cksVar.b;
                                if (n4.c) {
                                    n4.k();
                                    n4.c = false;
                                }
                                l lVar = (l) n4.b;
                                str.getClass();
                                lVar.a = str;
                            }
                            l lVar2 = (l) n4.h();
                            if (ddfVar6.c) {
                                ddfVar6.k();
                                ddfVar6.c = false;
                            }
                            k kVar5 = (k) ddfVar6.b;
                            k kVar6 = k.e;
                            lVar2.getClass();
                            kVar5.c = lVar2;
                        }
                        bundle.putByteArray("navstate2", ((k) ((awn) clxVar).j.h()).h());
                        awnVar.c(bundle);
                        return;
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    throw th;
                }
            }
            throw th;
        } catch (ddu e) {
            Log.e("AHU.NAVIGATION", "Error parsing protocol buffer in callback", e);
            throw new IllegalArgumentException("Error parsing protocol buffer in callback", e);
        }
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public final void navigationNextTurnCallback(String str, int i, int i2, byte[] bArr, int i3, int i4) {
        char c;
        clx clxVar = this.a;
        Bundle bundle = new Bundle();
        awn awnVar = (awn) clxVar;
        synchronized (awnVar.e) {
            ckr b = ckr.b(i2);
            switch (i) {
                case 1:
                    c = 1;
                    break;
                case 2:
                    c = 2;
                    break;
                case 3:
                    c = 3;
                    break;
                default:
                    c = 0;
                    break;
            }
            cqk cqkVar = awm.a;
            i iVar = null;
            if (c != 0 && b != null) {
                switch (c) {
                    case 1:
                        iVar = (i) awm.a.get(b);
                        break;
                    case 2:
                    default:
                        iVar = (i) awm.b.get(b);
                        break;
                    case 3:
                        iVar = (i) awm.c.get(b);
                        break;
                }
            }
            i iVar2 = (i) hn.e(iVar).a(i.UNKNOWN);
            ddf n = j.d.n();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((j) n.b).a = iVar2.a();
            if (i4 > 0 && ckr.ROUNDABOUT_ENTER_AND_EXIT.equals(b)) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((j) n.b).b = i4;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("maneuver", Integer.valueOf(iVar2.a()));
            contentValues.put("image", bArr);
            contentValues.put("turnangle", Integer.valueOf(i3));
            Uri insert = ((awn) clxVar).b.getContentResolver().insert(ClusterImageProvider.b, contentValues);
            if (insert == null) {
                ((csx) awn.a.c().h("com/google/android/apps/auto/aareceiver/cluster/TurnDataNavStatusListener", "onNextTurn", 197, "TurnDataNavStatusListener.java")).p("Failed to insert turn image for %s", contentValues);
                return;
            }
            ddf n2 = e.d.n();
            if (n2.c) {
                n2.k();
                n2.c = false;
            }
            e eVar = (e) n2.b;
            eVar.c = true;
            eVar.b = 1.0d;
            String uri = insert.toString();
            if (n2.c) {
                n2.k();
                n2.c = false;
            }
            e eVar2 = (e) n2.b;
            uri.getClass();
            eVar2.a = uri;
            if (n.c) {
                n.k();
                n.c = false;
            }
            j jVar = (j) n.b;
            e eVar3 = (e) n2.h();
            eVar3.getClass();
            jVar.c = eVar3;
            ddf n3 = k.e.n();
            if (n3.c) {
                n3.k();
                n3.c = false;
            }
            ((k) n3.b).d = r.c(3);
            ddf n4 = l.b.n();
            if (n4.c) {
                n4.k();
                n4.c = false;
            }
            l lVar = (l) n4.b;
            str.getClass();
            lVar.a = str;
            if (n3.c) {
                n3.k();
                n3.c = false;
            }
            k kVar = (k) n3.b;
            l lVar2 = (l) n4.h();
            lVar2.getClass();
            kVar.c = lVar2;
            ((awn) clxVar).j = n3;
            ddf n5 = m.e.n();
            if (n5.c) {
                n5.k();
                n5.c = false;
            }
            m mVar = (m) n5.b;
            j jVar2 = (j) n.h();
            jVar2.getClass();
            mVar.b = jVar2;
            ((awn) clxVar).f = Optional.of(n5);
            ((awn) clxVar).j.ai((ddf) ((awn) clxVar).f.get());
            bundle.putByteArray("navstate2", ((k) ((awn) clxVar).j.h()).h());
            awnVar.c(bundle);
        }
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public final void navigationNextTurnDistanceCallback(final int i, int i2, final int i3, int i4) {
        int i5;
        final int i6;
        clx clxVar = this.a;
        Bundle bundle = new Bundle();
        awn awnVar = (awn) clxVar;
        synchronized (awnVar.e) {
            if (((awn) clxVar).f.isPresent() && ((awn) clxVar).j != null) {
                int i7 = 6;
                switch (i4) {
                    case 0:
                        i5 = 1;
                        break;
                    case 1:
                        i5 = 2;
                        break;
                    case 2:
                        i5 = 3;
                        break;
                    case 3:
                        i5 = 4;
                        break;
                    case 4:
                        i5 = 5;
                        break;
                    case 5:
                        i5 = 6;
                        break;
                    case 6:
                        i5 = 7;
                        break;
                    case 7:
                        i5 = 8;
                        break;
                    default:
                        i5 = 0;
                        break;
                }
                final NumberFormat numberInstance = NumberFormat.getNumberInstance(((awn) clxVar).d.getLocales().get(0));
                if (i5 == 4) {
                    i7 = i5;
                } else if (i5 != 6) {
                    i6 = i5;
                    final awn awnVar2 = (awn) clxVar;
                    ((awn) clxVar).f.ifPresent(new Consumer() { // from class: awl
                        @Override // j$.util.function.Consumer
                        public final void accept(Object obj) {
                            awn awnVar3 = awn.this;
                            int i8 = i;
                            NumberFormat numberFormat = numberInstance;
                            int i9 = i3;
                            int i10 = i6;
                            ddf ddfVar = (ddf) obj;
                            ddf n = d.d.n();
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ((d) n.b).a = i8;
                            double d = i9;
                            Double.isNaN(d);
                            String format = numberFormat.format(d / 1000.0d);
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            d dVar = (d) n.b;
                            format.getClass();
                            dVar.b = format;
                            int i11 = 2;
                            if (i10 != 0) {
                                switch (i10 - 1) {
                                    case 1:
                                        i11 = 3;
                                        break;
                                    case 2:
                                    case 3:
                                        i11 = 4;
                                        break;
                                    case 4:
                                    case 5:
                                        i11 = 5;
                                        break;
                                    case 6:
                                        i11 = 6;
                                        break;
                                    case 7:
                                        i11 = 7;
                                        break;
                                }
                            }
                            dVar.c = r.d(i11);
                            if (ddfVar.c) {
                                ddfVar.k();
                                ddfVar.c = false;
                            }
                            m mVar = (m) ddfVar.b;
                            d dVar2 = (d) n.h();
                            m mVar2 = m.e;
                            dVar2.getClass();
                            mVar.a = dVar2;
                            synchronized (awnVar3.e) {
                                ddf ddfVar2 = awnVar3.j;
                                if (ddfVar2.c) {
                                    ddfVar2.k();
                                    ddfVar2.c = false;
                                }
                                k kVar = (k) ddfVar2.b;
                                m mVar3 = (m) ddfVar.h();
                                k kVar2 = k.e;
                                mVar3.getClass();
                                kVar.b();
                                kVar.a.add(0, mVar3);
                            }
                        }

                        @Override // j$.util.function.Consumer
                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            return Consumer.CC.$default$andThen(this, consumer);
                        }
                    });
                    bundle.putByteArray("navstate2", ((k) ((awn) clxVar).j.h()).h());
                    awnVar.c(bundle);
                }
                numberInstance.setMinimumFractionDigits(1);
                i6 = i7;
                final awn awnVar22 = (awn) clxVar;
                ((awn) clxVar).f.ifPresent(new Consumer() { // from class: awl
                    @Override // j$.util.function.Consumer
                    public final void accept(Object obj) {
                        awn awnVar3 = awn.this;
                        int i8 = i;
                        NumberFormat numberFormat = numberInstance;
                        int i9 = i3;
                        int i10 = i6;
                        ddf ddfVar = (ddf) obj;
                        ddf n = d.d.n();
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ((d) n.b).a = i8;
                        double d = i9;
                        Double.isNaN(d);
                        String format = numberFormat.format(d / 1000.0d);
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        d dVar = (d) n.b;
                        format.getClass();
                        dVar.b = format;
                        int i11 = 2;
                        if (i10 != 0) {
                            switch (i10 - 1) {
                                case 1:
                                    i11 = 3;
                                    break;
                                case 2:
                                case 3:
                                    i11 = 4;
                                    break;
                                case 4:
                                case 5:
                                    i11 = 5;
                                    break;
                                case 6:
                                    i11 = 6;
                                    break;
                                case 7:
                                    i11 = 7;
                                    break;
                            }
                        }
                        dVar.c = r.d(i11);
                        if (ddfVar.c) {
                            ddfVar.k();
                            ddfVar.c = false;
                        }
                        m mVar = (m) ddfVar.b;
                        d dVar2 = (d) n.h();
                        m mVar2 = m.e;
                        dVar2.getClass();
                        mVar.a = dVar2;
                        synchronized (awnVar3.e) {
                            ddf ddfVar2 = awnVar3.j;
                            if (ddfVar2.c) {
                                ddfVar2.k();
                                ddfVar2.c = false;
                            }
                            k kVar = (k) ddfVar2.b;
                            m mVar3 = (m) ddfVar.h();
                            k kVar2 = k.e;
                            mVar3.getClass();
                            kVar.b();
                            kVar.a.add(0, mVar3);
                        }
                    }

                    @Override // j$.util.function.Consumer
                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer.CC.$default$andThen(this, consumer);
                    }
                });
                bundle.putByteArray("navstate2", ((k) ((awn) clxVar).j.h()).h());
                awnVar.c(bundle);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x017b A[Catch: all -> 0x04f1, TryCatch #0 {, blocks: (B:6:0x001d, B:8:0x003a, B:9:0x0049, B:11:0x004f, B:13:0x0060, B:15:0x0064, B:16:0x0066, B:18:0x0074, B:19:0x0076, B:21:0x0082, B:23:0x008c, B:26:0x0093, B:27:0x0177, B:29:0x017b, B:30:0x0181, B:32:0x0191, B:34:0x0197, B:35:0x019d, B:36:0x01a3, B:38:0x01ad, B:39:0x01b3, B:43:0x009d, B:48:0x00a9, B:53:0x00b5, B:58:0x00c1, B:63:0x00cd, B:68:0x00d9, B:73:0x00ea, B:77:0x00ee, B:78:0x00f2, B:80:0x00fa, B:83:0x0101, B:87:0x010b, B:92:0x0117, B:97:0x0122, B:102:0x012d, B:107:0x0138, B:112:0x0143, B:117:0x0153, B:121:0x0156, B:122:0x0159, B:124:0x0163, B:125:0x0165, B:126:0x01bc, B:128:0x01c4, B:129:0x01ce, B:131:0x01d4, B:133:0x01e8, B:134:0x01f2, B:136:0x01f8, B:139:0x0213, B:141:0x022b, B:142:0x0231, B:144:0x023f, B:146:0x0243, B:147:0x0249, B:149:0x0250, B:152:0x0262, B:154:0x026e, B:155:0x0274, B:157:0x0280, B:158:0x0286, B:160:0x0290, B:164:0x02a1, B:166:0x02ab, B:167:0x02b1, B:169:0x02bd, B:170:0x02c3, B:171:0x02cb, B:175:0x035f, B:176:0x02d3, B:178:0x02d7, B:179:0x02d9, B:181:0x02e7, B:183:0x02fa, B:184:0x0300, B:186:0x030d, B:187:0x0313, B:189:0x0328, B:190:0x032e, B:192:0x0337, B:193:0x033d, B:194:0x0346, B:196:0x0350, B:197:0x0356, B:201:0x036f, B:203:0x0377, B:204:0x037d, B:206:0x03ba, B:208:0x03c9, B:210:0x03cd, B:211:0x03cf, B:213:0x03d8, B:215:0x03de, B:216:0x03e0, B:218:0x03e8, B:219:0x03ea, B:221:0x03f0, B:222:0x041c, B:224:0x0423, B:226:0x0432, B:227:0x0438, B:229:0x0442, B:230:0x0448, B:231:0x03fb, B:233:0x0406, B:234:0x0416, B:235:0x0457, B:237:0x045f, B:238:0x046e, B:240:0x0474, B:242:0x0486, B:244:0x048c, B:245:0x0492, B:247:0x049b, B:250:0x04a5, B:252:0x04ad, B:253:0x04b3, B:254:0x04bf, B:256:0x04c8, B:257:0x04ce, B:258:0x04ec), top: B:5:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0191 A[Catch: all -> 0x04f1, TryCatch #0 {, blocks: (B:6:0x001d, B:8:0x003a, B:9:0x0049, B:11:0x004f, B:13:0x0060, B:15:0x0064, B:16:0x0066, B:18:0x0074, B:19:0x0076, B:21:0x0082, B:23:0x008c, B:26:0x0093, B:27:0x0177, B:29:0x017b, B:30:0x0181, B:32:0x0191, B:34:0x0197, B:35:0x019d, B:36:0x01a3, B:38:0x01ad, B:39:0x01b3, B:43:0x009d, B:48:0x00a9, B:53:0x00b5, B:58:0x00c1, B:63:0x00cd, B:68:0x00d9, B:73:0x00ea, B:77:0x00ee, B:78:0x00f2, B:80:0x00fa, B:83:0x0101, B:87:0x010b, B:92:0x0117, B:97:0x0122, B:102:0x012d, B:107:0x0138, B:112:0x0143, B:117:0x0153, B:121:0x0156, B:122:0x0159, B:124:0x0163, B:125:0x0165, B:126:0x01bc, B:128:0x01c4, B:129:0x01ce, B:131:0x01d4, B:133:0x01e8, B:134:0x01f2, B:136:0x01f8, B:139:0x0213, B:141:0x022b, B:142:0x0231, B:144:0x023f, B:146:0x0243, B:147:0x0249, B:149:0x0250, B:152:0x0262, B:154:0x026e, B:155:0x0274, B:157:0x0280, B:158:0x0286, B:160:0x0290, B:164:0x02a1, B:166:0x02ab, B:167:0x02b1, B:169:0x02bd, B:170:0x02c3, B:171:0x02cb, B:175:0x035f, B:176:0x02d3, B:178:0x02d7, B:179:0x02d9, B:181:0x02e7, B:183:0x02fa, B:184:0x0300, B:186:0x030d, B:187:0x0313, B:189:0x0328, B:190:0x032e, B:192:0x0337, B:193:0x033d, B:194:0x0346, B:196:0x0350, B:197:0x0356, B:201:0x036f, B:203:0x0377, B:204:0x037d, B:206:0x03ba, B:208:0x03c9, B:210:0x03cd, B:211:0x03cf, B:213:0x03d8, B:215:0x03de, B:216:0x03e0, B:218:0x03e8, B:219:0x03ea, B:221:0x03f0, B:222:0x041c, B:224:0x0423, B:226:0x0432, B:227:0x0438, B:229:0x0442, B:230:0x0448, B:231:0x03fb, B:233:0x0406, B:234:0x0416, B:235:0x0457, B:237:0x045f, B:238:0x046e, B:240:0x0474, B:242:0x0486, B:244:0x048c, B:245:0x0492, B:247:0x049b, B:250:0x04a5, B:252:0x04ad, B:253:0x04b3, B:254:0x04bf, B:256:0x04c8, B:257:0x04ce, B:258:0x04ec), top: B:5:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01ad A[Catch: all -> 0x04f1, TryCatch #0 {, blocks: (B:6:0x001d, B:8:0x003a, B:9:0x0049, B:11:0x004f, B:13:0x0060, B:15:0x0064, B:16:0x0066, B:18:0x0074, B:19:0x0076, B:21:0x0082, B:23:0x008c, B:26:0x0093, B:27:0x0177, B:29:0x017b, B:30:0x0181, B:32:0x0191, B:34:0x0197, B:35:0x019d, B:36:0x01a3, B:38:0x01ad, B:39:0x01b3, B:43:0x009d, B:48:0x00a9, B:53:0x00b5, B:58:0x00c1, B:63:0x00cd, B:68:0x00d9, B:73:0x00ea, B:77:0x00ee, B:78:0x00f2, B:80:0x00fa, B:83:0x0101, B:87:0x010b, B:92:0x0117, B:97:0x0122, B:102:0x012d, B:107:0x0138, B:112:0x0143, B:117:0x0153, B:121:0x0156, B:122:0x0159, B:124:0x0163, B:125:0x0165, B:126:0x01bc, B:128:0x01c4, B:129:0x01ce, B:131:0x01d4, B:133:0x01e8, B:134:0x01f2, B:136:0x01f8, B:139:0x0213, B:141:0x022b, B:142:0x0231, B:144:0x023f, B:146:0x0243, B:147:0x0249, B:149:0x0250, B:152:0x0262, B:154:0x026e, B:155:0x0274, B:157:0x0280, B:158:0x0286, B:160:0x0290, B:164:0x02a1, B:166:0x02ab, B:167:0x02b1, B:169:0x02bd, B:170:0x02c3, B:171:0x02cb, B:175:0x035f, B:176:0x02d3, B:178:0x02d7, B:179:0x02d9, B:181:0x02e7, B:183:0x02fa, B:184:0x0300, B:186:0x030d, B:187:0x0313, B:189:0x0328, B:190:0x032e, B:192:0x0337, B:193:0x033d, B:194:0x0346, B:196:0x0350, B:197:0x0356, B:201:0x036f, B:203:0x0377, B:204:0x037d, B:206:0x03ba, B:208:0x03c9, B:210:0x03cd, B:211:0x03cf, B:213:0x03d8, B:215:0x03de, B:216:0x03e0, B:218:0x03e8, B:219:0x03ea, B:221:0x03f0, B:222:0x041c, B:224:0x0423, B:226:0x0432, B:227:0x0438, B:229:0x0442, B:230:0x0448, B:231:0x03fb, B:233:0x0406, B:234:0x0416, B:235:0x0457, B:237:0x045f, B:238:0x046e, B:240:0x0474, B:242:0x0486, B:244:0x048c, B:245:0x0492, B:247:0x049b, B:250:0x04a5, B:252:0x04ad, B:253:0x04b3, B:254:0x04bf, B:256:0x04c8, B:257:0x04ce, B:258:0x04ec), top: B:5:0x001d }] */
    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void navigationStateCallback(byte[] bArr) {
        Iterator it;
        Iterator it2;
        Iterator it3;
        i iVar;
        try {
            ckt cktVar = (ckt) ddk.r(ckt.c, bArr, dcz.a());
            clx clxVar = this.a;
            Bundle bundle = new Bundle();
            awn awnVar = (awn) clxVar;
            synchronized (awnVar.e) {
                ((awn) clxVar).j = k.e.n();
                ((awn) clxVar).f = Optional.empty();
                int i = 1;
                if (cktVar.a.size() != 0) {
                    ddf ddfVar = ((awn) clxVar).j;
                    cqc j = cqh.j();
                    Iterator it4 = cktVar.a.iterator();
                    while (it4.hasNext()) {
                        cku ckuVar = (cku) it4.next();
                        ddf n = m.e.n();
                        if ((ckuVar.a & i) != 0) {
                            ckq ckqVar = ckuVar.b;
                            if (ckqVar == null) {
                                ckqVar = ckq.e;
                            }
                            ddf n2 = j.d.n();
                            ckp b = ckp.b(ckqVar.b);
                            if (b == null) {
                                b = ckp.UNKNOWN;
                            }
                            if (dkp.a.a().b()) {
                                if (ckp.ROUNDABOUT_ENTER_AND_EXIT_CW_WITH_ANGLE.equals(b)) {
                                    int i2 = ckqVar.d;
                                    iVar = (i2 <= 5 || i2 > 45) ? (i2 <= 45 || i2 >= 135) ? (i2 < 135 || i2 > 170) ? (i2 <= 170 || i2 >= 190) ? (i2 < 190 || i2 > 225) ? (i2 <= 225 || i2 >= 315) ? (i2 < 315 || i2 >= 355) ? ((i2 < 355 || i2 > 360) && (i2 <= 0 || i2 > 5)) ? i.ROUNDABOUT_ENTER_AND_EXIT_CW : i.ROUNDABOUT_ENTER_AND_EXIT_CW_U_TURN : i.ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_RIGHT : i.ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_RIGHT : i.ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_RIGHT : i.ROUNDABOUT_ENTER_AND_EXIT_CW_STRAIGHT : i.ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_LEFT : i.ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_LEFT : i.ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_LEFT;
                                } else if (ckp.ROUNDABOUT_ENTER_AND_EXIT_CCW_WITH_ANGLE.equals(b)) {
                                    int i3 = ckqVar.d;
                                    iVar = (i3 <= 5 || i3 > 45) ? (i3 <= 45 || i3 >= 135) ? (i3 < 135 || i3 > 170) ? (i3 <= 170 || i3 >= 190) ? (i3 < 190 || i3 > 225) ? (i3 <= 225 || i3 >= 315) ? (i3 < 315 || i3 >= 355) ? ((i3 < 355 || i3 > 360) && (i3 <= 0 || i3 > 5)) ? i.ROUNDABOUT_ENTER_AND_EXIT_CCW : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_U_TURN : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_LEFT : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_LEFT : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_LEFT : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_STRAIGHT : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_RIGHT : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_RIGHT : i.ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_RIGHT;
                                }
                                if (n2.c) {
                                    n2.k();
                                    n2.c = false;
                                }
                                ((j) n2.b).a = iVar.a();
                                if ((ckqVar.a & 2) != 0) {
                                    int i4 = ckqVar.c;
                                    if (n2.c) {
                                        n2.k();
                                        n2.c = false;
                                    }
                                    ((j) n2.b).b = i4;
                                }
                                j jVar = (j) n2.h();
                                if (n.c) {
                                    n.k();
                                    n.c = false;
                                }
                                m mVar = (m) n.b;
                                jVar.getClass();
                                mVar.b = jVar;
                            }
                            cqk cqkVar = awm.d;
                            ckp b2 = ckp.b(ckqVar.b);
                            if (b2 == null) {
                                b2 = ckp.UNKNOWN;
                            }
                            iVar = (i) hn.e((i) cqkVar.get(b2)).a(i.UNKNOWN);
                            if (n2.c) {
                            }
                            ((j) n2.b).a = iVar.a();
                            if ((ckqVar.a & 2) != 0) {
                            }
                            j jVar2 = (j) n2.h();
                            if (n.c) {
                            }
                            m mVar2 = (m) n.b;
                            jVar2.getClass();
                            mVar2.b = jVar2;
                        }
                        if (ckuVar.d.size() != 0) {
                            cqc j2 = cqh.j();
                            Iterator it5 = ckuVar.d.iterator();
                            while (it5.hasNext()) {
                                cko ckoVar = (cko) it5.next();
                                ddf n3 = h.b.n();
                                if (ckoVar.a.size() != 0) {
                                    cqc j3 = cqh.j();
                                    Iterator it6 = ckoVar.a.iterator();
                                    while (it6.hasNext()) {
                                        ckn cknVar = (ckn) it6.next();
                                        Iterator it7 = it5;
                                        ddf n4 = g.c.n();
                                        Iterator it8 = it4;
                                        int f = byl.f(cknVar.a);
                                        if (f == 0) {
                                            f = 1;
                                        }
                                        Iterator it9 = it6;
                                        f fVar = (f) hn.e(f.b(f - 1)).a(f.UNKNOWN);
                                        if (n4.c) {
                                            n4.k();
                                            n4.c = false;
                                        }
                                        ((g) n4.b).a = fVar.a();
                                        if (cknVar.b) {
                                            if (n4.c) {
                                                n4.k();
                                                n4.c = false;
                                            }
                                            ((g) n4.b).b = true;
                                        }
                                        j3.g((g) n4.h());
                                        it4 = it8;
                                        it5 = it7;
                                        it6 = it9;
                                    }
                                    it2 = it5;
                                    it3 = it4;
                                    cqh f2 = j3.f();
                                    if (n3.c) {
                                        n3.k();
                                        n3.c = false;
                                    }
                                    h hVar = (h) n3.b;
                                    ddr ddrVar = hVar.a;
                                    if (!ddrVar.c()) {
                                        hVar.a = ddk.z(ddrVar);
                                    }
                                    dbu.d(f2, hVar.a);
                                } else {
                                    it2 = it5;
                                    it3 = it4;
                                }
                                j2.g((h) n3.h());
                                it4 = it3;
                                it5 = it2;
                            }
                            it = it4;
                            cqh f3 = j2.f();
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            m mVar3 = (m) n.b;
                            ddr ddrVar2 = mVar3.c;
                            if (!ddrVar2.c()) {
                                mVar3.c = ddk.z(ddrVar2);
                            }
                            dbu.d(f3, mVar3.c);
                        } else {
                            it = it4;
                        }
                        if ((ckuVar.a & 4) != 0) {
                            cki ckiVar = ckuVar.e;
                            if (ckiVar == null) {
                                ckiVar = cki.b;
                            }
                            ddf n5 = b.c.n();
                            if (ckiVar.a.size() != 0) {
                                String str = (String) ckiVar.a.get(0);
                                ddf n6 = a.b.n();
                                if (n6.c) {
                                    n6.k();
                                    n6.c = false;
                                }
                                a aVar = (a) n6.b;
                                str.getClass();
                                aVar.a = str;
                                if (n5.c) {
                                    n5.k();
                                    n5.c = false;
                                }
                                b bVar = (b) n5.b;
                                a aVar2 = (a) n6.h();
                                aVar2.getClass();
                                ddr ddrVar3 = bVar.a;
                                if (!ddrVar3.c()) {
                                    bVar.a = ddk.z(ddrVar3);
                                }
                                bVar.a.add(aVar2);
                                if (n5.c) {
                                    n5.k();
                                    n5.c = false;
                                }
                                b bVar2 = (b) n5.b;
                                str.getClass();
                                bVar2.b = str;
                            }
                            b bVar3 = (b) n5.h();
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            m mVar4 = (m) n.b;
                            bVar3.getClass();
                            mVar4.d = bVar3;
                        }
                        j.g((m) n.h());
                        it4 = it;
                        i = 1;
                    }
                    cqh f4 = j.f();
                    if (ddfVar.c) {
                        ddfVar.k();
                        ddfVar.c = false;
                    }
                    k kVar = (k) ddfVar.b;
                    kVar.b();
                    dbu.d(f4, kVar.a);
                    m mVar5 = (m) ((k) ((awn) clxVar).j.b).a.get(0);
                    ddf ddfVar2 = (ddf) mVar5.E(5);
                    ddfVar2.n(mVar5);
                    ((awn) clxVar).f = Optional.of(ddfVar2);
                    if (dkp.a.a().e()) {
                        cku ckuVar2 = (cku) cktVar.a.get(0);
                        if ((ckuVar2.a & 2) != 0) {
                            cks cksVar = ckuVar2.c;
                            if (cksVar == null) {
                                cksVar = cks.c;
                            }
                            String str2 = cksVar.b;
                            if (((awn) clxVar).h == null) {
                                ckp ckpVar = ckp.DEPART;
                                ckq ckqVar2 = ckuVar2.b;
                                if (ckqVar2 == null) {
                                    ckqVar2 = ckq.e;
                                }
                                ckp b3 = ckp.b(ckqVar2.b);
                                if (b3 == null) {
                                    b3 = ckp.UNKNOWN;
                                }
                                if (ckpVar.equals(b3)) {
                                    ((awn) clxVar).h = str2;
                                    ((awn) clxVar).g = str2;
                                }
                            }
                            if (!str2.equals(((awn) clxVar).g)) {
                                ((awn) clxVar).h = ((awn) clxVar).g;
                                ((awn) clxVar).g = str2;
                            }
                        } else {
                            ((awn) clxVar).b();
                        }
                        String str3 = ((awn) clxVar).h;
                        if (str3 != null) {
                            ddf ddfVar3 = ((awn) clxVar).j;
                            ddf n7 = l.b.n();
                            if (n7.c) {
                                n7.k();
                                n7.c = false;
                            }
                            ((l) n7.b).a = str3;
                            if (ddfVar3.c) {
                                ddfVar3.k();
                                ddfVar3.c = false;
                            }
                            k kVar2 = (k) ddfVar3.b;
                            l lVar = (l) n7.h();
                            lVar.getClass();
                            kVar2.c = lVar;
                        }
                    }
                }
                if (cktVar.b.size() != 0) {
                    ddf ddfVar4 = ((awn) clxVar).j;
                    cqc j4 = cqh.j();
                    for (ckk ckkVar : cktVar.b) {
                        ddf n8 = c.e.n();
                        if ((ckkVar.a & 1) != 0) {
                            String str4 = ckkVar.b;
                            if (n8.c) {
                                n8.k();
                                n8.c = false;
                            }
                            c cVar = (c) n8.b;
                            str4.getClass();
                            cVar.a = str4;
                        }
                        j4.g((c) n8.h());
                    }
                    cqh f5 = j4.f();
                    if (ddfVar4.c) {
                        ddfVar4.k();
                        ddfVar4.c = false;
                    }
                    k kVar3 = (k) ddfVar4.b;
                    kVar3.c();
                    dbu.d(f5, kVar3.b);
                }
                ddf ddfVar5 = ((awn) clxVar).j;
                if (ddfVar5.c) {
                    ddfVar5.k();
                    ddfVar5.c = false;
                }
                ((k) ddfVar5.b).d = r.c(3);
                bundle.putByteArray("navstate2", ((k) ((awn) clxVar).j.h()).h());
            }
            awnVar.c(bundle);
        } catch (ddu e) {
            Log.e("AHU.NAVIGATION", "Error parsing protocol buffer in callback", e);
            throw new IllegalArgumentException("Error parsing protocol buffer in callback: ", e);
        }
    }

    @Override // com.google.android.projection.protocol.NavigationStatusCallbacks
    public final void navigationStatusCallback(int i) {
        int i2;
        clx clxVar = this.a;
        char c = 3;
        switch (i) {
            case 0:
                i2 = 1;
                break;
            case 1:
                i2 = 2;
                break;
            case 2:
                i2 = 3;
                break;
            case 3:
                i2 = 4;
                break;
            default:
                i2 = 0;
                break;
        }
        if (i2 == 0) {
            return;
        }
        awn awnVar = (awn) clxVar;
        awnVar.b();
        switch (i2 - 1) {
            case 1:
                synchronized (awnVar.e) {
                    if (((awn) clxVar).j == null) {
                        return;
                    }
                    if (dkp.d()) {
                        switch (((k) ((awn) clxVar).j.b).d) {
                            case 0:
                                c = 2;
                                break;
                            case 1:
                                break;
                            case 2:
                                c = 4;
                                break;
                            default:
                                c = 0;
                                break;
                        }
                        if (c != 0 && c == 4) {
                            return;
                        }
                    }
                    if (dkp.c() && ((k) ((awn) clxVar).j.i()).equals(k.e)) {
                        return;
                    }
                    Bundle bundle = new Bundle();
                    synchronized (awnVar.e) {
                        bundle.putByteArray("navstate2", ((k) ((awn) clxVar).j.h()).h());
                    }
                    awnVar.c(bundle);
                    return;
                }
            case 2:
            default:
                return;
            case 3:
                if (dkp.d()) {
                    Bundle bundle2 = new Bundle();
                    synchronized (awnVar.e) {
                        ddf n = k.e.n();
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ((k) n.b).d = r.c(4);
                        ((awn) clxVar).j = n;
                        ((awn) clxVar).f = Optional.empty();
                        bundle2.putByteArray("navstate2", ((k) ((awn) clxVar).j.h()).h());
                    }
                    awnVar.c(bundle2);
                    return;
                }
                return;
        }
    }
}
