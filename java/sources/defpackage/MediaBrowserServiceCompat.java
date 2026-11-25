package defpackage;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    final ArrayList a;
    final DesugaredArrayMap b;
    public final MediaBrowserServiceHandler c;
    public MediaSessionCompat$Token d;
    public MediaBrowserServiceCallbacks e;

    public MediaBrowserServiceCompat() {
        new MediaBrowserConnectionRecord(this, "android.media.session.MediaController", -1, -1, null);
        this.a = new ArrayList();
        this.b = new DesugaredArrayMap();
        this.c = new MediaBrowserServiceHandler(this);
    }

    static final List a(List list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = -1;
        int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i2 != -1) {
            i = i2;
        } else if (i3 == -1) {
            return list;
        }
        int i4 = i3 * i;
        int i5 = i4 + i3;
        if (NavInstructionTypeEnum < 0 || i3 <= 0 || i4 >= list.size()) {
            return Collections.emptyList();
        }
        if (i5 > list.size()) {
            i5 = list.size();
        }
        return list.subList(i4, i5);
    }

    public static final void d(MediaBrowserCallbackRunnableBase aboVar) {
        aboVar.h = 2;
        aboVar.b(null);
    }

    public abstract void aQ(MediaBrowserCallbackRunnableBase aboVar);

    public abstract MediaBrowserRootHints b(String str);

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public final void e(MediaBrowserCallbackRunnableBase aboVar) {
        aboVar.h = 1;
        aQ(aboVar);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.e.a(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        MediaBrowserServiceCallbacksApi21 abnVar = new MediaBrowserServiceCallbacksApi21(this);
        this.e = abnVar;
        abnVar.b = new MediaBrowserServiceImplApi26(abnVar, abnVar.e);
        abnVar.b.onCreate();
    }
}
