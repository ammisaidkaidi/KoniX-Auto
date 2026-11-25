package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum LifecycleEvent {
    ON_CREATE,
    ON_START,
    ON_RESUME,
    ON_PAUSE,
    ON_STOP,
    ON_DESTROY,
    ON_ANY;

    public static LifecycleEvent a(LifecycleState zmVar) {
        LifecycleState zmVar2 = zm.DESTROYED;
        switch (zmVar.ordinal()) {
            case 2:
                return ON_DESTROY;
            case 3:
                return ON_STOP;
            case 4:
                return ON_PAUSE;
            default:
                return null;
        }
    }

    public static LifecycleEvent b(LifecycleState zmVar) {
        LifecycleState zmVar2 = zm.DESTROYED;
        switch (zmVar.ordinal()) {
            case 1:
                return ON_CREATE;
            case 2:
                return ON_START;
            case 3:
                return ON_RESUME;
            default:
                return null;
        }
    }

    public final LifecycleState c() {
        LifecycleState zmVar = zm.DESTROYED;
        switch (this) {
            case ON_CREATE:
            case ON_STOP:
                return zm.CREATED;
            case ON_START:
            case ON_PAUSE:
                return zm.STARTED;
            case ON_RESUME:
                return zm.RESUMED;
            case ON_DESTROY:
                return zm.DESTROYED;
            default:
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append(this);
                StaggeredGridLayoutParams.append(" has no target state");
                throw new IllegalArgumentException(toString().concat(" has no target state"));
        }
    }
}
