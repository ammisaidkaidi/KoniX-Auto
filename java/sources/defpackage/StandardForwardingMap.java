package defpackage;

import java.io.Serializable;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class StandardForwardingMap extends ForwardingMapBase implements Serializable {
    private static final long serialVersionUID = 0;
    final transient ImmutableMapBase b;
    final transient int c;

    public StandardForwardingMap(ImmutableMapBase cqkVar, int i) {
        this.b = cqkVar;
        this.c = i;
    }

    @Override // defpackage.ForwardingMapBase, defpackage.MapProvider
    public final /* synthetic */ Map a() {
        return this.b;
    }
}
