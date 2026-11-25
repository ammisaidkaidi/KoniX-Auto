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
import defpackage.abc;
import defpackage.abf;
import defpackage.abi;
import defpackage.abo;
import defpackage.awo;
import defpackage.axm;
import defpackage.axo;
import defpackage.bag;
import defpackage.bah;
import defpackage.bbl;
import defpackage.ckb;
import defpackage.csx;
import defpackage.csz;
import defpackage.fh;
import defpackage.fj;
import defpackage.fk;
import defpackage.fu;
import defpackage.fv;
import defpackage.fw;
import defpackage.fx;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MediaBrowserService extends axm implements bag {
    private static final csz h = csz.g("com/google/android/apps/auto/aareceiver/media/MediaBrowserService");
    public fu f;
    public bah g;
    private final IBinder i = new axo(this);
    private boolean j;
    private Intent k;

    public static void i(bbl bblVar, int i) {
        bblVar.c(ckb.DISPLAY_TYPE_MAIN, new KeyEvent(0, i));
        bblVar.c(ckb.DISPLAY_TYPE_MAIN, new KeyEvent(1, i));
    }

    private static PlaybackStateCompat k(String str) {
        fx fxVar = new fx();
        fxVar.b = 1;
        fxVar.c = str;
        return fxVar.a();
    }

    @Override // defpackage.abz
    public final void aQ(abo aboVar) {
        aboVar.b(new ArrayList());
    }

    @Override // defpackage.abz
    public final abc b(String str) {
        try {
            if ((getApplicationContext().getPackageManager().getApplicationInfo(str, 0).flags & 1) != 0) {
                return new abc(null);
            }
            ((csx) h.c().h("com/google/android/apps/auto/aareceiver/media/MediaBrowserService", "onGetRoot", 132, "MediaBrowserService.java")).p("Connection to media browser service is rejected for %s", str);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            ((csx) ((csx) h.b().g(e)).h("com/google/android/apps/auto/aareceiver/media/MediaBrowserService", "onGetRoot", 137, "MediaBrowserService.java")).p("%s is not found.", str);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x016a  */
    @Override // defpackage.abz, android.app.Service
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
        fu fuVar = this.f;
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
        fk fkVar = this.f.c;
        if (fkVar == null) {
            printWriter.println("session compat's controller is null.");
            return;
        }
        fh fhVar = fkVar.a;
        fj fjVar = (fj) fhVar;
        if (fjVar.e.a() != null) {
            try {
                a = ((fj) fhVar).e.a().a();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
            }
            String valueOf2 = String.valueOf(a);
            String.valueOf(valueOf2).length();
            printWriter.println("sessionCompat's playback status: ".concat(String.valueOf(valueOf2)));
            MediaMetadata metadata = ((fj) this.f.c.a).a.getMetadata();
            String valueOf3 = String.valueOf(metadata != null ? MediaMetadataCompat.a(metadata) : null);
            String.valueOf(valueOf3).length();
            printWriter.println("sessionCompat's meta data: ".concat(String.valueOf(valueOf3)));
        }
        PlaybackState playbackState = fjVar.a.getPlaybackState();
        if (playbackState != null) {
            List q = fv.q(playbackState);
            if (q != null) {
                ArrayList arrayList2 = new ArrayList(q.size());
                for (Object obj : q) {
                    if (obj != null) {
                        PlaybackState.CustomAction customAction2 = (PlaybackState.CustomAction) obj;
                        Bundle m = fv.m(customAction2);
                        fu.c(m);
                        customAction = new PlaybackStateCompat.CustomAction(fv.p(customAction2), fv.o(customAction2), fv.b(customAction2), m);
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
            Bundle a2 = fw.a(playbackState);
            fu.c(a2);
            PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(fv.c(playbackState), fv.h(playbackState), fv.f(playbackState), fv.a(playbackState), fv.d(playbackState), 0, fv.n(playbackState), fv.g(playbackState), arrayList, fv.e(playbackState), a2);
            playbackStateCompat.l = playbackState;
            a = playbackStateCompat;
        } else {
            a = null;
        }
        String valueOf22 = String.valueOf(a);
        String.valueOf(valueOf22).length();
        printWriter.println("sessionCompat's playback status: ".concat(String.valueOf(valueOf22)));
        MediaMetadata metadata2 = ((fj) this.f.c.a).a.getMetadata();
        String valueOf32 = String.valueOf(metadata2 != null ? MediaMetadataCompat.a(metadata2) : null);
        String.valueOf(valueOf32).length();
        printWriter.println("sessionCompat's meta data: ".concat(String.valueOf(valueOf32)));
    }

    @Override // defpackage.bag
    public final void f(awo awoVar) {
        this.f.h(k(getString(R.string.aa_pending)));
    }

    @Override // defpackage.bag
    public final void g(awo awoVar) {
        if (this.g.i().isEmpty()) {
            this.f.h(k(getString(R.string.aa_disconnected)));
        }
    }

    @Override // defpackage.bag
    public final /* synthetic */ void h(bbl bblVar) {
    }

    public final void j() {
        this.f.d(false);
        this.f.h(k(getString(R.string.aa_disconnected)));
        this.f.g(null);
    }

    @Override // defpackage.abz, android.app.Service
    public final IBinder onBind(Intent intent) {
        this.j = true;
        this.k = intent;
        return intent.getAction().equals("mediaBrowserServiceIntentAction") ? this.i : this.e.a(intent);
    }

    @Override // defpackage.axm, defpackage.abz, android.app.Service
    public final void onCreate() {
        super.onCreate();
        fu fuVar = new fu(this);
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
        abi abiVar = this.e;
        abiVar.d.c.a(new abf(abiVar, b));
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
