package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RoomForeignKeySequence implements Comparable {
    final int a;
    final int b;
    final String c;
    final String d;

    public RoomForeignKeySequence(int i, int i2, String str, String str2) {
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        RoomForeignKeySequence aeqVar = (RoomForeignKeySequence) obj;
        int i = this.a - aeqVar.a;
        return i == 0 ? this.b - aeqVar.b : i;
    }
}
