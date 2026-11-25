package androidx.work.impl;

import defpackage.adx;
import defpackage.aeb;
import defpackage.aez;
import defpackage.afa;
import defpackage.afb;
import defpackage.afd;
import defpackage.ahw;
import defpackage.akc;
import defpackage.aki;
import defpackage.akl;
import defpackage.akv;
import defpackage.akx;
import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    private volatile akl j;
    private volatile akx k;
    private volatile akc l;
    private volatile aki m;
    private volatile akx n;
    private volatile akx o;
    private volatile akx p;

    @Override // defpackage.aee
    protected final aeb a() {
        HashMap hashMap = new HashMap(0);
        new HashMap(0);
        return new aeb(this, hashMap, "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // defpackage.aee
    protected final afd b(adx adxVar) {
        aez aezVar = new aez(adxVar, new ahw(this));
        afa a = afb.a(adxVar.b);
        a.b = adxVar.c;
        a.c = aezVar;
        return adxVar.a.a(a.a());
    }

    @Override // androidx.work.impl.WorkDatabase
    public final akl n() {
        akl aklVar;
        if (this.j != null) {
            return this.j;
        }
        synchronized (this) {
            if (this.j == null) {
                this.j = new akv(this);
            }
            aklVar = this.j;
        }
        return aklVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final akc p() {
        akc akcVar;
        if (this.l != null) {
            return this.l;
        }
        synchronized (this) {
            if (this.l == null) {
                this.l = new akc(this);
            }
            akcVar = this.l;
        }
        return akcVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final aki q() {
        aki akiVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new aki(this);
            }
            akiVar = this.m;
        }
        return akiVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final akx r() {
        akx akxVar;
        if (this.k != null) {
            return this.k;
        }
        synchronized (this) {
            if (this.k == null) {
                this.k = new akx(this);
            }
            akxVar = this.k;
        }
        return akxVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final akx s() {
        akx akxVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new akx(this, (byte[]) null);
            }
            akxVar = this.n;
        }
        return akxVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final akx t() {
        akx akxVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new akx(this, (char[]) null);
            }
            akxVar = this.o;
        }
        return akxVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final akx u() {
        akx akxVar;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new akx(this, null, null);
            }
            akxVar = this.p;
        }
        return akxVar;
    }
}
