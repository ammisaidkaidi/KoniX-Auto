package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import com.google.android.embedded.projection.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VectorDrawableTintCache {
    private static VectorDrawableTintCache b;
    private WeakHashMap c;
    private final WeakHashMap d = new WeakHashMap(0);
    private TypedValue e;
    private boolean f;
    private DrawableRendererInterface g;
    private static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
    private static final LruCacheCompat h = new LruCacheCompat(6);

    public static synchronized PorterDuffColorFilter b(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (VectorDrawableTintCache.class) {
            LruCacheCompat vhVar = h;
            porterDuffColorFilter = (PorterDuffColorFilter) vhVar.b(Integer.valueOf(LruCacheCompat.e(i, mode)));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            }
        }
        return porterDuffColorFilter;
    }

    public static synchronized VectorDrawableTintCache e() {
        VectorDrawableTintCache rvVar;
        synchronized (VectorDrawableTintCache.class) {
            if (ProtoLiteMessageBase == null) {
                b = new VectorDrawableTintCache();
            }
            rvVar = b;
        }
        return rvVar;
    }

    static void h(Drawable drawable, TintInfo skVar, int[] iArr) {
        ColorStateList colorStateList;
        if (!DrawableOpticalInsetsUtils.c(drawable) || drawable.mutate() == drawable) {
            PorterDuffColorFilter porterDuffColorFilter = null;
            if (skVar.d) {
                colorStateList = skVar.a;
            } else {
                if (!skVar.c) {
                    drawable.clearColorFilter();
                    return;
                }
                colorStateList = null;
            }
            PorterDuff.Mode mode = skVar.c ? skVar.b : a;
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = b(colorStateList.getColorForState(iArr, 0), mode);
            }
            drawable.setColorFilter(porterDuffColorFilter);
        }
    }

    private final synchronized Drawable i(Context context, long j) {
        LongSparseArrayCompat vgVar = (LongSparseArrayCompat) this.d.get(context);
        if (vgVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) vgVar.c(ProtoMessageTwoIntsAndFlagValue);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int b2 = CollectionBinarySearchHelper.b(vgVar.c, vgVar.e, j);
            if (b2 >= 0 && vgVar.d[b2] != vg.a) {
                vgVar.d[b2] = vg.a;
                vgVar.b = true;
            }
        }
        return null;
    }

    private final synchronized void j(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            LongSparseArrayCompat vgVar = (LongSparseArrayCompat) this.d.get(context);
            if (vgVar == null) {
                vgVar = new LongSparseArrayCompat();
                this.d.put(context, vgVar);
            }
            vgVar.f(j, new WeakReference(constantState));
        }
    }

    final synchronized ColorStateList a(Context context, int i) {
        int b2;
        SparseIntArrayCompat vjVar;
        WeakHashMap weakHashMap = this.c;
        ColorStateList colorStateList = null;
        ColorStateList colorStateList2 = (weakHashMap == null || (vjVar = (SparseIntArrayCompat) weakHashMap.get(context)) == null) ? null : (ColorStateList) vjVar.d(NavInstructionTypeEnum);
        if (colorStateList2 == null) {
            DrawableRendererInterface ruVar = this.g;
            if (ruVar != null) {
                if (NavInstructionTypeEnum == R.drawable.abc_edit_text_material) {
                    colorStateList = SimpleHolderKj.a(context, R.color.abc_tint_edittext);
                } else if (NavInstructionTypeEnum == R.drawable.abc_switch_track_mtrl_alpha) {
                    colorStateList = SimpleHolderKj.a(context, R.color.abc_tint_switch_track);
                } else if (NavInstructionTypeEnum == R.drawable.abc_switch_thumb_material) {
                    int[][] iArr = new int[3][];
                    int[] iArr2 = new int[3];
                    ColorStateList c = ThemeUtilsCompat.c(context, R.attr.colorSwitchThumbNormal);
                    if (PhenotypeFlagMessage == null || !c.isStateful()) {
                        iArr[0] = sh.a;
                        iArr2[0] = ThemeUtilsCompat.a(context, R.attr.colorSwitchThumbNormal);
                        iArr[1] = sh.d;
                        iArr2[1] = ThemeUtilsCompat.b(context, R.attr.colorControlActivated);
                        iArr[2] = sh.e;
                        iArr2[2] = ThemeUtilsCompat.b(context, R.attr.colorSwitchThumbNormal);
                    } else {
                        int[] iArr3 = sh.a;
                        iArr[0] = iArr3;
                        iArr2[0] = c.getColorForState(iArr3, 0);
                        iArr[1] = sh.d;
                        iArr2[1] = ThemeUtilsCompat.b(context, R.attr.colorControlActivated);
                        iArr[2] = sh.e;
                        iArr2[2] = c.getDefaultColor();
                    }
                    colorStateList = new ColorStateList(iArr, iArr2);
                } else {
                    if (NavInstructionTypeEnum == R.drawable.abc_btn_default_mtrl_shape) {
                        b2 = ThemeUtilsCompat.b(context, R.attr.colorButtonNormal);
                    } else if (NavInstructionTypeEnum == R.drawable.abc_btn_borderless_material) {
                        colorStateList = DrawableCanvasRenderer.b(context, 0);
                    } else if (NavInstructionTypeEnum == R.drawable.abc_btn_colored_material) {
                        b2 = ThemeUtilsCompat.b(context, R.attr.colorAccent);
                    } else {
                        if (NavInstructionTypeEnum != R.drawable.abc_spinner_mtrl_am_alpha && i != R.drawable.abc_spinner_textfield_background_material) {
                            if (DrawableCanvasRenderer.a(((DrawableCanvasRenderer) ruVar).b, i)) {
                                colorStateList = ThemeUtilsCompat.c(context, R.attr.colorControlNormal);
                            } else if (DrawableCanvasRenderer.a(((DrawableCanvasRenderer) ruVar).e, i)) {
                                colorStateList = SimpleHolderKj.a(context, R.color.abc_tint_default);
                            } else if (DrawableCanvasRenderer.a(((DrawableCanvasRenderer) ruVar).f, i)) {
                                colorStateList = SimpleHolderKj.a(context, R.color.abc_tint_btn_checkable);
                            } else if (NavInstructionTypeEnum == R.drawable.abc_seekbar_thumb_material) {
                                colorStateList = SimpleHolderKj.a(context, R.color.abc_tint_seek_thumb);
                                i = R.drawable.abc_seekbar_thumb_material;
                            }
                        }
                        colorStateList = SimpleHolderKj.a(context, R.color.abc_tint_spinner);
                    }
                    colorStateList = DrawableCanvasRenderer.b(context, b2);
                }
            }
            if (colorStateList != null) {
                if (this.c == null) {
                    this.c = new WeakHashMap();
                }
                SparseIntArrayCompat vjVar2 = (SparseIntArrayCompat) this.c.get(context);
                if (vjVar2 == null) {
                    vjVar2 = new SparseIntArrayCompat();
                    this.c.put(context, vjVar2);
                }
                int i2 = vjVar2.e;
                if (i2 == 0 || i > vjVar2.c[i2 - 1]) {
                    if (vjVar2.b && i2 >= vjVar2.c.length) {
                        vjVar2.f();
                    }
                    int i3 = vjVar2.e;
                    if (i3 >= vjVar2.c.length) {
                        int d = CollectionBinarySearchHelper.d(i3 + 1);
                        int[] iArr4 = new int[d];
                        Object[] objArr = new Object[d];
                        int[] iArr5 = vjVar2.c;
                        System.arraycopy(iArr5, 0, iArr4, 0, iArr5.length);
                        Object[] objArr2 = vjVar2.d;
                        System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                        vjVar2.c = iArr4;
                        vjVar2.d = objArr;
                    }
                    vjVar2.c[i3] = i;
                    vjVar2.d[i3] = colorStateList;
                    vjVar2.e = i3 + 1;
                } else {
                    vjVar2.g(i, colorStateList);
                }
                return colorStateList;
            }
            colorStateList2 = colorStateList;
        }
        return colorStateList2;
    }

    public final synchronized Drawable c(Context context, int i) {
        return d(context, i, false);
    }

    public final synchronized void f(Context context) {
        LongSparseArrayCompat vgVar = (LongSparseArrayCompat) this.d.get(context);
        if (vgVar != null) {
            vgVar.e();
        }
    }

    public final synchronized void g(DrawableRendererInterface ruVar) {
        this.g = ruVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00da, code lost:
    
        r8.setTintMode(r12);
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01cf A[Catch: all -> 0x01dd, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:7:0x002d, B:9:0x0031, B:10:0x0038, B:14:0x00b1, B:16:0x00b7, B:18:0x00bd, B:20:0x00c3, B:21:0x00c9, B:25:0x00da, B:29:0x00d6, B:30:0x00e1, B:34:0x00f8, B:35:0x011f, B:39:0x012a, B:41:0x0154, B:45:0x01ab, B:47:0x01b1, B:48:0x01b7, B:50:0x01c4, B:53:0x016b, B:56:0x017c, B:58:0x0186, B:61:0x0190, B:69:0x01cf, B:74:0x005c, B:78:0x00a7, B:81:0x0067, B:83:0x0084, B:85:0x008e, B:87:0x0098, B:89:0x000e, B:91:0x0019, B:93:0x001d, B:95:0x01d3, B:96:0x01dc), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final synchronized Drawable d(Context context, int i, boolean z) {
        Drawable drawable;
        int i2;
        Drawable findDrawableByLayerId;
        int b2;
        PorterDuff.Mode mode;
        int i3 = i;
        synchronized (this) {
            boolean z2 = false;
            if (!this.f) {
                this.f = true;
                Drawable c = c(context, R.drawable.abc_vector_test);
                if (PhenotypeFlagMessage == null || (!(PhenotypeFlagMessage instanceof VectorDrawableCompat) && !"android.graphics.drawable.VectorDrawable".equals(c.getClass().getName()))) {
                    this.f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            if (this.e == null) {
                this.e = new TypedValue();
            }
            TypedValue typedValue = this.e;
            context.getResources().getValue(i3, typedValue, true);
            long j = (typedValue.assetCookie << 32) | typedValue.data;
            Drawable i4 = i(context, j);
            drawable = null;
            r12 = null;
            PorterDuff.Mode mode2 = null;
            if (i4 == null) {
                if (this.g == null) {
                    i4 = null;
                } else if (i3 == R.drawable.abc_cab_background_top_material) {
                    i4 = new LayerDrawable(new Drawable[]{c(context, R.drawable.abc_cab_background_internal_bg), c(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
                } else if (i3 == R.drawable.abc_ratingbar_material) {
                    i4 = DrawableCanvasRenderer.c(this, context, R.dimen.abc_star_big);
                } else if (i3 == R.drawable.abc_ratingbar_indicator_material) {
                    i4 = DrawableCanvasRenderer.c(this, context, R.dimen.abc_star_medium);
                } else if (i3 == R.drawable.abc_ratingbar_small_material) {
                    i4 = DrawableCanvasRenderer.c(this, context, R.dimen.abc_star_small);
                    i3 = R.drawable.abc_ratingbar_small_material;
                } else {
                    i4 = null;
                }
                if (i4 != null) {
                    i4.setChangingConfigurations(typedValue.changingConfigurations);
                    j(context, j, i4);
                }
            }
            if (i4 == null) {
                i4 = PrimesDebugEventsHelper.a(context, i3);
            }
            if (i4 != null) {
                ColorStateList a2 = a(context, i3);
                if (a2 != null) {
                    if (DrawableOpticalInsetsUtils.c(i4)) {
                        i4 = i4.mutate();
                    }
                    i4.setTintList(a2);
                    if (this.g != null && i3 == R.drawable.abc_switch_thumb_material) {
                        mode2 = PorterDuff.Mode.MULTIPLY;
                    }
                } else {
                    DrawableRendererInterface ruVar = this.g;
                    if (ruVar != null) {
                        if (i3 == R.drawable.abc_seekbar_track_material) {
                            LayerDrawable layerDrawable = (LayerDrawable) i4;
                            DrawableCanvasRenderer.d(layerDrawable.findDrawableByLayerId(android.R.id.background), ThemeUtilsCompat.b(context, R.attr.colorControlNormal), nn.a);
                            DrawableCanvasRenderer.d(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtilsCompat.b(context, R.attr.colorControlNormal), nn.a);
                            findDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.progress);
                            b2 = ThemeUtilsCompat.b(context, R.attr.colorControlActivated);
                            mode = nn.a;
                        } else if (i3 == R.drawable.abc_ratingbar_material || i3 == R.drawable.abc_ratingbar_indicator_material || i3 == R.drawable.abc_ratingbar_small_material) {
                            LayerDrawable layerDrawable2 = (LayerDrawable) i4;
                            DrawableCanvasRenderer.d(layerDrawable2.findDrawableByLayerId(android.R.id.background), ThemeUtilsCompat.a(context, R.attr.colorControlNormal), nn.a);
                            DrawableCanvasRenderer.d(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtilsCompat.b(context, R.attr.colorControlActivated), nn.a);
                            findDrawableByLayerId = layerDrawable2.findDrawableByLayerId(android.R.id.progress);
                            b2 = ThemeUtilsCompat.b(context, R.attr.colorControlActivated);
                            mode = nn.a;
                        }
                        DrawableCanvasRenderer.d(findDrawableByLayerId, b2, mode);
                    }
                    if (ruVar != null) {
                        PorterDuff.Mode mode3 = nn.a;
                        boolean a3 = DrawableCanvasRenderer.a(((DrawableCanvasRenderer) ruVar).a, i3);
                        int i5 = android.R.attr.colorBackground;
                        if (a3) {
                            i2 = -1;
                            z2 = true;
                            i5 = R.attr.colorControlNormal;
                        } else if (DrawableCanvasRenderer.a(((DrawableCanvasRenderer) ruVar).c, i3)) {
                            i2 = -1;
                            z2 = true;
                            i5 = R.attr.colorControlActivated;
                        } else if (DrawableCanvasRenderer.a(((DrawableCanvasRenderer) ruVar).d, i3)) {
                            mode3 = PorterDuff.Mode.MULTIPLY;
                            i2 = -1;
                            z2 = true;
                        } else if (i3 == R.drawable.abc_list_divider_mtrl_alpha) {
                            i2 = Math.round(40.8f);
                            z2 = true;
                            i5 = android.R.attr.colorForeground;
                        } else if (i3 == R.drawable.abc_dialog_material_background) {
                            i2 = -1;
                            z2 = true;
                        } else {
                            i2 = -1;
                            i5 = 0;
                        }
                        if (z2) {
                            Drawable mutate = DrawableOpticalInsetsUtils.c(i4) ? i4.mutate() : i4;
                            mutate.setColorFilter(VectorDrawableStateCache.b(ThemeUtilsCompat.b(context, i5), mode3));
                            if (i2 != -1) {
                                mutate.setAlpha(i2);
                            }
                        }
                    }
                    if (IcuMessageFormat) {
                        if (drawable != null) {
                            Rect rect = pc.a;
                        }
                    }
                }
            }
            drawable = i4;
            if (drawable != null) {
            }
        }
        return drawable;
    }
}
