package com.google.android.apps.auto.aareceiver.media;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.MediaMetadata;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import com.google.android.embedded.projection.R;
import defpackage.MediaBrowserRootHints;
import defpackage.MediaBrowserServiceBindRunnable;
import defpackage.MediaBrowserServiceCallbacks;
import defpackage.MediaBrowserCallbackRunnableBase;
import defpackage.ProjectionDevice;
import defpackage.HiltMediaBrowserService;
import defpackage.MediaBrowserServiceBinder;
import defpackage.ProjectionSessionLifecycleListener_bag;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.DisplayType;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.MediaSessionManagerCallbackInterface;
import defpackage.MediaSessionCompatHelper;
import defpackage.MediaSessionCompatUtil;
import defpackage.MediaSessionCompatCore;
import defpackage.GuavaCollectPreconditionsUtil;
import defpackage.WorkDataEnumConverters;
import defpackage.PlaybackStateCompatBuilder;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MediaBrowserService extends HiltMediaBrowserService implements ProjectionSessionLifecycleListener_bag {
    private static final FloggerLoggerFactory h = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/media/MediaBrowserService");
    public MediaSessionCompatCore f;
    public DeviceTracker g;
    private final IBinder i = new MediaBrowserServiceBinder(this);
    private boolean j;
    private Intent k;

    public static void i(ProjectionSession bblVar, int i) {
        bblVar.c(DisplayType.DISPLAY_TYPE_MAIN, new KeyEvent(0, i));
        bblVar.c(DisplayType.DISPLAY_TYPE_MAIN, new KeyEvent(1, i));
    }

    private static PlaybackStateCompat k(String str) {
        PlaybackStateCompatBuilder fxVar = new PlaybackStateCompatBuilder();
        fxVar.b = 1;
        fxVar.c = str;
        return fxVar.a();
    }

    @Override // defpackage.MediaBrowserServiceCompat
    public final void aQ(MediaBrowserCallbackRunnableBase aboVar) {
        aboVar.b(new ArrayList());
    }

    @Override // defpackage.MediaBrowserServiceCompat
    public final MediaBrowserRootHints b(String str) {
        try {
            if ((getApplicationContext().getPackageManager().getApplicationInfo(str, 0).flags & 1) != 0) {
                return new MediaBrowserRootHints(null);
            }
            ((ParameterizedLoggerApi) h.c().h("com/google/android/apps/auto/aareceiver/media/MediaBrowserService", "onGetRoot", 132, "MediaBrowserService.java")).p("Connection to media browser service is rejected for %s", str);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) h.b().g(e)).h("com/google/android/apps/auto/aareceiver/media/MediaBrowserService", "onGetRoot", 137, "MediaBrowserService.java")).p("%s is not found.", str);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x016a  */
    @Override // defpackage.MediaBrowserServiceCompat, android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        PlaybackStateCompat a;
        ArrayList arrayList;
        PlaybackStateCompat.CustomAction customAction;
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 8);
        sb.append("*** ");
        sb.append(name);
        sb.append(" ***");
        printWriter.println(sb.toString());
        boolean z = this.j;
        StringBuilder sb2 = new StringBuilder(23);
        sb2.append("service is bound: ");
        sb2.append(z);
        printWriter.println(sb2.toString());
        Intent intent = this.k;
        if (intent != null) {
            printWriter.println("service is bound by intent: ".concat(intent.toString()));
        }
        MediaSessionCompatCore fuVar = this.f;
        if (fuVar == null) {
            printWriter.println("session compat is null.");
            return;
        }
        boolean i = fuVar.i();
        StringBuilder sb3 = new StringBuilder(36);
        sb3.append("sessionCompat's active status: ");
        sb3.append(i);
        printWriter.println(sb3.toString());
        String valueOf = String.valueOf(this.f.b());
        String.valueOf(valueOf).length();
        printWriter.println("sessionCompat's session token: ".concat(String.valueOf(valueOf)));
        MediaSessionCompatUtil fkVar = this.f.c;
        if (fkVar == null) {
            printWriter.println("session compat's controller is null.");
            return;
        }
        MediaSessionManagerCallbackInterface fhVar = fkVar.a;
        MediaSessionCompatHelper fjVar = (MediaSessionCompatHelper) fhVar;
        if (fjVar.e.a() != null) {
            try {
                a = ((MediaSessionCompatHelper) fhVar).e.a().a();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
            }
            String valueOf2 = String.valueOf(a);
            String.valueOf(valueOf2).length();
            printWriter.println("sessionCompat's playback status: ".concat(String.valueOf(valueOf2)));
            MediaMetadata metadata = ((MediaSessionCompatHelper) this.f.c.a).a.getMetadata();
            String valueOf3 = String.valueOf(metadata != null ? MediaMetadataCompat.a(metadata) : null);
            String.valueOf(valueOf3).length();
            printWriter.println("sessionCompat's meta data: ".concat(String.valueOf(valueOf3)));
        }
        PlaybackState playbackState = fjVar.a.getPlaybackState();
        if (playbackState != null) {
            List q = GuavaCollectPreconditionsUtil.q(playbackState);
            if (q != null) {
                ArrayList arrayList2 = new ArrayList(q.size());
                for (Object obj : q) {
                    if (obj != null) {
                        PlaybackState.CustomAction customAction2 = (PlaybackState.CustomAction) obj;
                        Bundle m = GuavaCollectPreconditionsUtil.m(customAction2);
                        fu.c(m);
                        customAction = new PlaybackStateCompat.CustomAction(GuavaCollectPreconditionsUtil.p(customAction2), GuavaCollectPreconditionsUtil.o(customAction2), GuavaCollectPreconditionsUtil.b(customAction2), m);
                        customAction.e = customAction2;
                    } else {
                        customAction = null;
                    }
                    arrayList2.add(customAction);
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            Bundle a2 = WorkDataEnumConverters.a(playbackState);
            fu.c(a2);
            PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(GuavaCollectPreconditionsUtil.c(playbackState), GuavaCollectPreconditionsUtil.h(playbackState), GuavaCollectPreconditionsUtil.f(playbackState), GuavaCollectPreconditionsUtil.a(playbackState), GuavaCollectPreconditionsUtil.d(playbackState), 0, GuavaCollectPreconditionsUtil.n(playbackState), GuavaCollectPreconditionsUtil.g(playbackState), arrayList, GuavaCollectPreconditionsUtil.e(playbackState), a2);
            playbackStateCompat.l = playbackState;
            a = playbackStateCompat;
        } else {
            a = null;
        }
        String valueOf22 = String.valueOf(a);
        String.valueOf(valueOf22).length();
        printWriter.println("sessionCompat's playback status: ".concat(String.valueOf(valueOf22)));
        MediaMetadata metadata2 = ((MediaSessionCompatHelper) this.f.c.a).a.getMetadata();
        String valueOf32 = String.valueOf(metadata2 != null ? MediaMetadataCompat.a(metadata2) : null);
        String.valueOf(valueOf32).length();
        printWriter.println("sessionCompat's meta data: ".concat(String.valueOf(valueOf32)));
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void f(ProjectionDevice awoVar) {
        this.f.h(k(getString(R.string.aa_pending)));
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void g(ProjectionDevice awoVar) {
        if (this.g.i().isEmpty()) {
            this.f.h(k(getString(R.string.aa_disconnected)));
        }
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final /* synthetic */ void h(ProjectionSession bblVar) {
    }

    public final void j() {
        this.f.d(false);
        this.f.h(k(getString(R.string.aa_disconnected)));
        this.f.g(null);
    }

    @Override // defpackage.MediaBrowserServiceCompat, android.app.Service
    public final IBinder onBind(Intent intent) {
        this.j = true;
        this.k = intent;
        return intent.getAction().equals("mediaBrowserServiceIntentAction") ? this.i : this.e.a(intent);
    }

    @Override // defpackage.HiltMediaBrowserService, defpackage.MediaBrowserServiceCompat, android.app.Service
    public final void onCreate() {
        super.onCreate();
        MediaSessionCompatCore fuVar = new MediaSessionCompatCore(this);
        this.f = fuVar;
        fuVar.b.m();
        MediaSessionCompat$Token b = this.f.b();
        if (b == null) {
            throw new IllegalArgumentException("Session token may not be null");
        }
        if (this.d != null) {
            throw new IllegalStateException("The session token has already been set");
        }
        this.d = b;
        MediaBrowserServiceCallbacks abiVar = this.e;
        abiVar.d.c.a(new MediaBrowserServiceBindRunnable(abiVar, b));
        this.f.h(k(getString(R.string.aa_disconnected)));
        this.g.n(this);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.g.r(this);
        j();
        this.f.b.c();
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        this.j = false;
        this.k = null;
        return false;
    }
}
