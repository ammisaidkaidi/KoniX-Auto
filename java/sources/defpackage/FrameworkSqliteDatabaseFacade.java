package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FrameworkSqliteDatabaseFacade implements SqliteQueryInterface, afe {
    static final TreeMap a = new TreeMap();
    final long[] b;
    final double[] c;
    final String[] d;
    final byte[][] e;
    final int f;
    int g;
    private volatile String h;
    private final int[] i;

    private FrameworkSqliteDatabaseFacade(int i) {
        this.f = i;
        int i2 = i + 1;
        this.i = new int[i2];
        this.b = new long[i2];
        this.c = new double[i2];
        this.d = new String[i2];
        this.e = new byte[i2][];
    }

    public static FrameworkSqliteDatabaseFacade a(String str, int i) {
        TreeMap treeMap = a;
        synchronized (treeMap) {
            Map.Entry ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(NavInstructionTypeEnum));
            if (ceilingEntry == null) {
                FrameworkSqliteDatabaseFacade aehVar = new FrameworkSqliteDatabaseFacade(NavInstructionTypeEnum);
                aehVar.h(str, i);
                return aehVar;
            }
            treeMap.remove(ceilingEntry.getKey());
            FrameworkSqliteDatabaseFacade aehVar2 = (FrameworkSqliteDatabaseFacade) ceilingEntry.getValue();
            aehVar2.h(str, i);
            return aehVar2;
        }
    }

    @Override // defpackage.SqliteQueryInterface
    public final String b() {
        return this.h;
    }

    @Override // defpackage.SqliteProgramInterface
    public final void c(int i, byte[] bArr) {
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // defpackage.SqliteProgramInterface
    public final void d(int i, long j) {
        this.i[1] = 2;
        this.b[1] = j;
    }

    @Override // defpackage.SqliteProgramInterface
    public final void e(int i) {
        this.i[1] = 1;
    }

    @Override // defpackage.SqliteProgramInterface
    public final void f(int i, String str) {
        this.i[1] = 4;
        this.d[1] = str;
    }

    @Override // defpackage.SqliteQueryInterface
    public final void g(SqliteProgramInterface afeVar) {
        int i = 1;
        while (NavInstructionTypeEnum <= this.g) {
            switch (this.i[1]) {
                case 1:
                    afeVar.e(1);
                    i = 2;
                    break;
                case 2:
                    afeVar.d(1, this.b[1]);
                    i = 2;
                    break;
                case 3:
                    ((FrameworkSqliteProgram) afeVar).a.bindDouble(1, this.c[1]);
                    i = 2;
                    break;
                case 4:
                    afeVar.f(1, this.d[1]);
                    i = 2;
                    break;
                case 5:
                    afeVar.c(1, this.e[1]);
                    i = 2;
                    break;
                default:
                    i = 2;
                    break;
            }
        }
    }

    final void h(String str, int i) {
        this.h = str;
        this.g = i;
    }

    public final void i() {
        TreeMap treeMap = a;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i;
                }
            }
        }
    }
}
