package androidx.savedstate;

import android.os.Bundle;
import defpackage.aet;
import defpackage.aex;
import defpackage.zl;
import defpackage.zo;
import defpackage.zq;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Recreator implements zo {
    private final aex a;

    public Recreator(aex aexVar) {
        this.a = aexVar;
    }

    @Override // defpackage.zo
    public final void a(zq zqVar, zl zlVar) {
        if (zlVar != zl.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        zqVar.C().d(this);
        Bundle a = this.a.D().a("androidx.savedstate.Restarter");
        if (a == null) {
            return;
        }
        ArrayList<String> stringArrayList = a.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            String str = stringArrayList.get(i);
            try {
                Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(aet.class);
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        ((aet) declaredConstructor.newInstance(new Object[0])).a();
                    } catch (Exception e) {
                        throw new RuntimeException("Failed to instantiate ".concat(String.valueOf(str)), e);
                    }
                } catch (NoSuchMethodException e2) {
                    throw new IllegalStateException("Class" + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                }
            } catch (ClassNotFoundException e3) {
                throw new RuntimeException("Class " + str + " wasn't found", e3);
            }
        }
    }
}
