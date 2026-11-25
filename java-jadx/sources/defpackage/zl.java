package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum zl {
    ON_CREATE,
    ON_START,
    ON_RESUME,
    ON_PAUSE,
    ON_STOP,
    ON_DESTROY,
    ON_ANY;

    public static zl a(zm zmVar) {
        zm zmVar2 = zm.DESTROYED;
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

    public static zl b(zm zmVar) {
        zm zmVar2 = zm.DESTROYED;
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

    public final zm c() {
        zm zmVar = zm.DESTROYED;
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
                sb.append(this);
                sb.append(" has no target state");
                throw new IllegalArgumentException(toString().concat(" has no target state"));
        }
    }
}
