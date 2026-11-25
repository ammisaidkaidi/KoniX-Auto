package defpackage;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RoomTableInfo {
    public final String a;
    public final Map b;
    public final Set c;
    public final Set d;

    public RoomTableInfo(String str, Map map, Set set, Set set2) {
        this.a = str;
        this.b = Collections.unmodifiableMap(map);
        this.c = Collections.unmodifiableSet(set);
        this.d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x029d A[Catch: all -> 0x02d0, TryCatch #0 {all -> 0x02d0, all -> 0x02ad, blocks: (B:50:0x0199, B:55:0x01b2, B:56:0x01b7, B:58:0x01bd, B:65:0x01c9, B:68:0x01d7, B:76:0x0296, B:78:0x029d, B:102:0x028e, B:106:0x02ae, B:107:0x02b1, B:70:0x01ef, B:82:0x0218, B:83:0x0222, B:85:0x0228, B:92:0x022e, B:97:0x024d, B:101:0x0265), top: B:49:0x0199 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x029c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static RoomTableInfo a(FrameworkSqliteDatabase afhVar, String str) {
        HashSet hashSet;
        int i;
        int i2;
        RoomTableIndexInfo aerVar;
        int i3;
        Object obj;
        int i4;
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("PRAGMA table_info(`");
        StaggeredGridLayoutParams.append(str);
        String str2 = "`)";
        StaggeredGridLayoutParams.append("`)");
        Cursor b = afhVar.b(StaggeredGridLayoutParams.toString());
        HashMap hashMap = new HashMap();
        try {
            if (b.getColumnCount() > 0) {
                int columnIndex = b.getColumnIndex("name");
                int columnIndex2 = b.getColumnIndex("type");
                int columnIndex3 = b.getColumnIndex("notnull");
                int columnIndex4 = b.getColumnIndex("pk");
                int columnIndex5 = b.getColumnIndex("dflt_value");
                while (b.moveToNext()) {
                    String string = b.getString(columnIndex);
                    hashMap.put(string, new RoomTableColumnInfo(string, b.getString(columnIndex2), b.getInt(columnIndex3) != 0, b.getInt(columnIndex4), b.getString(columnIndex5), 2));
                }
            }
            b.close();
            HashSet hashSet2 = new HashSet();
            b = afhVar.b("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = b.getColumnIndex("id");
                int columnIndex7 = b.getColumnIndex("seq");
                int columnIndex8 = b.getColumnIndex("table");
                int columnIndex9 = b.getColumnIndex("on_delete");
                int columnIndex10 = b.getColumnIndex("on_update");
                int columnIndex11 = b.getColumnIndex("id");
                int columnIndex12 = b.getColumnIndex("seq");
                int columnIndex13 = b.getColumnIndex("from");
                int columnIndex14 = b.getColumnIndex("to");
                int count = b.getCount();
                ArrayList<RoomForeignKeySequence> arrayList = new ArrayList();
                int i5 = 0;
                while (i5 < count) {
                    b.moveToPosition(i5);
                    arrayList.add(new RoomForeignKeySequence(b.getInt(columnIndex11), b.getInt(columnIndex12), b.getString(columnIndex13), b.getString(columnIndex14)));
                    i5++;
                    count = count;
                    str2 = str2;
                    columnIndex11 = columnIndex11;
                    columnIndex12 = columnIndex12;
                    columnIndex13 = columnIndex13;
                }
                String str3 = str2;
                Collections.sort(arrayList);
                int count2 = b.getCount();
                int i6 = 0;
                while (i6 < count2) {
                    b.moveToPosition(i6);
                    if (b.getInt(columnIndex7) != 0) {
                        i4 = count2;
                    } else {
                        int i7 = b.getInt(columnIndex6);
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        for (RoomForeignKeySequence aeqVar : arrayList) {
                            int i8 = count2;
                            if (aeqVar.a == i7) {
                                arrayList2.add(aeqVar.c);
                                arrayList3.add(aeqVar.d);
                                count2 = i8;
                            } else {
                                count2 = i8;
                            }
                        }
                        i4 = count2;
                        hashSet2.add(new RoomTableForeignKeyInfo(b.getString(columnIndex8), b.getString(columnIndex9), b.getString(columnIndex10), arrayList2, arrayList3));
                    }
                    i6++;
                    count2 = i4;
                }
                b.close();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("PRAGMA index_list(`");
                sb2.append(str);
                String str4 = str3;
                sb2.append(str4);
                FrameworkSqliteDatabase afhVar2 = afhVar;
                b = afhVar2.b(sb2.toString());
                String str5 = "name";
                try {
                    int columnIndex15 = b.getColumnIndex(str5);
                    int columnIndex16 = b.getColumnIndex("origin");
                    int columnIndex17 = b.getColumnIndex("unique");
                    if (columnIndex15 != -1 && columnIndex16 != -1 && columnIndex17 != -1) {
                        HashSet hashSet3 = new HashSet();
                        while (b.moveToNext()) {
                            if ("c".equals(b.getString(columnIndex16))) {
                                String string2 = b.getString(columnIndex15);
                                boolean z = b.getInt(columnIndex17) == 1;
                                b = afhVar2.b("PRAGMA index_xinfo(`" + string2 + str4);
                                int columnIndex18 = b.getColumnIndex("seqno");
                                int columnIndex19 = b.getColumnIndex("cid");
                                int columnIndex20 = b.getColumnIndex(str5);
                                String str6 = str5;
                                int columnIndex21 = b.getColumnIndex("desc");
                                String str7 = str4;
                                if (columnIndex18 == -1 || columnIndex19 == -1 || columnIndex20 == -1) {
                                    i = columnIndex15;
                                    i2 = columnIndex16;
                                } else if (columnIndex21 == -1) {
                                    i = columnIndex15;
                                    i2 = columnIndex16;
                                } else {
                                    TreeMap treeMap = new TreeMap();
                                    TreeMap treeMap2 = new TreeMap();
                                    while (b.moveToNext()) {
                                        if (b.getInt(columnIndex19) >= 0) {
                                            int i9 = b.getInt(columnIndex18);
                                            int i10 = columnIndex15;
                                            String string3 = b.getString(columnIndex20);
                                            if (b.getInt(columnIndex21) > 0) {
                                                i3 = columnIndex21;
                                                obj = "DESC";
                                            } else {
                                                i3 = columnIndex21;
                                                obj = "ASC";
                                            }
                                            int i11 = columnIndex16;
                                            Integer valueOf = Integer.valueOf(i9);
                                            treeMap.put(valueOf, string3);
                                            treeMap2.put(valueOf, obj);
                                            columnIndex15 = i10;
                                            columnIndex21 = i3;
                                            columnIndex16 = i11;
                                        }
                                    }
                                    i = columnIndex15;
                                    i2 = columnIndex16;
                                    ArrayList arrayList4 = new ArrayList(treeMap.size());
                                    arrayList4.addAll(treeMap.values());
                                    ArrayList arrayList5 = new ArrayList(treeMap2.size());
                                    arrayList5.addAll(treeMap2.values());
                                    aerVar = new RoomTableIndexInfo(string2, z, arrayList4, arrayList5);
                                    b.close();
                                    if (aerVar == null) {
                                        hashSet3.add(aerVar);
                                        afhVar2 = afhVar;
                                        str5 = str6;
                                        str4 = str7;
                                        columnIndex15 = i;
                                        columnIndex16 = i2;
                                    }
                                }
                                b.close();
                                aerVar = null;
                                if (aerVar == null) {
                                }
                            } else {
                                afhVar2 = afhVar;
                            }
                        }
                        b.close();
                        hashSet = hashSet3;
                        return new RoomTableInfo(str, hashMap, hashSet2, hashSet);
                    }
                    b.close();
                    hashSet = null;
                    return new RoomTableInfo(str, hashMap, hashSet2, hashSet);
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoomTableInfo)) {
            return false;
        }
        RoomTableInfo aesVar = (RoomTableInfo) obj;
        if (!this.a.equals(aesVar.a)) {
            return false;
        }
        Map map = this.b;
        if (map == null ? aesVar.b != null : !map.equals(aesVar.b)) {
            return false;
        }
        Set set2 = this.c;
        if (set2 == null ? aesVar.c != null : !set2.equals(aesVar.c)) {
            return false;
        }
        Set set3 = this.d;
        if (set3 == null || (set = aesVar.d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public final int hashCode() {
        int hashCode = this.a.hashCode() * 31;
        Map map = this.b;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set set = this.c;
        return hashCode2 + (set != null ? set.hashCode() : 0);
    }

    public final String toString() {
        return "TableInfo{name='" + this.a + "', columns=" + this.b + ", foreignKeys=" + this.c + ", indices=" + this.d + '}';
    }
}
