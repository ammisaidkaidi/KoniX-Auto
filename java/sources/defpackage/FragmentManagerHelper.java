package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentManagerHelper extends FragmentClassLoader {
    final /* synthetic */ FragmentManagerImpl a;

    public FragmentManagerHelper(FragmentManagerImpl crVar) {
        this.a = crVar;
    }

    @Override // defpackage.FragmentClassLoader
    public final AndroidxFragment b(String str) {
        return AndroidxFragment.ad(this.a.j.c, str);
    }
}
