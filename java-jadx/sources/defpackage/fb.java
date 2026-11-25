package defpackage;

import android.media.AudioAttributes;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media.AudioAttributesCompat;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public class fb extends Binder implements fc {
    private final WeakReference a;

    public fb(fg fgVar) {
        attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        this.a = new WeakReference(fgVar);
    }

    @Override // defpackage.fc
    public final void a(PlaybackStateCompat playbackStateCompat) {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // defpackage.fc
    public final void b(int i) {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    @Override // defpackage.fc
    public final void c(int i) {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    public void d() {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    public void e(ParcelableVolumeInfo parcelableVolumeInfo) {
        if (((fg) this.a.get()) != null) {
            if (parcelableVolumeInfo != null) {
                int i = parcelableVolumeInfo.b;
                int i2 = AudioAttributesCompat.b;
                AudioAttributes.Builder builder = new AudioAttributes.Builder();
                builder.setLegacyStreamType(i);
                builder.build();
            }
            throw null;
        }
    }

    public void f() {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    public void g() {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    public void h() {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    public void i() {
        if (((fg) this.a.get()) != null) {
            throw null;
        }
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                parcel.readString();
                if (parcel.readInt() != 0) {
                }
                if (((fg) this.a.get()) == null) {
                    return true;
                }
                throw null;
            case 2:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                d();
                return true;
            case 3:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                a(parcel.readInt() != 0 ? (PlaybackStateCompat) PlaybackStateCompat.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 4:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                }
                g();
                return true;
            case 5:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                parcel.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR);
                h();
                return true;
            case 6:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                }
                i();
                return true;
            case 7:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (parcel.readInt() != 0) {
                }
                f();
                return true;
            case 8:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                e(parcel.readInt() != 0 ? (ParcelableVolumeInfo) ParcelableVolumeInfo.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 9:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                b(parcel.readInt());
                return true;
            case 10:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                parcel.readInt();
                return true;
            case 11:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                parcel.readInt();
                if (((fg) this.a.get()) == null) {
                    return true;
                }
                throw null;
            case 12:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                c(parcel.readInt());
                return true;
            case 13:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                if (((fg) this.a.get()) == null) {
                    return true;
                }
                throw null;
            case 1598968902:
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
