package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.car.ui.core.SearchResultsProvider;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.google.android.embedded.projection.R;
import j$.util.function.BiConsumer;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ToolbarSearchController {
    public final Context b;
    public final InputMethodManager c;
    public TextView d;
    public SurfaceControlViewHost e;
    public int f;
    public int g;
    public ViewGroup i;
    public ViewGroup.LayoutParams j;
    public final Handler a = new Handler(Looper.getMainLooper());
    public boolean h = false;
    public SearchResultsConfig k = SearchResultsConfig.a().a();

    public ToolbarSearchController(Context context) {
        this.b = context;
        this.c = (InputMethodManager) context.getSystemService(InputMethodManager.class);
    }

    public static byte[] f(Bitmap bitmap) {
        Parcel obtain = Parcel.obtain();
        bitmap.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a() {
        View view = this.k.a;
        return view instanceof CarUiRecyclerView ? ((CarUiRecyclerView) view).getView() : view;
    }

    public final ToolbarFlagsConfig b() {
        boolean z;
        Context context = this.b;
        boolean z2 = true;
        boolean z3 = CarUiResourceUtils.n(context.getResources(), R.string.car_ui_ime_wide_screen_system_property_name) && Build.VERSION.SDK_INT >= 30;
        boolean z4 = context.getResources().getBoolean(R.bool.car_ui_ime_wide_screen_allow_app_hide_content_area);
        String[] stringArray = context.getResources().getStringArray(R.array.car_ui_ime_wide_screen_allowed_package_list);
        int length = stringArray.length;
        int i = 0;
        while (true) {
            if (NavInstructionTypeEnum >= length) {
                z = false;
                break;
            }
            if (stringArray[i].equals(context.getPackageName())) {
                z = true;
                break;
            }
            i++;
        }
        if (!z3 || (!z && !z4)) {
            z2 = false;
        }
        ToolbarFlagsBuilder a = ToolbarFlagsConfig.a();
        a.a = z2;
        a.b = z3;
        return a.a();
    }

    public final BiConsumer c() {
        return new BiConsumer() { // from class: aqq
            @Override // j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ToolbarClickListenerBridge arhVar;
                TextView textView;
                ToolbarSearchController aqsVar = ToolbarSearchController.this;
                String str = (String) obj;
                Bundle bundle = (Bundle) obj2;
                if ("automotive_wide_screen_clear_data".equals(str) && (textView = aqsVar.d) != null) {
                    textView.setText("");
                }
                if ("automotive_wide_screen_post_load_search_results".equals(str)) {
                    aqsVar.b.getContentResolver().delete(SearchResultsProvider.a(aqsVar.b), null, null);
                }
                "automotive_wide_screen_back_clicked".equals(str);
                if (bundle == null) {
                    return;
                }
                if (bundle.getString("search_result_item_id_list") != null) {
                    String string = bundle.getString("search_result_item_id_list");
                    List list = aqsVar.k.c;
                    CarUiListItem aoeVar = list != null ? (CarUiListItem) list.get(Integer.parseInt(string)) : null;
                    if (aoeVar != null && (arhVar = aoeVar.i) != null) {
                        arhVar.a();
                    }
                }
                if (bundle.getString("search_result_supplemental_icon_id_list") != null) {
                    String string2 = bundle.getString("search_result_supplemental_icon_id_list");
                    List list2 = aqsVar.k.c;
                    if (list2 != null) {
                    }
                }
                int i = bundle.getInt("content_area_surface_display_id");
                int i2 = bundle.getInt("content_area_surface_height");
                int i3 = bundle.getInt("content_area_surface_width");
                IBinder binder = bundle.getBinder("content_area_surface_host_token");
                if (binder != null) {
                    if (Build.VERSION.SDK_INT < 30) {
                        throw new IllegalStateException("Views in the widescreen ime aren't supported pre R");
                    }
                    aqsVar.e = new SurfaceControlViewHost(aqsVar.b, ((DisplayManager) aqsVar.b.getSystemService(DisplayManager.class)).getDisplay(NavInstructionTypeEnum), binder);
                    aqsVar.f = i2;
                    aqsVar.g = i3;
                    Bundle bundle2 = new Bundle();
                    Drawable drawable = aqsVar.k.b;
                    if (drawable != null) {
                        bundle2.putByteArray("extracted_text_icon", ToolbarSearchController.f(CarUiResourceUtils.e(drawable)));
                    }
                    bundle2.putParcelable("content_area_surface_package", aqsVar.e.getSurfacePackage());
                    aqsVar.c.sendAppPrivateCommand(aqsVar.d, "automotive_wide_screen", bundle2);
                    return;
                }
                if (i2 == 0) {
                    if (i3 == 0) {
                        return;
                    } else {
                        i2 = 0;
                    }
                }
                if (Build.VERSION.SDK_INT < 30) {
                    throw new IllegalStateException("Views in the widescreen ime aren't supported pre R");
                }
                aqsVar.f = i2;
                aqsVar.g = i3;
                SurfaceControlViewHost surfaceControlViewHost = aqsVar.e;
                if (surfaceControlViewHost != null) {
                    surfaceControlViewHost.relayout(i3, i2);
                }
            }

            @Override // j$.util.function.BiConsumer
            public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        };
    }

    public final void d(SearchResultsConfig aqfVar) {
        if (aqfVar == null) {
            aqfVar = SearchResultsConfig.a().a();
        }
        this.k = aqfVar;
    }

    public final void e(TextView textView) {
        TextView textView2;
        if (this.d != null) {
            throw new IllegalStateException("TextView already set");
        }
        this.d = textView;
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = new View.OnApplyWindowInsetsListener() { // from class: aqn
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                final FrameLayout frameLayout;
                final ToolbarSearchController aqsVar = ToolbarSearchController.this;
                if (Build.VERSION.SDK_INT < 30) {
                    throw new IllegalStateException("Cannot check if the ime is visible pre R");
                }
                if (aqsVar.d == null) {
                    return view.onApplyWindowInsets(windowInsets);
                }
                if (windowInsets.isVisible(WindowInsets.Type.ime())) {
                    View a = aqsVar.a();
                    if (aqsVar.h || a == null) {
                        frameLayout = null;
                    } else {
                        aqsVar.j = a.getLayoutParams();
                        aqsVar.i = (ViewGroup) a.getParent();
                        ViewGroup viewGroup = aqsVar.i;
                        if (viewGroup != null) {
                            viewGroup.removeView(SingleStringProtoMessage);
                        }
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        View view2 = aqsVar.k.a;
                        if (view2 instanceof CarUiRecyclerView) {
                            layoutParams.topMargin = -view2.getPaddingTop();
                            layoutParams.bottomMargin = -view2.getPaddingBottom();
                            layoutParams.leftMargin = -view2.getPaddingLeft();
                            layoutParams.rightMargin = -view2.getPaddingRight();
                        }
                        frameLayout = new FrameLayout(aqsVar.b);
                        frameLayout.addView(a, layoutParams);
                    }
                    Uri a2 = SearchResultsProvider.a(aqsVar.b);
                    aqsVar.b.getContentResolver().delete(a2, null, null);
                    if (aqsVar.a() == null || !aqsVar.b().a) {
                        List list = aqsVar.k.c;
                        if (list == null) {
                            aqsVar.c.sendAppPrivateCommand(aqsVar.d, "automotive_wide_screen", null);
                        } else {
                            for (int i = 0; NavInstructionTypeEnum < list.size(); i++) {
                                CarUiListItem aoeVar = (CarUiListItem) list.get(NavInstructionTypeEnum);
                                ContentValues contentValues = new ContentValues();
                                Integer valueOf = Integer.valueOf(NavInstructionTypeEnum);
                                contentValues.put("primaryId", valueOf);
                                contentValues.put("secondary", valueOf);
                                BitmapDrawable bitmapDrawable = (BitmapDrawable) aoeVar.a;
                                contentValues.put("primary_image", bitmapDrawable != null ? ToolbarSearchController.f(bitmapDrawable.getBitmap()) : null);
                                aoeVar.c();
                                contentValues.put("secondary_image", (byte[]) null);
                                CarUiListItemData amoVar = aoeVar.b;
                                contentValues.put("title", amoVar != null ? amoVar.a().toString() : null);
                                contentValues.put("subtitle", (String) null);
                                aqsVar.b.getContentResolver().insert(a2, contentValues);
                            }
                            aqsVar.c.sendAppPrivateCommand(aqsVar.d, "wide_screen_search_results", new Bundle());
                        }
                    }
                    aqsVar.a.post(new Runnable() { // from class: aqp
                        @Override // java.lang.Runnable
                        public final void run() {
                            ToolbarSearchController aqsVar2 = ToolbarSearchController.this;
                            FrameLayout frameLayout2 = frameLayout;
                            SurfaceControlViewHost surfaceControlViewHost = aqsVar2.e;
                            if (surfaceControlViewHost == null || frameLayout2 == null || surfaceControlViewHost.getView() != null) {
                                return;
                            }
                            aqsVar2.h = true;
                            aqsVar2.e.setView(frameLayout2, aqsVar2.g, aqsVar2.f);
                        }
                    });
                } else {
                    final View a3 = aqsVar.a();
                    if (aqsVar.i != null && a3 != null) {
                        aqsVar.a.post(new Runnable() { // from class: aqo
                            @Override // java.lang.Runnable
                            public final void run() {
                                ToolbarSearchController aqsVar2 = ToolbarSearchController.this;
                                View view3 = a3;
                                ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                                if (viewGroup2 != null) {
                                    viewGroup2.removeView(view3);
                                }
                                aqsVar2.i.addView(view3, aqsVar2.j);
                                aqsVar2.i.requestLayout();
                                aqsVar2.i = null;
                                aqsVar2.j = null;
                            }
                        });
                    }
                    aqsVar.h = false;
                }
                return view.onApplyWindowInsets(windowInsets);
            }
        };
        if (Build.VERSION.SDK_INT < 30 || (textView2 = this.d) == null) {
            return;
        }
        if (textView2.isAttachedToWindow()) {
            this.d.getRootView().setOnApplyWindowInsetsListener(onApplyWindowInsetsListener);
        } else {
            this.d.addOnAttachStateChangeListener(new SearchControllerAttachListener(this, onApplyWindowInsetsListener));
        }
    }
}
