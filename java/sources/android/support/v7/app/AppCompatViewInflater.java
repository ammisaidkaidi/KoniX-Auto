package android.support.v7.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import defpackage.ViewCompatAccessibilityStatics;
import defpackage.ViewOnClickMethodResolver;
import defpackage.DecorToolbarHelper;
import defpackage.AppCompatAutoCompleteTextView;
import defpackage.AppCompatButton;
import defpackage.AppCompatCheckBox;
import defpackage.AppCompatCheckedTextView;
import defpackage.AppCompatEditText;
import defpackage.AppCompatImageButton;
import defpackage.AppCompatImageView;
import defpackage.AppCompatMultiAutoCompleteTextView;
import defpackage.AppCompatRadioButton;
import defpackage.AppCompatRatingBar;
import defpackage.AppCompatSeekBar;
import defpackage.AppCompatSpinner;
import defpackage.AppCompatTextView;
import defpackage.AppCompatToggleButton;
import defpackage.TintContextWrapper;
import defpackage.OverrideConfigurationContextWrapper;
import defpackage.SimpleArrayMap;
import java.lang.reflect.Constructor;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AppCompatViewInflater {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final SimpleArrayMap sConstructorMap = new SimpleArrayMap();

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if ((context instanceof ContextWrapper) && ViewCompatAccessibilityStatics.D(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new ViewOnClickMethodResolver(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) {
        String str3;
        SimpleArrayMap viVar = sConstructorMap;
        Constructor constructor = (Constructor) viVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception e) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            viVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.mConstructorArgs);
    }

    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.mConstructorArgs;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (str.indexOf(46) != -1) {
                return createViewByPrefix(context, str, null);
            }
            int i = 0;
            while (true) {
                String[] strArr = sClassPrefixList;
                if (i >= strArr.length) {
                    return null;
                }
                View createViewByPrefix = createViewByPrefix(context, str, strArr[i]);
                if (createViewByPrefix != null) {
                    return createViewByPrefix;
                }
                i++;
            }
        } catch (Exception e) {
            return null;
        } finally {
            Object[] objArr2 = this.mConstructorArgs;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    private static Context themifyContext(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ki.x, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(0, 0) : 0;
        if (z2 && resourceId == 0) {
            resourceId = obtainStyledAttributes.getResourceId(4, 0);
        }
        obtainStyledAttributes.recycle();
        return (resourceId == 0 || ((context instanceof OverrideConfigurationContextWrapper) && ((OverrideConfigurationContextWrapper) context).a == resourceId)) ? context : new OverrideConfigurationContextWrapper(context, resourceId);
    }

    private void verifyNotNull(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    protected AppCompatAutoCompleteTextView createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    protected AppCompatCheckedTextView createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    protected AppCompatEditText createEditText(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    protected AppCompatImageButton createImageButton(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet, com.google.android.embedded.projection.R.attr.imageButtonStyle);
    }

    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected AppCompatMultiAutoCompleteTextView createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatRadioButton createRadioButton(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    protected AppCompatRatingBar createRatingBar(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    protected AppCompatSeekBar createSeekBar(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    protected AppCompatSpinner createSpinner(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected AppCompatToggleButton createToggleButton(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0059, code lost:
    
        if (r2.equals("ImageView") != false) goto L60;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        View createTextView;
        Context context2 = (!z || view == null) ? context : view.getContext();
        char c = 1;
        if (!z2) {
            if (z3) {
                z3 = true;
            }
            if (z4) {
                TintContextWrapper.a(context2);
            }
            switch (str.hashCode()) {
                case -1946472170:
                    if (str.equals("RatingBar")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -1455429095:
                    if (str.equals("CheckedTextView")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -1346021293:
                    if (str.equals("MultiAutoCompleteTextView")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -938935918:
                    if (str.equals("TextView")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -937446323:
                    if (str.equals("ImageButton")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -658531749:
                    if (str.equals("SeekBar")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case -339785223:
                    if (str.equals("Spinner")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 776382189:
                    if (str.equals("RadioButton")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 799298502:
                    if (str.equals("ToggleButton")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 1125864064:
                    break;
                case 1413872058:
                    if (str.equals("AutoCompleteTextView")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 1601505219:
                    if (str.equals("CheckBox")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1666676343:
                    if (str.equals("EditText")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 2001146706:
                    if (str.equals("Button")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    createTextView = createTextView(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 1:
                    createTextView = createImageView(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 2:
                    createTextView = createButton(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 3:
                    createTextView = createEditText(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 4:
                    createTextView = createSpinner(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 5:
                    createTextView = createImageButton(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 6:
                    createTextView = createCheckBox(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 7:
                    createTextView = createRadioButton(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case '\b':
                    createTextView = createCheckedTextView(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case '\t':
                    createTextView = createAutoCompleteTextView(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case '\n':
                    createTextView = createMultiAutoCompleteTextView(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case 11:
                    createTextView = createRatingBar(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case '\f':
                    createTextView = createSeekBar(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                case '\r':
                    createTextView = createToggleButton(context2, attributeSet);
                    verifyNotNull(createTextView, str);
                    break;
                default:
                    createTextView = createView(context2, str, attributeSet);
                    break;
            }
            if (createTextView == null && context != context2) {
                createTextView = createViewFromTag(context2, str, attributeSet);
            }
            if (createTextView != null) {
                checkOnClickListener(createTextView, attributeSet);
            }
            return createTextView;
        }
        context2 = themifyContext(context2, attributeSet, z2, z3);
        if (z4) {
        }
        switch (str.hashCode()) {
            case -1946472170:
                break;
            case -1455429095:
                break;
            case -1346021293:
                break;
            case -938935918:
                break;
            case -937446323:
                break;
            case -658531749:
                break;
            case -339785223:
                break;
            case 776382189:
                break;
            case 799298502:
                break;
            case 1125864064:
                break;
            case 1413872058:
                break;
            case 1601505219:
                break;
            case 1666676343:
                break;
            case 2001146706:
                break;
        }
        switch (c) {
        }
        if (createTextView == null) {
            createTextView = createViewFromTag(context2, str, attributeSet);
        }
        if (createTextView != null) {
        }
        return createTextView;
    }
}
