package defpackage;

import com.google.common.flogger.backend.google.GooglePlatform;
import com.google.common.flogger.backend.system.DefaultPlatform;
import java.lang.reflect.InvocationTargetException;
import java.util.Comparator;
import java.util.SortedSet;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LogConfigProvider {
    public static int d(Level level) {
        int intValue = level.intValue();
        if (intValue >= Level.SEVERE.intValue()) {
            return 6;
        }
        if (intValue >= Level.WARNING.intValue()) {
            return 5;
        }
        if (intValue >= Level.INFO.intValue()) {
            return 4;
        }
        return intValue >= Level.FINE.intValue() ? 3 : 2;
    }

    public static String e(String str, String str2) {
        if (str.length() + str2.length() > 23) {
            int i = -1;
            for (int length = str2.length() - 1; length >= 0; length--) {
                char charAt = str2.charAt(length);
                if (charAt == '.' || charAt == '$') {
                    i = length;
                    break;
                }
            }
            str2 = str2.substring(NavInstructionTypeEnum + 1);
        }
        String valueOf = String.valueOf(str2);
        String concat = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
        return concat.substring(0, Math.min(concat.length(), 23));
    }

    public static FloggerPlatformFinder f() {
        try {
            return (FloggerPlatformFinder) AndroidPlatformImpl.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | NoClassDefFoundError | NoSuchMethodException | InvocationTargetException e) {
            try {
                return (FloggerPlatformFinder) GooglePlatform.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException | InstantiationException | NoClassDefFoundError | NoSuchMethodException | InvocationTargetException e2) {
                try {
                    return (FloggerPlatformFinder) DefaultPlatform.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (IllegalAccessException | InstantiationException | NoClassDefFoundError | NoSuchMethodException | InvocationTargetException e3) {
                    return null;
                }
            }
        }
    }

    public static boolean g(Comparator comparator, Iterable iterable) {
        Comparator comparator2;
        comparator.getClass();
        iterable.getClass();
        if (iterable instanceof SortedSet) {
            comparator2 = ((SortedSet) iterable).comparator();
            if (comparator2 == null) {
                comparator2 = crs.a;
            }
        } else {
            if (!(iterable instanceof SortedIterableInterface)) {
                return false;
            }
            comparator2 = ((SortedIterableInterface) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }

    public LogMetadata a() {
        return cuf.a;
    }

    public SortedMetadataSnapshot b() {
        return cwa.b;
    }

    public void c(String str, Level level, boolean z) {
    }
}
