package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class ExtensionSchemaBase {
    public static final ExtensionSchemaBase a = new ExtensionSchemaLiteImpl();
    public static final ExtensionSchemaBase b = new ExtensionSchemaFullImpl();

    public abstract List b(Object obj, long j);

    public abstract void c(Object obj, long j);

    public abstract void d(Object obj, Object obj2, long j);
}
