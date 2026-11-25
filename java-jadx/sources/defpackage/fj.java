package defpackage;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import androidx.versionedparcelable.ParcelImpl;
import defpackage.aga;
import defpackage.agc;
import defpackage.fd;
import defpackage.ff;
import defpackage.fg;
import defpackage.fi;
import defpackage.fj;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class fj implements fh {
    public final MediaController a;
    public final Object b = new Object();
    public final List c = new ArrayList();
    public final HashMap d = new HashMap();
    public final MediaSessionCompat$Token e;

    public fj(Context context, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.e = mediaSessionCompat$Token;
        MediaController mediaController = new MediaController(context, (MediaSession.Token) mediaSessionCompat$Token.b);
        this.a = mediaController;
        if (mediaSessionCompat$Token.a() == null) {
            mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ResultReceiver(this) { // from class: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver
                private WeakReference a;

                {
                    super(null);
                    this.a = new WeakReference(this);
                }

                @Override // android.os.ResultReceiver
                protected final void onReceiveResult(int i, Bundle bundle) {
                    ff fdVar;
                    agc agcVar;
                    fj fjVar = (fj) this.a.get();
                    if (fjVar == null || bundle == null) {
                        return;
                    }
                    synchronized (fjVar.b) {
                        MediaSessionCompat$Token mediaSessionCompat$Token2 = fjVar.e;
                        IBinder binder = bundle.getBinder("android.support.v4.media.session.EXTRA_BINDER");
                        if (binder == null) {
                            fdVar = null;
                        } else {
                            IInterface queryLocalInterface = binder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
                            fdVar = (queryLocalInterface == null || !(queryLocalInterface instanceof ff)) ? new fd(binder) : (ff) queryLocalInterface;
                        }
                        synchronized (mediaSessionCompat$Token2.a) {
                            mediaSessionCompat$Token2.c = fdVar;
                        }
                        MediaSessionCompat$Token mediaSessionCompat$Token3 = fjVar.e;
                        try {
                            Bundle bundle2 = (Bundle) bundle.getParcelable("android.support.v4.media.session.SESSION_TOKEN2");
                            if (bundle2 == null) {
                                agcVar = null;
                            } else {
                                bundle2.setClassLoader(aga.class.getClassLoader());
                                Parcelable parcelable = bundle2.getParcelable("a");
                                if (!(parcelable instanceof ParcelImpl)) {
                                    throw new IllegalArgumentException("Invalid parcel");
                                }
                                agcVar = ((ParcelImpl) parcelable).a;
                            }
                        } catch (RuntimeException e) {
                            agcVar = null;
                        }
                        synchronized (mediaSessionCompat$Token3.a) {
                            mediaSessionCompat$Token3.d = agcVar;
                        }
                        if (fjVar.e.a() != null) {
                            Iterator it = fjVar.c.iterator();
                            if (it.hasNext()) {
                                fg fgVar = (fg) it.next();
                                fi fiVar = new fi(fgVar);
                                fjVar.d.put(fgVar, fiVar);
                                fgVar.a = fiVar;
                                try {
                                    fjVar.e.a().b(fiVar);
                                    throw null;
                                } catch (RemoteException e2) {
                                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e2);
                                }
                            }
                            fjVar.c.clear();
                        }
                    }
                }
            });
        }
    }
}
