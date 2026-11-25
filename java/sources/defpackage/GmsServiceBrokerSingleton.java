package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GmsServiceBrokerSingleton {
    public static final Object a = new Object();
    public static volatile GmsServiceBrokerSingleton b;

    public GmsServiceBrokerSingleton() {
        new ConcurrentHashMap();
    }

    public static void a(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e) {
        }
    }
}
