package defpackage;

import android.graphics.drawable.Drawable;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface CarUiToolbarController {
    @Deprecated
    boolean isStateSet();

    void setLogo(Drawable drawable);

    void setMenuItems(List list);

    void setNavButtonMode(ToolbarNavButtonMode aqaVar);

    @Deprecated
    void setNavButtonMode(LegacyToolbarNavButtonMode aqyVar);

    @Deprecated
    void setState(ToolbarStateType ardVar);

    void setSubtitle(CharSequence charSequence);

    void setTabs(List list);

    void setTitle(CharSequence charSequence);
}
