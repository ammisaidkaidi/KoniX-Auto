package defpackage;

import com.android.car.ui.pluginsupport.OemApiUtil;
import dalvik.system.PathClassLoader;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CarUiOemClassLoader extends PathClassLoader {
    private static final Pattern a;
    private static final Pattern b;
    private final ClassLoader c;

    static {
        String quote = Pattern.quote(OemApiUtil.class.getName());
        StringBuilder sb = new StringBuilder(String.valueOf(quote).length() + 58);
        StaggeredGridLayoutParams.append("^com\\.android\\.car\\.ui\\..*AdapterV[0-9]+(\\$.*)?$|Lambda|^");
        StaggeredGridLayoutParams.append(quote);
        StaggeredGridLayoutParams.append("$");
        a = Pattern.compile(StaggeredGridLayoutParams.toString());
        b = Pattern.compile("^com\\.android\\.car\\.ui\\.plugin\\.(oemapis\\..*|PluginVersionProviderImpl)$");
    }

    public CarUiOemClassLoader(String str, String str2, ClassLoader classLoader, ClassLoader classLoader2) {
        super(str, str2, classLoader);
        this.c = classLoader2;
    }

    @Override // java.lang.ClassLoader
    protected final Class loadClass(String str, boolean z) {
        Class findLoadedClass = findLoadedClass(str);
        if (findLoadedClass != null) {
            return findLoadedClass;
        }
        try {
            return Object.class.getClassLoader().loadClass(str);
        } catch (ClassNotFoundException e) {
            ClassNotFoundException e2 = null;
            if (str != null && a.matcher(str).find()) {
                try {
                    return findClass(str);
                } catch (ClassNotFoundException e3) {
                    e2 = e3;
                    if (this.c != null && b.matcher(str).matches()) {
                        try {
                            return this.c.loadClass(str);
                        } catch (ClassNotFoundException e4) {
                            return getParent().loadClass(str);
                        }
                    }
                    return getParent().loadClass(str);
                }
            }
            if (this.c != null) {
                return this.c.loadClass(str);
            }
            try {
                return getParent().loadClass(str);
            } catch (ClassNotFoundException e5) {
                if (e2 == null) {
                    throw e5;
                }
                throw e2;
            }
        }
    }
}
