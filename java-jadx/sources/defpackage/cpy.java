package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cpy extends cqk implements Map, j$.util.Map {
    public abstract cpy a();

    @Override // defpackage.cqk
    public final /* bridge */ /* synthetic */ cqa b() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.cqk, java.util.Map, j$.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final cqw values() {
        return a().keySet();
    }

    @Override // defpackage.cqk
    Object writeReplace() {
        return new cpx(this);
    }
}
