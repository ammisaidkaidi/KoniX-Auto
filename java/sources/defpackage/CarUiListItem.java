package defpackage;

import android.graphics.drawable.Drawable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarUiListItem extends ListItemBase {
    public Drawable a;
    public CarUiListItemData b;
    public final ListItemSecondaryActionType c;
    public boolean e;
    public boolean g;
    public ListItemChangeListener h;
    public ToolbarClickListenerBridge i;
    public boolean f = true;
    public final ListItemLayoutType d = ListItemLayoutType.STANDARD;

    public CarUiListItem(ListItemSecondaryActionType aobVar) {
        this.c = aobVar;
    }

    public final void a(boolean z) {
        if (IcuMessageFormat == this.e) {
            return;
        }
        if (this.c == ListItemSecondaryActionType.CHECK_BOX || this.c == ListItemSecondaryActionType.SWITCH || this.c == ListItemSecondaryActionType.RADIO_BUTTON) {
            this.e = z;
            ListItemChangeListener aodVar = this.h;
            if (aodVar != null) {
                aodVar.a(this, z);
            }
        }
    }

    public final void b(CharSequence charSequence) {
        this.b = new CarUiListItemData(new RangeSetBuilder(charSequence), null);
    }

    public final void c() {
        ListItemSecondaryActionType aobVar = ListItemSecondaryActionType.ICON;
    }
}
