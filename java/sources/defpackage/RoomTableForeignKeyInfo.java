package defpackage;

import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RoomTableForeignKeyInfo {
    public final String a;
    public final String b;
    public final String c;
    public final List d;
    public final List e;

    public RoomTableForeignKeyInfo(String str, String str2, String str3, List list, List list2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = Collections.unmodifiableList(list);
        this.e = Collections.unmodifiableList(list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoomTableForeignKeyInfo)) {
            return false;
        }
        RoomTableForeignKeyInfo aepVar = (RoomTableForeignKeyInfo) obj;
        if (this.a.equals(aepVar.a) && this.b.equals(aepVar.b) && this.c.equals(aepVar.c) && this.d.equals(aepVar.d)) {
            return this.e.equals(aepVar.e);
        }
        return false;
    }

    public final int hashCode() {
        return (((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode();
    }

    public final String toString() {
        return "ForeignKey{referenceTable='" + this.a + "', onDelete='" + this.b + "', onUpdate='" + this.c + "', columnNames=" + this.d + ", referenceColumnNames=" + this.e + '}';
    }
}
