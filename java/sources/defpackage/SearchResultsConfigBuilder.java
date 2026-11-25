package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SearchResultsConfigBuilder {
    public View a;
    public Drawable b;
    public List c;

    public final SearchResultsConfig a() {
        if (this.a == null || this.c == null) {
            return new SearchResultsConfig(this);
        }
        throw new RuntimeException("Both searchResultItems and searchResultsView can't be set at the same time");
    }
}
