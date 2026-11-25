package defpackage;

import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class fx {
    public long a;
    public int b;
    public CharSequence c;
    private final List d;
    private int e;
    private long f;
    private long g;
    private float h;
    private long i;
    private long j;
    private Bundle k;

    public fx() {
        this.d = new ArrayList();
        this.j = -1L;
    }

    public final PlaybackStateCompat a() {
        return new PlaybackStateCompat(this.e, this.f, this.g, this.h, this.a, this.b, this.c, this.i, this.d, this.j, this.k);
    }

    public final void b(int i, long j, float f, long j2) {
        this.e = i;
        this.f = j;
        this.i = j2;
        this.h = f;
    }

    public fx(PlaybackStateCompat playbackStateCompat) {
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        this.j = -1L;
        this.e = playbackStateCompat.a;
        this.f = playbackStateCompat.b;
        this.h = playbackStateCompat.d;
        this.i = playbackStateCompat.h;
        this.g = playbackStateCompat.c;
        this.a = playbackStateCompat.e;
        this.b = playbackStateCompat.f;
        this.c = playbackStateCompat.g;
        List list = playbackStateCompat.i;
        if (list != null) {
            arrayList.addAll(list);
        }
        this.j = playbackStateCompat.j;
        this.k = playbackStateCompat.k;
    }
}
