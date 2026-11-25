package defpackage;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import com.google.android.embedded.projection.R;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AsyncLayoutInflatorCallback implements Handler.Callback {
    final /* synthetic */ AsyncLayoutInflator a;

    public AsyncLayoutInflatorCallback(AsyncLayoutInflator uuVar) {
        this.a = uuVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        AsyncLayoutInflateRequest usVar = (AsyncLayoutInflateRequest) message.obj;
        if (usVar.d == null) {
            usVar.d = this.a.a.inflate(usVar.c, usVar.b, false);
        }
        ToolbarControllerHolder apwVar = usVar.e;
        View view = usVar.d;
        int i = usVar.c;
        ViewGroup viewGroup = usVar.b;
        ToolbarMenuItemPresenter apxVar = apwVar.a;
        Consumer consumer = apwVar.b;
        apxVar.d = view;
        apxVar.e = CarUiResourceUtils.g(apxVar.d, R.id.car_ui_toolbar_menu_item_icon_container);
        apxVar.f = (ImageView) CarUiResourceUtils.g(apxVar.d, R.id.car_ui_toolbar_menu_item_icon);
        apxVar.g = (Switch) CarUiResourceUtils.g(apxVar.d, R.id.car_ui_toolbar_menu_item_switch);
        apxVar.h = (TextView) CarUiResourceUtils.g(apxVar.d, R.id.car_ui_toolbar_menu_item_text);
        apxVar.i = (TextView) CarUiResourceUtils.g(apxVar.d, R.id.car_ui_toolbar_menu_item_text_with_icon);
        apxVar.j = apxVar.d.getContext().getResources().getBoolean(R.bool.car_ui_toolbar_menuitem_individual_click_listeners);
        apxVar.a();
        consumer.accept(apxVar.d);
        AsyncLayoutInflatorInflateThread utVar = this.a.c;
        usVar.e = null;
        usVar.a = null;
        usVar.b = null;
        usVar.c = 0;
        usVar.d = null;
        utVar.c.b(usVar);
        return true;
    }
}
