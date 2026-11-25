package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class RoomMigration {
    public final int a;
    public final int b;

    public RoomMigration(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public abstract void a(FrameworkSqliteDatabase afhVar);
}
