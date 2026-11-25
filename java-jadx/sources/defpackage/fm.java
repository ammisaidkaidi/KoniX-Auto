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
final class fm extends MediaSession.Callback {
    final /* synthetic */ fn a;

    public fm(fn fnVar) {
        this.a = fnVar;
    }

    private final fp a() {
        fp fpVar;
        synchronized (this.a.a) {
            fpVar = (fp) this.a.c.get();
        }
        if (fpVar == null || this.a != fpVar.a()) {
            return null;
        }
        return fpVar;
    }

    private static final void b(fo foVar) {
        foVar.l();
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        agc agcVar;
        fp a = a();
        if (a == null) {
            return;
        }
        fu.c(bundle);
        try {
            if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                Bundle bundle2 = new Bundle();
                MediaSessionCompat$Token mediaSessionCompat$Token = a.b;
                ff a2 = mediaSessionCompat$Token.a();
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
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onCustomAction(String str, Bundle bundle) {
        fp a = a();
        if (a == null) {
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
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onFastForward() {
        fp a = a();
        if (a == null) {
            return;
        }
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        fp a = a();
        if (a == null) {
            return false;
        }
        b(a);
        return super.onMediaButtonEvent(intent);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPause() {
        fp a = a();
        if (a == null) {
            return;
        }
        this.a.a();
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlay() {
        fp a = a();
        if (a == null) {
            return;
        }
        this.a.b();
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromMediaId(String str, Bundle bundle) {
        fp a = a();
        if (a == null) {
            return;
        }
        fu.c(bundle);
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromSearch(String str, Bundle bundle) {
        fp a = a();
        if (a == null) {
            return;
        }
        fu.c(bundle);
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromUri(Uri uri, Bundle bundle) {
        fp a = a();
        if (a == null) {
            return;
        }
        fu.c(bundle);
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepare() {
        fp a = a();
        if (a == null) {
            return;
        }
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromMediaId(String str, Bundle bundle) {
        fp a = a();
        if (a == null) {
            return;
        }
        fu.c(bundle);
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromSearch(String str, Bundle bundle) {
        fp a = a();
        if (a == null) {
            return;
        }
        fu.c(bundle);
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromUri(Uri uri, Bundle bundle) {
        fp a = a();
        if (a == null) {
            return;
        }
        fu.c(bundle);
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onRewind() {
        fp a = a();
        if (a == null) {
            return;
        }
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSeekTo(long j) {
        fp a = a();
        if (a == null) {
            return;
        }
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSetPlaybackSpeed(float f) {
        fp a = a();
        if (a == null) {
            return;
        }
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSetRating(Rating rating) {
        RatingCompat b;
        fp a = a();
        if (a == null) {
            return;
        }
        if (rating != null) {
            int c = ez.c(rating);
            if (ez.j(rating)) {
                switch (c) {
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
                b = RatingCompat.b(c);
            }
            b.c = rating;
        }
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToNext() {
        fp a = a();
        if (a == null) {
            return;
        }
        this.a.c();
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToPrevious() {
        fp a = a();
        if (a == null) {
            return;
        }
        this.a.d();
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToQueueItem(long j) {
        fp a = a();
        if (a == null) {
            return;
        }
        b(a);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onStop() {
        fp a = a();
        if (a == null) {
            return;
        }
        this.a.e();
        b(a);
    }
}
