package defpackage;

import android.app.Activity;
import android.app.Application;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StingActivityComponentManager implements StingComponentHolder {
    protected final Activity a;
    private volatile Object b;
    private final Object c = new Object();
    private final StingComponentHolder d;

    public StingActivityComponentManager(Activity activity) {
        this.a = activity;
        this.d = new StingActivityComponentDelegate((ComponentActivity) activity);
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.b == null) {
            synchronized (this.c) {
                if (this.b == null) {
                    if (!(this.a.getApplication() instanceof StingComponentHolder)) {
                        if (Application.class.equals(this.a.getApplication().getClass())) {
                            throw new IllegalStateException("Sting Activity must be attached to an @Sting Application. Did you forget to specify your Application's class name in your manifest'IcuMessageArgTypeHolder <application />'s android:name attribute?");
                        }
                        String valueOf = String.valueOf(this.a.getApplication().getClass());
                        String.valueOf(valueOf).length();
                        throw new IllegalStateException("Sting Activity must be attached to an @Sting Application. Found: ".concat(String.valueOf(valueOf)));
                    }
                    this.b = new DaggerSingleProvider(((StingActivityComponentInterface) CommonObjectsAndPreconditionsUtil.s(this.d, StingActivityComponentInterface.class)).b().a);
                }
            }
        }
        return this.b;
    }
}
