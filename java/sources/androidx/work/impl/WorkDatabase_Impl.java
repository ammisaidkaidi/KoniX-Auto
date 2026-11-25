package androidx.work.impl;

import defpackage.RoomDatabaseBuilder;
import defpackage.InvalidationTracker;
import defpackage.SqliteOpenHelperCallback;
import defpackage.SqliteOpenHelperConfigBuilder;
import defpackage.SqliteOpenHelperConfiguration;
import defpackage.SqliteOpenHelperInterface;
import defpackage.WorkDatabaseImpl;
import defpackage.SystemIdInfoDaoImpl;
import defpackage.WorkProgressDaoImpl;
import defpackage.WorkSpecDao;
import defpackage.WorkSpecDaoImpl;
import defpackage.WorkAuxiliaryDaoImpl;
import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    private volatile WorkSpecDao j;
    private volatile WorkAuxiliaryDaoImpl k;
    private volatile SystemIdInfoDaoImpl l;
    private volatile WorkProgressDaoImpl m;
    private volatile WorkAuxiliaryDaoImpl n;
    private volatile WorkAuxiliaryDaoImpl o;
    private volatile WorkAuxiliaryDaoImpl p;

    @Override // defpackage.RoomDatabaseBase
    protected final InvalidationTracker a() {
        HashMap hashMap = new HashMap(0);
        new HashMap(0);
        return new InvalidationTracker(this, hashMap, "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // defpackage.RoomDatabaseBase
    protected final SqliteOpenHelperInterface b(RoomDatabaseBuilder adxVar) {
        SqliteOpenHelperCallback aezVar = new SqliteOpenHelperCallback(adxVar, new WorkDatabaseImpl(this));
        SqliteOpenHelperConfigBuilder a = SqliteOpenHelperConfiguration.a(adxVar.b);
        a.b = adxVar.c;
        a.c = aezVar;
        return adxVar.a.a(a.a());
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkSpecDao n() {
        WorkSpecDao aklVar;
        if (this.j != null) {
            return this.j;
        }
        synchronized (this) {
            if (this.j == null) {
                this.j = new WorkSpecDaoImpl(this);
            }
            aklVar = this.j;
        }
        return aklVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final SystemIdInfoDaoImpl p() {
        SystemIdInfoDaoImpl akcVar;
        if (this.l != null) {
            return this.l;
        }
        synchronized (this) {
            if (this.l == null) {
                this.l = new SystemIdInfoDaoImpl(this);
            }
            akcVar = this.l;
        }
        return akcVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkProgressDaoImpl q() {
        WorkProgressDaoImpl akiVar;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new WorkProgressDaoImpl(this);
            }
            akiVar = this.m;
        }
        return akiVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkAuxiliaryDaoImpl r() {
        WorkAuxiliaryDaoImpl akxVar;
        if (this.k != null) {
            return this.k;
        }
        synchronized (this) {
            if (this.k == null) {
                this.k = new WorkAuxiliaryDaoImpl(this);
            }
            akxVar = this.k;
        }
        return akxVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkAuxiliaryDaoImpl s() {
        WorkAuxiliaryDaoImpl akxVar;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new WorkAuxiliaryDaoImpl(this, (byte[]) null);
            }
            akxVar = this.n;
        }
        return akxVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkAuxiliaryDaoImpl t() {
        WorkAuxiliaryDaoImpl akxVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new WorkAuxiliaryDaoImpl(this, (char[]) null);
            }
            akxVar = this.o;
        }
        return akxVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkAuxiliaryDaoImpl u() {
        WorkAuxiliaryDaoImpl akxVar;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new WorkAuxiliaryDaoImpl(this, null, null);
            }
            akxVar = this.p;
        }
        return akxVar;
    }
}
