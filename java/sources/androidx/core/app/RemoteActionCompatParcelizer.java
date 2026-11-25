package androidx.core.app;

import android.app.PendingIntent;
import android.support.v4.app.RemoteActionCompat;
import android.support.v4.graphics.drawable.IconCompat;
import defpackage.VersionedParcelWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcelWriter agbVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = (IconCompat) agbVar.t(remoteActionCompat.a);
        remoteActionCompat.b = agbVar.d(remoteActionCompat.b, 2);
        remoteActionCompat.c = agbVar.d(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) agbVar.b(remoteActionCompat.d, 4);
        remoteActionCompat.e = agbVar.l(remoteActionCompat.e, 5);
        remoteActionCompat.f = agbVar.l(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcelWriter agbVar) {
        agbVar.u(remoteActionCompat.a);
        agbVar.g(remoteActionCompat.b, 2);
        agbVar.g(remoteActionCompat.c, 3);
        agbVar.i(remoteActionCompat.d, 4);
        agbVar.f(remoteActionCompat.e, 5);
        agbVar.f(remoteActionCompat.f, 6);
    }
}
