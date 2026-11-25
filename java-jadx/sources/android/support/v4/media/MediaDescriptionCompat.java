package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aw;
import defpackage.ew;
import defpackage.ex;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator CREATOR = new aw(6);
    public MediaDescription a;
    private final String b;
    private final CharSequence c;
    private final CharSequence d;
    private final CharSequence e;
    private final Bitmap f;
    private final Uri g;
    private final Bundle h;
    private final Uri i;

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.b = str;
        this.c = charSequence;
        this.d = charSequence2;
        this.e = charSequence3;
        this.f = bitmap;
        this.g = uri;
        this.h = bundle;
        this.i = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.c) + ", " + ((Object) this.d) + ", " + ((Object) this.e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        MediaDescription mediaDescription = this.a;
        if (mediaDescription == null) {
            MediaDescription.Builder b = ew.b();
            ew.n(b, this.b);
            ew.p(b, this.c);
            ew.o(b, this.d);
            ew.j(b, this.e);
            ew.l(b, this.f);
            ew.m(b, this.g);
            ew.k(b, this.h);
            ex.b(b, this.i);
            mediaDescription = ew.c(b);
            this.a = mediaDescription;
        }
        mediaDescription.writeToParcel(parcel, i);
    }
}
