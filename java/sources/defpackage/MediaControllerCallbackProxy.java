package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.support.v4.media.session.PlaybackStateCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaControllerCallbackProxy implements MediaControllerCallbackAidlInterface {
    private final IBinder a;

    public MediaControllerCallbackProxy(IBinder iBinder) {
        this.a = iBinder;
    }

    @Override // defpackage.MediaControllerCallbackAidlInterface
    public final void a(PlaybackStateCompat playbackStateCompat) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            obtain.writeInt(1);
            playbackStateCompat.writeToParcel(obtain, 0);
            this.a.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }

    @Override // defpackage.MediaControllerCallbackAidlInterface
    public final void b(int i) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            obtain.writeInt(NavInstructionTypeEnum);
            this.a.transact(9, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // defpackage.MediaControllerCallbackAidlInterface
    public final void c(int i) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            obtain.writeInt(NavInstructionTypeEnum);
            this.a.transact(12, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
