package defpackage;

import android.os.IBinder;
import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abe implements IBinder.DeathRecipient {
    public final String a;
    public final int b;
    public final int c;
    public final HashMap d = new HashMap();
    public abc e;
    final /* synthetic */ abz f;
    public final abx g;

    public abe(abz abzVar, String str, int i, int i2, abx abxVar) {
        this.f = abzVar;
        this.a = str;
        this.b = i;
        this.c = i2;
        new aca(str, i, i2);
        this.g = abxVar;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f.c.post(new abd(this));
    }
}
