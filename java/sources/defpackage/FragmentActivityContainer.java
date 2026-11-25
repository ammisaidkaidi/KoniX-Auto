package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FragmentActivityContainer extends AbstractFragmentContainer {
    public final Activity b;
    public final Context c;
    public final Handler d;
    final FragmentManagerImpl e = new FragmentManagerImpl();

    public FragmentActivityContainer(Activity activity, Context context, Handler handler) {
        this.b = activity;
        this.c = context;
        this.d = handler;
    }

    @Override // defpackage.AbstractFragmentContainer
    public View a(int i) {
        throw null;
    }

    @Override // defpackage.AbstractFragmentContainer
    public boolean b() {
        throw null;
    }
}
