package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SearchResultsConfig {
    public final View a;
    public final Drawable b;
    public final List c;

    public SearchResultsConfig(SearchResultsConfigBuilder aqeVar) {
        this.c = aqeVar.c;
        this.b = aqeVar.b;
        this.a = aqeVar.a;
    }

    public static SearchResultsConfigBuilder a() {
        return new SearchResultsConfigBuilder();
    }
}
