package com.android.car.ui.pluginsupport;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.View;
import com.android.car.ui.FocusArea;
import com.android.car.ui.FocusAreaAdapterV1;
import com.android.car.ui.FocusParkingView;
import com.android.car.ui.FocusParkingViewAdapterV1;
import com.android.car.ui.appstyledview.AppStyledViewControllerAdapterV1;
import com.android.car.ui.baselayout.Insets;
import com.android.car.ui.plugin.oemapis.FocusAreaOEMV1;
import com.android.car.ui.plugin.oemapis.FocusParkingViewOEMV1;
import com.android.car.ui.plugin.oemapis.InsetsOEMV1;
import com.android.car.ui.plugin.oemapis.PluginFactoryOEMV2;
import com.android.car.ui.plugin.oemapis.appstyledview.AppStyledViewControllerOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.AdapterOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.ContentListItemOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.LayoutStyleOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.ListItemOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.RecyclerViewAttributesOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.RecyclerViewOEMV1;
import com.android.car.ui.plugin.oemapis.toolbar.ToolbarControllerOEMV1;
import com.android.car.ui.recyclerview.CarUiListItemAdapterAdapterV1;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.android.car.ui.recyclerview.RecyclerViewAdapterV1;
import com.android.car.ui.toolbar.ToolbarControllerAdapterV1;
import defpackage.amo;
import defpackage.amu;
import defpackage.ana;
import defpackage.anb;
import defpackage.anc;
import defpackage.anh;
import defpackage.anl;
import defpackage.aob;
import defpackage.aoc;
import defpackage.aoe;
import defpackage.aog;
import defpackage.aoj;
import defpackage.are;
import defpackage.aro;
import defpackage.asl;
import defpackage.qq;
import defpackage.qs;
import j$.util.function.Consumer;
import j$.util.function.Function;
import java.util.Arrays;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PluginFactoryAdapterV2 implements anh {
    private final anl mFactoryStub = new anl();
    private final PluginFactoryOEMV2 mOem;

    /* compiled from: PG */
    /* renamed from: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$1, reason: invalid class name */
    class AnonymousClass1 extends qs {
        final /* synthetic */ List val$items;
        final /* synthetic */ List val$oemItems;

        public AnonymousClass1(PluginFactoryAdapterV2 pluginFactoryAdapterV2, List list, List list2) {
            this.val$oemItems = list;
            this.val$items = list2;
        }

        @Override // defpackage.qs
        public void onChanged() {
            this.val$oemItems.clear();
            this.val$oemItems.addAll(aro.j(this.val$items, new Function() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$1$$ExternalSyntheticLambda0
                @Override // j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // j$.util.function.Function
                public final Object apply(Object obj) {
                    ListItemOEMV1 oemListItem;
                    oemListItem = PluginFactoryAdapterV2.toOemListItem((aoj) obj);
                    return oemListItem;
                }

                @Override // j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            }));
        }

        @Override // defpackage.qs
        public void onItemRangeChanged(int i, int i2) {
            for (int i3 = i; i3 <= i + i2; i3++) {
                this.val$oemItems.set(i3, PluginFactoryAdapterV2.toOemListItem((aoj) this.val$items.get(i3)));
            }
        }

        @Override // defpackage.qs
        public void onItemRangeInserted(int i, int i2) {
            for (int i3 = i; i3 <= i + i2; i3++) {
                this.val$oemItems.add(i3, PluginFactoryAdapterV2.toOemListItem((aoj) this.val$items.get(i3)));
            }
        }

        @Override // defpackage.qs
        public void onItemRangeMoved(int i, int i2, int i3) {
            for (int i4 = i; i4 <= i + i3; i4++) {
                this.val$oemItems.add(i2, (ListItemOEMV1) this.val$oemItems.remove(i4));
                i2++;
            }
        }

        @Override // defpackage.qs
        public void onItemRangeRemoved(int i, int i2) {
            for (int i3 = i; i3 <= i + i2; i3++) {
                this.val$oemItems.remove(i3);
            }
        }

        @Override // defpackage.qs
        public void onItemRangeChanged(int i, int i2, Object obj) {
            for (int i3 = i; i3 <= i + i2; i3++) {
                this.val$oemItems.set(i3, PluginFactoryAdapterV2.toOemListItem((aoj) this.val$items.get(i3)));
            }
        }
    }

    /* compiled from: PG */
    /* renamed from: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$4, reason: invalid class name */
    /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action;
        static final /* synthetic */ int[] $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$IconType;

        static {
            int[] iArr = new int[aoc.values().length];
            $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$IconType = iArr;
            try {
                iArr[aoc.CONTENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$IconType[aoc.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$IconType[aoc.AVATAR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[aob.values().length];
            $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action = iArr2;
            try {
                iArr2[aob.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action[aob.SWITCH.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action[aob.CHECK_BOX.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action[aob.RADIO_BUTTON.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action[aob.ICON.ordinal()] = 5;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$android$car$ui$recyclerview$CarUiContentListItem$Action[aob.CHEVRON.ordinal()] = 6;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public PluginFactoryAdapterV2(PluginFactoryOEMV2 pluginFactoryOEMV2) {
        this.mOem = pluginFactoryOEMV2;
        pluginFactoryOEMV2.setRotaryFactories(new Function() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$$ExternalSyntheticLambda4
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return PluginFactoryAdapterV2.lambda$new$0((Context) obj);
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$$ExternalSyntheticLambda5
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return PluginFactoryAdapterV2.lambda$new$1((Context) obj);
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        });
    }

    private Insets adaptInsets(InsetsOEMV1 insetsOEMV1) {
        return new Insets(insetsOEMV1.getLeft(), insetsOEMV1.getTop(), insetsOEMV1.getRight(), insetsOEMV1.getBottom());
    }

    private static RecyclerViewAttributesOEMV1 from(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, amu.b, 0, 0);
        final int i = obtainStyledAttributes.getInt(4, 0);
        final int i2 = obtainStyledAttributes.getInt(5, 1);
        final boolean z = obtainStyledAttributes.getBoolean(7, false);
        final int i3 = obtainStyledAttributes.getInt(0, 1);
        final boolean z2 = obtainStyledAttributes.getBoolean(6, false);
        final int i4 = obtainStyledAttributes.getInt(1, 2);
        obtainStyledAttributes.recycle();
        int[] iArr = {R.attr.layout_width, R.attr.layout_height, R.attr.minWidth, R.attr.minHeight, R.attr.paddingStart, R.attr.paddingLeft, R.attr.paddingEnd, R.attr.paddingRight, R.attr.paddingTop, R.attr.paddingBottom, R.attr.layout_marginStart, R.attr.layout_marginLeft, R.attr.layout_marginEnd, R.attr.layout_marginRight, R.attr.layout_marginTop, R.attr.layout_marginBottom, R.attr.background};
        Arrays.sort(iArr);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        final int layoutDimension = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_width), -1);
        final int layoutDimension2 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_height), -2);
        final int layoutDimension3 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.minWidth), 0);
        final int layoutDimension4 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.minHeight), 0);
        final int layoutDimension5 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.paddingLeft), 0);
        final int layoutDimension6 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.paddingRight), 0);
        final int layoutDimension7 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.paddingStart), 0);
        final int layoutDimension8 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.paddingEnd), 0);
        final int layoutDimension9 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.paddingTop), 0);
        final int layoutDimension10 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.paddingBottom), 0);
        final int layoutDimension11 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_marginLeft), 0);
        final int layoutDimension12 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_marginRight), 0);
        final int layoutDimension13 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_marginStart), 0);
        final int layoutDimension14 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_marginEnd), 0);
        final int layoutDimension15 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_marginTop), 0);
        final int layoutDimension16 = obtainStyledAttributes2.getLayoutDimension(Arrays.binarySearch(iArr, R.attr.layout_marginBottom), 0);
        final Drawable drawable = obtainStyledAttributes2.getDrawable(Arrays.binarySearch(iArr, R.attr.background));
        obtainStyledAttributes2.recycle();
        final LayoutStyleOEMV1 layoutStyleOEMV1 = new LayoutStyleOEMV1() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2.2
            public int getLayoutType() {
                switch (i) {
                    case 1:
                        return 1;
                    default:
                        return 0;
                }
            }

            public int getOrientation() {
                switch (i3) {
                    case 0:
                        return 0;
                    default:
                        return 1;
                }
            }

            public boolean getReverseLayout() {
                return z2;
            }

            public int getSpanCount() {
                return i2;
            }
        };
        final boolean z3 = context.getResources().getConfiguration().getLayoutDirection() == 0;
        return new RecyclerViewAttributesOEMV1() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2.3
            public int geMinWidth() {
                return layoutDimension3;
            }

            public Drawable getBackground() {
                return drawable;
            }

            public int getLayoutHeight() {
                return layoutDimension2;
            }

            public LayoutStyleOEMV1 getLayoutStyle() {
                return layoutStyleOEMV1;
            }

            public int getLayoutWidth() {
                return layoutDimension;
            }

            public int getMarginBottom() {
                return layoutDimension16;
            }

            public int getMarginLeft() {
                int i5 = layoutDimension11;
                return i5 != 0 ? i5 : z3 ? layoutDimension13 : layoutDimension14;
            }

            public int getMarginRight() {
                int i5 = layoutDimension12;
                return i5 != 0 ? i5 : z3 ? layoutDimension14 : layoutDimension13;
            }

            public int getMarginTop() {
                return layoutDimension15;
            }

            public int getMinHeight() {
                return layoutDimension4;
            }

            public int getPaddingBottom() {
                return layoutDimension10;
            }

            public int getPaddingLeft() {
                int i5 = layoutDimension5;
                return i5 != 0 ? i5 : z3 ? layoutDimension7 : layoutDimension8;
            }

            public int getPaddingRight() {
                int i5 = layoutDimension6;
                return i5 != 0 ? i5 : z3 ? layoutDimension8 : layoutDimension7;
            }

            public int getPaddingTop() {
                return layoutDimension9;
            }

            public int getSize() {
                switch (i4) {
                    case 0:
                        return 0;
                    case 1:
                        return 1;
                    default:
                        return 2;
                }
            }

            public boolean isRotaryScrollEnabled() {
                return z;
            }
        };
    }

    static /* synthetic */ FocusParkingViewOEMV1 lambda$new$0(Context context) {
        return new FocusParkingViewAdapterV1(new FocusParkingView(context));
    }

    static /* synthetic */ FocusAreaOEMV1 lambda$new$1(Context context) {
        return new FocusAreaAdapterV1(new FocusArea(context));
    }

    static /* synthetic */ void lambda$toOemListItem$3(aoe aoeVar, ContentListItemOEMV1 contentListItemOEMV1) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ListItemOEMV1 toOemListItem(aoj aojVar) {
        if (aojVar instanceof aog) {
            throw null;
        }
        if (!(aojVar instanceof aoe)) {
            throw new IllegalStateException("Unknown view type.");
        }
        final aoe aoeVar = (aoe) aojVar;
        ContentListItemOEMV1.Builder builder = new ContentListItemOEMV1.Builder(toOemListItemAction(aoeVar.c));
        amo amoVar = aoeVar.b;
        if (amoVar != null) {
            builder.setTitle(new SpannableString(amoVar.a()));
        }
        builder.setIcon(aoeVar.a, toOemListItemIconType(aoeVar.d));
        if (aoeVar.c == aob.ICON) {
            aoeVar.c();
            builder.setSupplementalIcon((Drawable) null, (Consumer) null);
        }
        if (aoeVar.i != null) {
            builder.setOnItemClickedListener(new Consumer() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$$ExternalSyntheticLambda2
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    aoe.this.i.a();
                }

                @Override // j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer.CC.$default$andThen(this, consumer);
                }
            });
        }
        builder.setOnCheckedChangeListener(new Consumer() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$$ExternalSyntheticLambda3
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                aoe.this.a(((ContentListItemOEMV1) obj).isChecked());
            }

            @Override // j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }).setActionDividerVisible(false).setEnabled(aoeVar.f).setChecked(aoeVar.e).setActivated(aoeVar.g).setSecure(false);
        return builder.build();
    }

    private static ContentListItemOEMV1.Action toOemListItemAction(aob aobVar) {
        aoc aocVar = aoc.CONTENT;
        aob aobVar2 = aob.NONE;
        switch (aobVar.ordinal()) {
            case 0:
                return ContentListItemOEMV1.Action.NONE;
            case 1:
                return ContentListItemOEMV1.Action.SWITCH;
            case 2:
                return ContentListItemOEMV1.Action.CHECK_BOX;
            case 3:
                return ContentListItemOEMV1.Action.RADIO_BUTTON;
            case 4:
                return ContentListItemOEMV1.Action.ICON;
            case 5:
                return ContentListItemOEMV1.Action.CHEVRON;
            default:
                throw new IllegalStateException("Unexpected list item action type");
        }
    }

    private static ContentListItemOEMV1.IconType toOemListItemIconType(aoc aocVar) {
        aoc aocVar2 = aoc.CONTENT;
        aob aobVar = aob.NONE;
        switch (aocVar.ordinal()) {
            case 0:
                return ContentListItemOEMV1.IconType.CONTENT;
            case 1:
                return ContentListItemOEMV1.IconType.STANDARD;
            case 2:
                return ContentListItemOEMV1.IconType.AVATAR;
            default:
                throw new IllegalStateException("Unexpected list item icon type");
        }
    }

    public ana createAppStyledView(Context context) {
        AppStyledViewControllerOEMV1 createAppStyledView = this.mOem.createAppStyledView(context);
        return createAppStyledView == null ? new anb() : new AppStyledViewControllerAdapterV1(createAppStyledView);
    }

    public qq createListItemAdapter(List list) {
        List j = aro.j(list, new Function() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$$ExternalSyntheticLambda6
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                ListItemOEMV1 oemListItem;
                oemListItem = PluginFactoryAdapterV2.toOemListItem((aoj) obj);
                return oemListItem;
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        });
        AdapterOEMV1 createListItemAdapter = this.mOem.createListItemAdapter(j);
        if (createListItemAdapter == null) {
            return anl.a(list);
        }
        CarUiListItemAdapterAdapterV1 carUiListItemAdapterAdapterV1 = new CarUiListItemAdapterAdapterV1(createListItemAdapter);
        carUiListItemAdapterAdapterV1.registerAdapterDataObserver(new AnonymousClass1(this, j, list));
        return carUiListItemAdapterAdapterV1;
    }

    @Override // defpackage.anh
    public CarUiRecyclerView createRecyclerView(Context context, AttributeSet attributeSet) {
        RecyclerViewOEMV1 createRecyclerView = this.mOem.createRecyclerView(context, from(context, attributeSet));
        if (createRecyclerView == null) {
            return this.mFactoryStub.createRecyclerView(context, attributeSet);
        }
        RecyclerViewAdapterV1 recyclerViewAdapterV1 = new RecyclerViewAdapterV1(context, attributeSet, 0);
        recyclerViewAdapterV1.setRecyclerViewOEMV1(createRecyclerView);
        return recyclerViewAdapterV1;
    }

    @Override // defpackage.anh
    public asl createTextView(Context context, AttributeSet attributeSet) {
        return this.mFactoryStub.createTextView(context, attributeSet);
    }

    @Override // defpackage.anh
    public are installBaseLayoutAround(View view, final anc ancVar, boolean z, boolean z2) {
        if (!this.mOem.customizesBaseLayout()) {
            return this.mFactoryStub.installBaseLayoutAround(view, ancVar, z, z2);
        }
        ToolbarControllerOEMV1 installBaseLayoutAround = this.mOem.installBaseLayoutAround(view.getContext(), view, new Consumer() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV2$$ExternalSyntheticLambda0
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                PluginFactoryAdapterV2.this.m2x3d1d62ab(ancVar, (InsetsOEMV1) obj);
            }

            @Override // j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }, z, z2);
        if (installBaseLayoutAround != null) {
            return new ToolbarControllerAdapterV1(view.getContext(), installBaseLayoutAround);
        }
        return null;
    }

    /* renamed from: lambda$installBaseLayoutAround$2$com-android-car-ui-pluginsupport-PluginFactoryAdapterV2, reason: not valid java name */
    public /* synthetic */ void m2x3d1d62ab(anc ancVar, InsetsOEMV1 insetsOEMV1) {
        ancVar.a(adaptInsets(insetsOEMV1));
    }
}
