package defpackage;

import android.content.Intent;
import android.media.Rating;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import androidx.versionedparcelable.ParcelImpl;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaSessionCompatCallback extends MediaSession.Callback {
    final /* synthetic */ MediaSessionCompatInnerHelper a;

    public MediaSessionCompatCallback(MediaSessionCompatInnerHelper fnVar) {
        this.a = fnVar;
    }

    private final AapMediaSessionImplBase a() {
        AapMediaSessionImplBase fpVar;
        synchronized (this.a.a) {
            fpVar = (AapMediaSessionImplBase) this.a.c.get();
        }
        if (fpVar == null || this.a != fpVar.a()) {
            return null;
        }
        return fpVar;
    }

    private static final void b(MediaSessionImplInterface foVar) {
        foVar.l();
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        VersionedParcelableMarker agcVar;
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        try {
            if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                Bundle bundle2 = new Bundle();
                MediaSessionCompat$Token mediaSessionCompat$Token = a.b;
                MediaSessionAidlInterface a2 = mediaSessionCompat$Token.a();
                bundle2.putBinder("android.support.v4.media.session.EXTRA_BINDER", a2 == null ? null : a2.asBinder());
                synchronized (mediaSessionCompat$Token.a) {
                    agcVar = mediaSessionCompat$Token.d;
                }
                if (agcVar == null) {
                    bundle2.putParcelable("android.support.v4.media.session.SESSION_TOKEN2", null);
                } else {
                    Bundle bundle3 = new Bundle();
                    bundle3.putParcelable("a", new ParcelImpl(agcVar));
                    bundle2.putParcelable("android.support.v4.media.session.SESSION_TOKEN2", bundle3);
                }
                resultReceiver.send(0, bundle2);
            } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
            } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX");
            } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
            } else {
                str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT");
            }
        } catch (BadParcelableException e) {
            Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onCustomAction(String str, Bundle bundle) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        try {
            if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                fu.c(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
            } else if (!str.equals("android.support.v4.media.session.action.PREPARE")) {
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                    bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                    fu.c(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                    bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                    fu.c(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                    fu.c(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                    bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED");
                } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                    bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE");
                } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                    bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE");
                } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                    fu.c(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                    bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f);
                }
            }
        } catch (BadParcelableException e) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onFastForward() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return false;
        }
        b(SingleStringProtoMessage);
        return super.onMediaButtonEvent(intent);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPause() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        this.a.a();
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlay() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        this.a.b();
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromMediaId(String str, Bundle bundle) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromSearch(String str, Bundle bundle) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromUri(Uri uri, Bundle bundle) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepare() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromMediaId(String str, Bundle bundle) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromSearch(String str, Bundle bundle) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromUri(Uri uri, Bundle bundle) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        fu.c(bundle);
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onRewind() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSeekTo(long j) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSetPlaybackSpeed(float f) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSetRating(Rating rating) {
        RatingCompat b;
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        if (rating != null) {
            int c = ez.c(rating);
            if (ez.j(rating)) {
                switch (PhenotypeFlagMessage) {
                    case 1:
                        b = new RatingCompat(1, true != ez.i(rating) ? 0.0f : 1.0f);
                        break;
                    case 2:
                        b = new RatingCompat(2, true != ez.k(rating) ? 0.0f : 1.0f);
                        break;
                    case 3:
                    case 4:
                    case 5:
                        b = RatingCompat.a(c, ez.b(rating));
                        break;
                    case 6:
                        float a2 = ez.a(rating);
                        if (a2 >= 0.0f && a2 <= 100.0f) {
                            b = new RatingCompat(6, a2);
                            break;
                        } else {
                            Log.e("Rating", "Invalid percentage-based rating value");
                            b = null;
                            break;
                        }
                        break;
                }
            } else {
                b = RatingCompat.b(PhenotypeFlagMessage);
            }
            b.c = rating;
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToNext() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        this.a.c();
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToPrevious() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        this.a.d();
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToQueueItem(long j) {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        b(SingleStringProtoMessage);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onStop() {
        AapMediaSessionImplBase a = a();
        if (SingleStringProtoMessage == null) {
            return;
        }
        this.a.e();
        b(SingleStringProtoMessage);
    }
}
