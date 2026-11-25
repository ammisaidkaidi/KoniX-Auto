package defpackage;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkAuxiliaryDaoImpl {
    public final RoomDatabaseBase a;
    public final RoomEntityInsertionAdapter b;

    public WorkAuxiliaryDaoImpl(RoomDatabaseBase aeeVar, byte[] bArr, byte[] bArr2) {
        this.a = aeeVar;
        this.b = new WorkSpecInsertAdapterRoom(aeeVar);
    }

    public final List a(String str) {
        FrameworkSqliteDatabaseFacade a = FrameworkSqliteDatabaseFacade.a("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            a.e(1);
        } else {
            a.f(1, str);
        }
        this.a.e();
        Cursor k = this.a.k(SingleStringProtoMessage);
        try {
            ArrayList arrayList = new ArrayList(k.getCount());
            while (k.moveToNext()) {
                arrayList.add(k.getString(0));
            }
            return arrayList;
        } finally {
            k.close();
            a.i();
        }
    }

    public final Long b(String str) {
        FrameworkSqliteDatabaseFacade a = FrameworkSqliteDatabaseFacade.a("SELECT long_value FROM Preference where `key`=?", 1);
        a.f(1, str);
        this.a.e();
        Cursor k = this.a.k(SingleStringProtoMessage);
        try {
            Long l = null;
            if (k.moveToFirst() && !k.isNull(0)) {
                l = Long.valueOf(k.getLong(0));
            }
            return l;
        } finally {
            k.close();
            a.i();
        }
    }

    public final void c(WorkIdTimestampPair ajxVar) {
        this.a.e();
        this.a.f();
        try {
            this.b.a(ajxVar);
            this.a.h();
        } finally {
            this.a.g();
        }
    }

    public final List d(String str) {
        FrameworkSqliteDatabaseFacade a = FrameworkSqliteDatabaseFacade.a("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            a.e(1);
        } else {
            a.f(1, str);
        }
        this.a.e();
        Cursor k = this.a.k(SingleStringProtoMessage);
        try {
            ArrayList arrayList = new ArrayList(k.getCount());
            while (k.moveToNext()) {
                arrayList.add(k.getString(0));
            }
            return arrayList;
        } finally {
            k.close();
            a.i();
        }
    }

    public WorkAuxiliaryDaoImpl(RoomDatabaseBase aeeVar, char[] cArr) {
        this.a = aeeVar;
        this.b = new WorkTagInsertAdapterRoom(aeeVar);
    }

    public WorkAuxiliaryDaoImpl(RoomDatabaseBase aeeVar, byte[] bArr) {
        this.a = aeeVar;
        this.b = new DependencyInsertAdapter(aeeVar);
    }

    public WorkAuxiliaryDaoImpl(RoomDatabaseBase aeeVar) {
        this.a = aeeVar;
        this.b = new WorkSpecTagInsertAdapter(aeeVar);
    }
}
