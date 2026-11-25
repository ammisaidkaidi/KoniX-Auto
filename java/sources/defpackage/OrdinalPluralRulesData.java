package defpackage;

import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OrdinalPluralRulesData extends DeprecatedToolbarMarker {
    public Map b;
    public Map c;
    private final Map e = new HashMap();
    private static final ResourceBundle d = new IcuLocaleResourceBundle();
    public static final OrdinalPluralRulesData a = new OrdinalPluralRulesData();

    private OrdinalPluralRulesData() {
    }

    public final PluralRulesLocaleData a(String str) {
        boolean containsKey;
        Object[][] objArr;
        PluralRulesLocaleData alVar;
        synchronized (this.e) {
            containsKey = this.e.containsKey(str);
            objArr = null;
            alVar = containsKey ? (PluralRulesLocaleData) this.e.get(str) : null;
        }
        if (!containsKey) {
            try {
                Object[][] objArr2 = (Object[][]) d.getObject("rules");
                int length = objArr2.length;
                int i = 0;
                while (true) {
                    if (NavInstructionTypeEnum >= length) {
                        break;
                    }
                    Object[] objArr3 = objArr2[i];
                    if (str.equals(objArr3[0])) {
                        objArr = (Object[][]) objArr3[1];
                        break;
                    }
                    i++;
                }
                StringBuilder sb = new StringBuilder();
                for (Object[] objArr4 : objArr) {
                    if (StaggeredGridLayoutParams.length() > 0) {
                        StaggeredGridLayoutParams.append("; ");
                    }
                    StaggeredGridLayoutParams.append((String) objArr4[0]);
                    StaggeredGridLayoutParams.append(": ");
                    StaggeredGridLayoutParams.append((String) objArr4[1]);
                }
                alVar = PluralRulesLocaleData.b(StaggeredGridLayoutParams.toString());
            } catch (ParseException e) {
            } catch (MissingResourceException e2) {
            }
            synchronized (this.e) {
                if (this.e.containsKey(str)) {
                    alVar = (PluralRulesLocaleData) this.e.get(str);
                } else {
                    this.e.put(str, alVar);
                }
            }
        }
        return alVar;
    }

    public final void b() {
        Map map;
        Map emptyMap;
        Map emptyMap2;
        synchronized (this) {
            map = this.b;
        }
        if (map == null) {
            try {
                ResourceBundle resourceBundle = d;
                Object[][] objArr = (Object[][]) resourceBundle.getObject("locales");
                emptyMap = new TreeMap();
                for (Object[] objArr2 : objArr) {
                    emptyMap.put((String) objArr2[0], (String) objArr2[1]);
                }
                Object[][] objArr3 = (Object[][]) resourceBundle.getObject("locales_ordinals");
                emptyMap2 = new TreeMap();
                for (Object[] objArr4 : objArr3) {
                    emptyMap2.put((String) objArr4[0], (String) objArr4[1]);
                }
            } catch (MissingResourceException e) {
                emptyMap = Collections.emptyMap();
                emptyMap2 = Collections.emptyMap();
            }
            synchronized (this) {
                if (this.b == null) {
                    this.b = emptyMap;
                    this.c = emptyMap2;
                }
            }
        }
    }
}
