package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ResourcesCompatTypefaceLoader {
    static {
        new ThreadLocal();
        new WeakHashMap(0);
    }

    public static Typeface a(Context context, int i, TypedValue typedValue, int i2, ResourcesCompatFontCallback ebVar) {
        if (context.isRestricted()) {
            return null;
        }
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        return b(context, resources, typedValue, i, i2, ebVar);
    }

    private static Typeface b(Context context, Resources resources, TypedValue typedValue, int i, int i2, ResourcesCompatFontCallback ebVar) {
        int next;
        FontFamilyConfig dvVar;
        List arrayList;
        List list;
        if (typedValue.string == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(NavInstructionTypeEnum) + "\" (" + Integer.toHexString(NavInstructionTypeEnum) + ") is not a Font: " + typedValue);
        }
        String charSequence = typedValue.string.toString();
        if (!charSequence.startsWith("res/")) {
            ResourcesCompatFontCallback.d();
            return null;
        }
        Typeface typeface = (Typeface) FontProviderQueryHelper_ek.b.b(FontProviderQueryHelper_ek.c(resources, i, i2));
        if (typeface != null) {
            ebVar.b(typeface);
            return typeface;
        }
        try {
            if (!charSequence.toLowerCase().endsWith(".xml")) {
                Typeface b = FontProviderQueryHelper_ek.b(context, resources, i, charSequence, i2);
                if (ProtoLiteMessageBase != null) {
                    ebVar.b(ProtoLiteMessageBase);
                } else {
                    ResourcesCompatFontCallback.d();
                }
                return b;
            }
            XmlResourceParser xml = resources.getXml(NavInstructionTypeEnum);
            do {
                next = xml.next();
                if (next == 2) {
                    xml.require(2, null, "font-family");
                    if (xml.getName().equals("font-family")) {
                        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), as.b);
                        String string = obtainAttributes.getString(0);
                        String string2 = obtainAttributes.getString(4);
                        String string3 = obtainAttributes.getString(5);
                        int resourceId = obtainAttributes.getResourceId(1, 0);
                        int integer = obtainAttributes.getInteger(2, 1);
                        int integer2 = obtainAttributes.getInteger(3, 500);
                        String string4 = obtainAttributes.getString(6);
                        obtainAttributes.recycle();
                        if (string == null || string2 == null || string3 == null) {
                            ArrayList arrayList2 = new ArrayList();
                            while (xml.next() != 3) {
                                if (xml.getEventType() == 2) {
                                    if (xml.getName().equals("font")) {
                                        TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xml), as.c);
                                        int i3 = obtainAttributes2.getInt(true != obtainAttributes2.hasValue(8) ? 1 : 8, 400);
                                        boolean z = obtainAttributes2.getInt(true != obtainAttributes2.hasValue(6) ? 2 : 6, 0) == 1;
                                        int i4 = true != obtainAttributes2.hasValue(9) ? 3 : 9;
                                        String string5 = obtainAttributes2.getString(true != obtainAttributes2.hasValue(7) ? 4 : 7);
                                        int i5 = obtainAttributes2.getInt(i4, 0);
                                        int i6 = true != obtainAttributes2.hasValue(5) ? 0 : 5;
                                        int resourceId2 = obtainAttributes2.getResourceId(i6, 0);
                                        String string6 = obtainAttributes2.getString(i6);
                                        obtainAttributes2.recycle();
                                        while (xml.next() != 3) {
                                            r.j(xml);
                                        }
                                        arrayList2.add(new FontFileConfigEntry(string6, i3, z, string5, i5, resourceId2));
                                    } else {
                                        r.j(xml);
                                    }
                                }
                            }
                            dvVar = arrayList2.isEmpty() ? null : new XmlFontFamilyConfig((FontFileConfigEntry[]) arrayList2.toArray(new FontFileConfigEntry[arrayList2.size()]));
                        } else {
                            while (xml.next() != 3) {
                                r.j(xml);
                            }
                            if (resourceId == 0) {
                                list = Collections.emptyList();
                            } else {
                                TypedArray obtainTypedArray = resources.obtainTypedArray(resourceId);
                                try {
                                    if (obtainTypedArray.length() == 0) {
                                        arrayList = Collections.emptyList();
                                    } else {
                                        arrayList = new ArrayList();
                                        if (obtainTypedArray.getType(0) == 1) {
                                            for (int i7 = 0; i7 < obtainTypedArray.length(); i7++) {
                                                int resourceId3 = obtainTypedArray.getResourceId(i7, 0);
                                                if (resourceId3 != 0) {
                                                    arrayList.add(r.i(resources.getStringArray(resourceId3)));
                                                }
                                            }
                                        } else {
                                            arrayList.add(r.i(resources.getStringArray(resourceId)));
                                        }
                                    }
                                    list = arrayList;
                                } finally {
                                    obtainTypedArray.recycle();
                                }
                            }
                            dvVar = new ProviderFontFamilyConfig(new FontRequestData(string, string2, string3, list), integer, integer2, string4);
                        }
                    } else {
                        r.j(xml);
                        dvVar = null;
                    }
                    if (dvVar != null) {
                        return FontProviderQueryHelper_ek.d(context, dvVar, resources, i, i2, ebVar);
                    }
                    Log.e("ResourcesCompat", "Failed to find font-family tag");
                    ResourcesCompatFontCallback.d();
                    return null;
                }
            } while (next != 1);
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e) {
            Log.e("ResourcesCompat", "Failed to read xml resource ".concat(String.valueOf(charSequence)), e);
            ResourcesCompatFontCallback.d();
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(String.valueOf(charSequence)), e2);
            ResourcesCompatFontCallback.d();
            return null;
        }
    }
}
