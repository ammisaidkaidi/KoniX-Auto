package defpackage;

import android.os.Handler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DefaultTaskExecutor extends ViewCompatApi28Statics {
    public final Object a = new Object();
    public final ExecutorService b = Executors.newFixedThreadPool(4, new DiskIoThreadFactory());
    public volatile Handler c;
}
