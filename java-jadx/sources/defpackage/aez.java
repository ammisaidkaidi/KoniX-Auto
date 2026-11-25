package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aez {
    public final int a;
    public adx b;
    public final aef c;
    public final String d;
    public final String e;

    public aez() {
        this.a = 12;
    }

    public aez(adx adxVar, aef aefVar) {
        this();
        this.b = adxVar;
        this.c = aefVar;
        this.d = "c103703e120ae8cc73c9248622f3cd1e";
        this.e = "49f946663a8deb7054212b8adda248c6";
    }

    public static final void a(String str) {
        if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
            return;
        }
        Log.w("SupportSQLite", "deleting the database file: ".concat(String.valueOf(str)));
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception e) {
            Log.w("SupportSQLite", "delete failed: ", e);
        }
    }

    public static void c(afh afhVar) {
        afhVar.g("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        afhVar.g("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[LOOP:4: B:46:0x003e->B:61:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0072 A[EDGE_INSN: B:72:0x0072->B:6:0x0072 BREAK  A[LOOP:3: B:39:0x0016->B:60:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(afh afhVar, int i, int i2) {
        TreeMap treeMap;
        boolean z;
        boolean z2;
        adx adxVar = this.b;
        int i3 = 0;
        if (adxVar != null) {
            aed aedVar = adxVar.d;
            List list = null;
            if (i == i2) {
                list = Collections.emptyList();
            } else {
                ArrayList arrayList = new ArrayList();
                int i4 = i;
                do {
                    if (i2 > i) {
                        if (i4 >= i2) {
                            list = arrayList;
                            break;
                        }
                        treeMap = (TreeMap) aedVar.a.get(Integer.valueOf(i4));
                        if (treeMap == null) {
                            break;
                        }
                        Iterator it = (i2 > i ? treeMap.descendingKeySet() : treeMap.keySet()).iterator();
                        while (true) {
                            z = true;
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            int intValue = ((Integer) it.next()).intValue();
                            if (i2 > i) {
                                if (intValue <= i2 && intValue > i4) {
                                    z2 = true;
                                    if (!z2) {
                                        arrayList.add((aen) treeMap.get(Integer.valueOf(intValue)));
                                        i4 = intValue;
                                        break;
                                    }
                                }
                                z2 = false;
                                if (!z2) {
                                }
                            } else {
                                if (intValue >= i2 && intValue < i4) {
                                    z2 = true;
                                    if (!z2) {
                                    }
                                }
                                z2 = false;
                                if (!z2) {
                                }
                            }
                        }
                    } else {
                        if (i4 <= i2) {
                            list = arrayList;
                            break;
                        }
                        treeMap = (TreeMap) aedVar.a.get(Integer.valueOf(i4));
                        if (treeMap == null) {
                        }
                    }
                } while (z);
            }
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                Cursor b = afhVar.b("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (b.moveToNext()) {
                    try {
                        arrayList2.add(b.getString(0));
                    } catch (Throwable th) {
                        b.close();
                        throw th;
                    }
                }
                b.close();
                int size = arrayList2.size();
                while (i3 < size) {
                    String str = (String) arrayList2.get(i3);
                    if (str.startsWith("room_fts_content_sync_")) {
                        afhVar.g("DROP TRIGGER IF EXISTS ".concat(String.valueOf(str)));
                    }
                    i3++;
                }
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    ((aen) it2.next()).a(afhVar);
                }
                aeg a = this.c.a(afhVar);
                if (!a.a) {
                    throw new IllegalStateException("Migration didn't properly handle: ".concat(String.valueOf(a.b)));
                }
                c(afhVar);
                return;
            }
        }
        adx adxVar2 = this.b;
        if (adxVar2 == null || ((i <= i2 || !adxVar2.l) && adxVar2.k)) {
            throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        aef aefVar = this.c;
        afhVar.g("DROP TABLE IF EXISTS `Dependency`");
        afhVar.g("DROP TABLE IF EXISTS `WorkSpec`");
        afhVar.g("DROP TABLE IF EXISTS `WorkTag`");
        afhVar.g("DROP TABLE IF EXISTS `SystemIdInfo`");
        afhVar.g("DROP TABLE IF EXISTS `WorkName`");
        afhVar.g("DROP TABLE IF EXISTS `WorkProgress`");
        afhVar.g("DROP TABLE IF EXISTS `Preference`");
        ahw ahwVar = (ahw) aefVar;
        List list2 = ahwVar.a.e;
        if (list2 != null) {
            int size2 = list2.size();
            while (i3 < size2) {
                i3++;
            }
        }
        this.c.b(afhVar);
    }
}
