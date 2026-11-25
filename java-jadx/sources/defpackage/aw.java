package defpackage;

import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.session.PlaybackStateCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aw implements Parcelable.Creator {
    private final /* synthetic */ int a;

    public aw(int i) {
        this.a = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d0  */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Bundle bundle = null;
        switch (this.a) {
            case 0:
                return new ax(parcel);
            case 1:
                return new av(parcel);
            case 2:
                return new co(parcel);
            case 3:
                return new cs(parcel);
            case 4:
                return new cv(parcel);
            case 5:
                return new MediaBrowserCompat$MediaItem(parcel);
            case 6:
                Object createFromParcel = MediaDescription.CREATOR.createFromParcel(parcel);
                if (createFromParcel == null) {
                    return null;
                }
                ey eyVar = new ey();
                MediaDescription mediaDescription = (MediaDescription) createFromParcel;
                eyVar.a = ew.i(mediaDescription);
                eyVar.b = ew.h(mediaDescription);
                eyVar.c = ew.g(mediaDescription);
                eyVar.d = ew.f(mediaDescription);
                eyVar.e = ew.a(mediaDescription);
                eyVar.f = ew.d(mediaDescription);
                Bundle e = ew.e(mediaDescription);
                if (e != null) {
                    e = fu.a(e);
                }
                Uri uri = e != null ? (Uri) e.getParcelable("android.support.v4.media.description.MEDIA_URI") : null;
                if (uri != null) {
                    if (!e.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || e.size() != 2) {
                        e.remove("android.support.v4.media.description.MEDIA_URI");
                        e.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                    }
                    eyVar.g = bundle;
                    if (uri == null) {
                        eyVar.h = uri;
                    } else {
                        eyVar.h = ex.a(mediaDescription);
                    }
                    MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(eyVar.a, eyVar.b, eyVar.c, eyVar.d, eyVar.e, eyVar.f, eyVar.g, eyVar.h);
                    mediaDescriptionCompat.a = mediaDescription;
                    return mediaDescriptionCompat;
                }
                bundle = e;
                eyVar.g = bundle;
                if (uri == null) {
                }
                MediaDescriptionCompat mediaDescriptionCompat2 = new MediaDescriptionCompat(eyVar.a, eyVar.b, eyVar.c, eyVar.d, eyVar.e, eyVar.f, eyVar.g, eyVar.h);
                mediaDescriptionCompat2.a = mediaDescription;
                return mediaDescriptionCompat2;
            case 7:
                return new MediaMetadataCompat(parcel);
            case 8:
                return new RatingCompat(parcel.readInt(), parcel.readFloat());
            case 9:
                return new MediaSessionCompat$QueueItem(parcel);
            case 10:
                return new MediaSessionCompat$ResultReceiverWrapper(parcel);
            case 11:
                return new MediaSessionCompat$Token(parcel.readParcelable(null), null);
            case 12:
                return new ParcelableVolumeInfo(parcel);
            case 13:
                return new PlaybackStateCompat(parcel);
            case 14:
                return new PlaybackStateCompat.CustomAction(parcel);
            case 15:
                return new gb(parcel);
            case 16:
                return new iq(parcel);
            case 17:
                return new oi(parcel);
            case 18:
                return new pz(parcel);
            case 19:
                return new sc(parcel);
            default:
                return new se(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ax[i];
            case 1:
                return new av[i];
            case 2:
                return new co[i];
            case 3:
                return new cs[i];
            case 4:
                return new cv[i];
            case 5:
                return new MediaBrowserCompat$MediaItem[i];
            case 6:
                return new MediaDescriptionCompat[i];
            case 7:
                return new MediaMetadataCompat[i];
            case 8:
                return new RatingCompat[i];
            case 9:
                return new MediaSessionCompat$QueueItem[i];
            case 10:
                return new MediaSessionCompat$ResultReceiverWrapper[i];
            case 11:
                return new MediaSessionCompat$Token[i];
            case 12:
                return new ParcelableVolumeInfo[i];
            case 13:
                return new PlaybackStateCompat[i];
            case 14:
                return new PlaybackStateCompat.CustomAction[i];
            case 15:
                return new gb[i];
            case 16:
                return new iq[i];
            case 17:
                return new oi[i];
            case 18:
                return new pz[i];
            case 19:
                return new sc[i];
            default:
                return new se[i];
        }
    }
}
