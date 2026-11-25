package com.google.android.projection.protocol;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import defpackage.axr;
import defpackage.clk;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public class MediaPlaybackStatus implements MediaPlaybackStatusCallbacks, clk {
    private final axr a;
    private long mNativeMediaPlaybackStatus;

    public MediaPlaybackStatus(axr axrVar) {
        this.a = axrVar;
    }

    private native int nativeInit(int i, long j);

    private native void nativeShutdown();

    @Override // defpackage.clw
    public final long a() {
        return this.mNativeMediaPlaybackStatus;
    }

    @Override // defpackage.clw
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.clk
    public final boolean c(int i, long j) {
        return nativeInit(i, j) == 0;
    }

    @Override // com.google.android.projection.protocol.MediaPlaybackStatusCallbacks
    public final void mediaPlaybackMetadataCallback(final String str, final String str2, final String str3, final byte[] bArr, String str4, final int i, final int i2) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Song: ".concat(valueOf);
        }
        String valueOf2 = String.valueOf(str2);
        if (valueOf2.length() != 0) {
            "Album: ".concat(valueOf2);
        }
        String valueOf3 = String.valueOf(str3);
        if (valueOf3.length() != 0) {
            "Artist: ".concat(valueOf3);
        }
        String valueOf4 = String.valueOf(str4);
        if (valueOf4.length() != 0) {
            "Playlist: ".concat(valueOf4);
        }
        final axr axrVar = this.a;
        axrVar.a.a.post(new Runnable() { // from class: axq
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                Bitmap decodeByteArray;
                axr axrVar2 = axr.this;
                String str5 = str;
                String str6 = str2;
                String str7 = str3;
                byte[] bArr2 = bArr;
                int i3 = i;
                int i4 = i2;
                axs axsVar = axrVar2.a;
                if (axsVar.c != null) {
                    Bundle bundle = new Bundle();
                    ew.q("android.media.metadata.TITLE", str5, bundle);
                    ew.q("android.media.metadata.ALBUM", str6, bundle);
                    ew.q("android.media.metadata.ARTIST", str7, bundle);
                    Parcelable parcelable = null;
                    boolean z = false;
                    if (bArr2 != null && (decodeByteArray = BitmapFactory.decodeByteArray(bArr2, 0, bArr2.length, null)) != null) {
                        if (MediaMetadataCompat.a.containsKey("android.media.metadata.ART") && ((Integer) MediaMetadataCompat.a.get("android.media.metadata.ART")).intValue() != 2) {
                            throw new IllegalArgumentException("The android.media.metadata.ART key cannot be used to put a Bitmap");
                        }
                        bundle.putParcelable("android.media.metadata.ART", decodeByteArray);
                    }
                    long millis = TimeUnit.SECONDS.toMillis(i3);
                    if (MediaMetadataCompat.a.containsKey("android.media.metadata.DURATION") && ((Integer) MediaMetadataCompat.a.get("android.media.metadata.DURATION")).intValue() != 0) {
                        throw new IllegalArgumentException("The android.media.metadata.DURATION key cannot be used to put a long");
                    }
                    bundle.putLong("android.media.metadata.DURATION", millis);
                    RatingCompat a = i4 > 0 ? RatingCompat.a(5, i4) : RatingCompat.b(5);
                    if (MediaMetadataCompat.a.containsKey("android.media.metadata.RATING") && ((Integer) MediaMetadataCompat.a.get("android.media.metadata.RATING")).intValue() != 3) {
                        throw new IllegalArgumentException("The android.media.metadata.RATING key cannot be used to put a Rating");
                    }
                    if (a.c == null) {
                        if (a.c()) {
                            int i5 = a.a;
                            float f = -1.0f;
                            switch (i5) {
                                case 1:
                                    if (i5 == 1 && a.b == 1.0f) {
                                        z = true;
                                    }
                                    a.c = ez.d(z);
                                    break;
                                case 2:
                                    if (i5 == 2 && a.b == 1.0f) {
                                        z = true;
                                    }
                                    a.c = ez.g(z);
                                    break;
                                case 3:
                                case 4:
                                case 5:
                                    switch (i5) {
                                        case 3:
                                        case 4:
                                        case 5:
                                            if (a.c()) {
                                                f = a.b;
                                                break;
                                            }
                                            break;
                                    }
                                    a.c = ez.f(i5, f);
                                    break;
                                case 6:
                                    if (i5 == 6 && a.c()) {
                                        f = a.b;
                                    }
                                    a.c = ez.e(f);
                                    break;
                            }
                        } else {
                            a.c = ez.h(a.a);
                        }
                    }
                    parcelable = a.c;
                    bundle.putParcelable("android.media.metadata.RATING", parcelable);
                    axsVar.c.g(new MediaMetadataCompat(bundle));
                }
            }
        });
    }

    @Override // com.google.android.projection.protocol.MediaPlaybackStatusCallbacks
    public final void mediaPlaybackStatusCallback(final int i, String str, final int i2, final boolean z, final boolean z2, final boolean z3) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Source: ".concat(valueOf);
        }
        final axr axrVar = this.a;
        axrVar.a.a.post(new Runnable() { // from class: axp
            @Override // java.lang.Runnable
            public final void run() {
                long j;
                int i3;
                axr axrVar2 = axr.this;
                int i4 = i;
                int i5 = i2;
                boolean z4 = z;
                boolean z5 = z2;
                boolean z6 = z3;
                axs axsVar = axrVar2.a;
                fu fuVar = axsVar.c;
                if (fuVar != null) {
                    switch (i4) {
                        case 1:
                            j = 4;
                            break;
                        case 2:
                            j = 3;
                            break;
                        case 3:
                            j = 5;
                            break;
                        default:
                            j = -1;
                            break;
                    }
                    fx fxVar = axsVar.b;
                    switch (i4) {
                        case 1:
                            i3 = 1;
                            break;
                        case 2:
                            i3 = 3;
                            break;
                        case 3:
                            i3 = 2;
                            break;
                        default:
                            i3 = 0;
                            break;
                    }
                    long millis = TimeUnit.SECONDS.toMillis(i5);
                    int i6 = 1;
                    fxVar.b(i3, millis, i4 == 2 ? 1.0f : 0.0f, SystemClock.elapsedRealtime());
                    fxVar.a = j | 48;
                    fuVar.h(fxVar.a());
                    axsVar.c.b.j(z4 ? 1 : 0);
                    if (!z5) {
                        i6 = 0;
                    } else if (true != z6) {
                        i6 = 2;
                    }
                    axsVar.c.b.i(i6);
                }
            }
        });
    }
}
