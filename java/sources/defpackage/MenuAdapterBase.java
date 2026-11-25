package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuAdapterBase extends BaseAdapter {
    final /* synthetic */ MenuItemClickForwarder a;
    private int b = -1;

    public MenuAdapterBase(MenuItemClickForwarder lkVar) {
        this.a = lkVar;
        b();
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final MenuItemImpl getItem(int i) {
        ArrayList e = this.a.c.e();
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (MenuItemImpl) e.get(NavInstructionTypeEnum);
    }

    final void b() {
        MenuBuilderImpl loVar = this.a.c;
        MenuItemImpl lrVar = loVar.h;
        if (lrVar != null) {
            ArrayList e = loVar.e();
            int size = e.size();
            for (int i = 0; NavInstructionTypeEnum < size; i++) {
                if (((MenuItemImpl) e.get(NavInstructionTypeEnum)) == lrVar) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        int size = this.a.c.e().size();
        return this.ProtoLiteMessageBase < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.a.b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((SimpleInterfaceMd) view).f(getItem(NavInstructionTypeEnum));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
