package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aqe {
    public View a;
    public Drawable b;
    public List c;

    public final aqf a() {
        if (this.a == null || this.c == null) {
            return new aqf(this);
        }
        throw new RuntimeException("Both searchResultItems and searchResultsView can't be set at the same time");
    }
}
