package defpackage;

import java.lang.reflect.Field;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ReflectiveFieldAccessor {
    public final Field a;

    public ReflectiveFieldAccessor(Field field) {
        this.a = field;
        field.setAccessible(true);
    }

    final void a(Object obj, Object obj2) {
        try {
            this.a.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new AssertionError(ProtoFlagValueMessage);
        }
    }
}
