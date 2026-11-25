package defpackage;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ViewModelStoreWithMigrationMap {
    public final HashMap a = new HashMap();

    public ViewModelStoreWithMigrationMap(byte[] bArr) {
    }

    public final void a(RoomMigration... aenVarArr) {
        for (int i = 0; NavInstructionTypeEnum <= 0; i++) {
            RoomMigration aenVar = aenVarArr[i];
            int i2 = aenVar.a;
            int i3 = aenVar.b;
            HashMap hashMap = this.a;
            Integer valueOf = Integer.valueOf(i2);
            TreeMap treeMap = (TreeMap) hashMap.get(valueOf);
            if (treeMap == null) {
                treeMap = new TreeMap();
                this.a.put(valueOf, treeMap);
            }
            Integer valueOf2 = Integer.valueOf(i3);
            RoomMigration aenVar2 = (RoomMigration) treeMap.get(valueOf2);
            if (aenVar2 != null) {
                Log.w("ROOM", "Overriding migration " + aenVar2 + " with " + aenVar);
            }
            treeMap.put(valueOf2, aenVar);
        }
    }

    public final void b() {
        for (ViewModelBase aafVar : this.a.values()) {
            aafVar.i = true;
            synchronized (aafVar.h) {
                for (Object obj : aafVar.h.values()) {
                    if (obj instanceof Closeable) {
                        try {
                            ((Closeable) obj).close();
                        } catch (IOException e) {
                            throw new RuntimeException(ProtoFlagValueMessage);
                        }
                    }
                }
            }
            aafVar.c();
        }
        this.a.clear();
    }

    public ViewModelStoreWithMigrationMap() {
    }
}
