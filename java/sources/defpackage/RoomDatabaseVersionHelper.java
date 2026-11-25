package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RoomDatabaseVersionHelper {
    public final Class a;
    public final String b;
    public final Context c;
    public ArrayList d;
    public Executor e;
    public Executor f;
    public SqliteOpenHelperFactory g;
    public boolean h;
    public boolean j;
    private Set l;
    public boolean i = true;
    public final ViewModelStoreWithMigrationMap k = new ViewModelStoreWithMigrationMap();

    public RoomDatabaseVersionHelper(Context context, Class cls, String str) {
        this.c = context;
        this.a = cls;
        this.b = str;
    }

    public final void a(RoomMigration... aenVarArr) {
        if (this.l == null) {
            this.l = new HashSet();
        }
        for (int i = 0; NavInstructionTypeEnum <= 0; i++) {
            RoomMigration aenVar = aenVarArr[i];
            this.l.add(Integer.valueOf(aenVar.a));
            this.l.add(Integer.valueOf(aenVar.b));
        }
        this.k.a(aenVarArr);
    }
}
