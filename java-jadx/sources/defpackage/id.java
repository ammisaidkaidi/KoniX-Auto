package defpackage;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
class id extends ic {
    public id(ih ihVar, WindowInsets windowInsets) {
        super(ihVar, windowInsets);
    }

    @Override // defpackage.ib, defpackage.ig
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof id)) {
            return false;
        }
        id idVar = (id) obj;
        return Objects.equals(this.a, idVar.a) && Objects.equals(this.b, idVar.b);
    }

    @Override // defpackage.ig
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.ig
    public final gq l() {
        DisplayCutout displayCutout = this.a.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new gq(displayCutout);
    }

    @Override // defpackage.ig
    public final ih m() {
        return ih.k(this.a.consumeDisplayCutout());
    }
}
