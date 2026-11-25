package defpackage;

import android.os.SystemClock;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StorageFileHandle implements Closeable {
    static final StorageFileHandle a = new StorageFileHandle("", SystemClock.elapsedRealtime(), -1, Thread.currentThread().getId(), 3);
    String b;
    public final long c;
    long d;
    final long e;
    public volatile List f;
    final int g;
    final int h;

    public StorageFileHandle(String str, long j, long j2, long j3, int i) {
        this.b = str;
        this.g = 1;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.h = i;
        if (NavInstructionTypeEnum == 1) {
            this.f = Collections.synchronizedList(new ArrayList());
        } else {
            this.f = Collections.emptyList();
        }
    }

    public final long a() {
        long j = this.d;
        if (ProtoMessageTwoIntsAndFlagValue == -1) {
            return -1L;
        }
        return j - this.c;
    }

    final void b(List list) {
        if (this.f == Collections.EMPTY_LIST) {
            this.f = new ArrayList();
        }
        if (this.f != null) {
            this.f.addAll(list);
        }
    }

    final boolean c() {
        return this.h == 1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Tracer.a(this);
    }

    public StorageFileHandle(String str, long j, int i) {
        this(str, SystemClock.elapsedRealtime(), -1L, j, i);
    }
}
