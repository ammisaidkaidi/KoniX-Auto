package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.PlaybackStateCompat;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
class AapMediaSessionImplBase implements MediaSessionImplInterface {
    final MediaSession a;
    final MediaSessionCompat$Token b;
    final Object c = new Object();
    boolean d = false;
    final RemoteCallbackList e = new RemoteCallbackList();
    PlaybackStateCompat f;
    MediaMetadataCompat g;
    int h;
    int i;
    MediaSessionCompatInnerHelper j;

    public AapMediaSessionImplBase(Context context) {
        MediaSession n = n(context);
        this.a = n;
        this.b = new MediaSessionCompat$Token(n.getSessionToken(), new MediaSessionAidlStub(this));
        n.setFlags(3);
    }

    @Override // defpackage.MediaSessionImplInterface
    public final MediaSessionCompatInnerHelper a() {
        MediaSessionCompatInnerHelper fnVar;
        synchronized (this.c) {
            fnVar = this.j;
        }
        return fnVar;
    }

    @Override // defpackage.MediaSessionImplInterface
    public final MediaSessionCompat$Token b() {
        return this.b;
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void c() {
        this.d = true;
        this.e.kill();
        this.a.setCallback(null);
        this.a.release();
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void d(boolean z) {
        this.a.setActive(IcuMessageFormat);
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void e(MediaSessionCompatInnerHelper fnVar, Handler handler) {
        synchronized (this.c) {
            this.j = fnVar;
            MediaSessionCallbackHandler flVar = null;
            this.a.setCallback(fnVar == null ? null : fnVar.b, handler);
            if (fnVar != null) {
                synchronized (fnVar.a) {
                    fnVar.c = new WeakReference(this);
                    MediaSessionCallbackHandler flVar2 = fnVar.d;
                    if (flVar2 != null) {
                        flVar2.removeCallbacksAndMessages(null);
                    }
                    if (handler != null) {
                        flVar = new MediaSessionCallbackHandler(fnVar, handler.getLooper());
                    }
                    fnVar.d = flVar;
                }
            }
        }
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void f(PendingIntent pendingIntent) {
        this.a.setMediaButtonReceiver(pendingIntent);
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void h(PlaybackStateCompat playbackStateCompat) {
        this.f = playbackStateCompat;
        synchronized (this.c) {
            for (int beginBroadcast = this.e.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    ((MediaControllerCallbackAidlInterface) this.e.getBroadcastItem(beginBroadcast)).a(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.e.finishBroadcast();
        }
        MediaSession mediaSession = this.a;
        if (playbackStateCompat.l == null) {
            PlaybackState.Builder i = GuavaCollectPreconditionsUtil.i();
            GuavaCollectPreconditionsUtil.x(i, playbackStateCompat.a, playbackStateCompat.b, playbackStateCompat.d, playbackStateCompat.h);
            GuavaCollectPreconditionsUtil.u(i, playbackStateCompat.c);
            GuavaCollectPreconditionsUtil.s(i, playbackStateCompat.e);
            GuavaCollectPreconditionsUtil.v(i, playbackStateCompat.g);
            for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.i) {
                PlaybackState.CustomAction customAction2 = customAction.e;
                if (customAction2 == null) {
                    PlaybackState.CustomAction.Builder j = GuavaCollectPreconditionsUtil.j(customAction.a, customAction.b, customAction.c);
                    GuavaCollectPreconditionsUtil.w(j, customAction.d);
                    customAction2 = GuavaCollectPreconditionsUtil.k(ProtoMessageTwoIntsAndFlagValue);
                }
                GuavaCollectPreconditionsUtil.r(i, customAction2);
            }
            GuavaCollectPreconditionsUtil.t(i, playbackStateCompat.j);
            WorkDataEnumConverters.b(i, playbackStateCompat.k);
            playbackStateCompat.l = GuavaCollectPreconditionsUtil.l(NavInstructionTypeEnum);
        }
        mediaSession.setPlaybackState(playbackStateCompat.l);
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void i(int i) {
        if (this.h != i) {
            this.h = i;
            synchronized (this.c) {
                for (int beginBroadcast = this.e.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        ((MediaControllerCallbackAidlInterface) this.e.getBroadcastItem(beginBroadcast)).b(NavInstructionTypeEnum);
                    } catch (RemoteException e) {
                    }
                }
                this.e.finishBroadcast();
            }
        }
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void j(int i) {
        if (this.i != i) {
            this.i = i;
            synchronized (this.c) {
                for (int beginBroadcast = this.e.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        ((MediaControllerCallbackAidlInterface) this.e.getBroadcastItem(beginBroadcast)).c(NavInstructionTypeEnum);
                    } catch (RemoteException e) {
                    }
                }
                this.e.finishBroadcast();
            }
        }
    }

    @Override // defpackage.MediaSessionImplInterface
    public final boolean k() {
        return this.a.isActive();
    }

    @Override // defpackage.MediaSessionImplInterface
    public void l() {
        synchronized (this.c) {
        }
    }

    @Override // defpackage.MediaSessionImplInterface
    public void m() {
        throw null;
    }

    public MediaSession n(Context context) {
        return new MediaSession(context, "AAPMediaSession");
    }

    @Override // defpackage.MediaSessionImplInterface
    public final void g(MediaMetadataCompat mediaMetadataCompat) {
        MediaMetadata mediaMetadata;
        this.g = mediaMetadataCompat;
        MediaSession mediaSession = this.a;
        if (mediaMetadataCompat == null) {
            mediaMetadata = null;
        } else {
            if (mediaMetadataCompat.c == null) {
                Parcel obtain = Parcel.obtain();
                mediaMetadataCompat.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                mediaMetadataCompat.c = (MediaMetadata) MediaMetadata.CREATOR.createFromParcel(obtain);
                obtain.recycle();
            }
            mediaMetadata = mediaMetadataCompat.c;
        }
        mediaSession.setMetadata(mediaMetadata);
    }
}
