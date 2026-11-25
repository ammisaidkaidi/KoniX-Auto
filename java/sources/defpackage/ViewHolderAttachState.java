package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ViewHolderAttachState {
    public static final SimpleObjectPool d = new SimpleObjectPool(20);
    public int a;
    public ItemViewTypeHolder b;
    public ItemViewTypeHolder c;

    private ViewHolderAttachState() {
    }

    public static ViewHolderAttachState a() {
        ViewHolderAttachState szVar = (ViewHolderAttachState) d.a();
        return szVar == null ? new ViewHolderAttachState() : szVar;
    }

    public static void b(ViewHolderAttachState szVar) {
        szVar.a = 0;
        szVar.b = null;
        szVar.c = null;
        d.b(szVar);
    }
}
