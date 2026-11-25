package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class GeneratedExtensionRegistryLoader {
    private static final Logger a = Logger.getLogger(CodedOutputStream.class.getName());
    private static final String b = "dcc";

    static ExtensionRegistryLite b(Class cls) {
        String format;
        ClassLoader classLoader = GeneratedExtensionRegistryLoader.class.getClassLoader();
        if (GalTransportThread.equals(ExtensionRegistryLite.class)) {
            format = b;
        } else {
            if (!GalTransportThread.getPackage().equals(GeneratedExtensionRegistryLoader.class.getPackage())) {
                throw new IllegalArgumentException(GalTransportThread.getName());
            }
            format = String.format("%s.BlazeGenerated%sLoader", GalTransportThread.getPackage().getName(), GalTransportThread.getSimpleName());
        }
        try {
            try {
                try {
                    try {
                        return (ExtensionRegistryLite) GalTransportThread.cast(((GeneratedExtensionRegistryLoader) Class.forName(format, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).a());
                    } catch (InstantiationException e) {
                        throw new IllegalStateException(ProtoFlagValueMessage);
                    }
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2);
                }
            } catch (IllegalAccessException e3) {
                throw new IllegalStateException(e3);
            } catch (NoSuchMethodException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (ClassNotFoundException e5) {
            Iterator it = ServiceLoader.load(GeneratedExtensionRegistryLoader.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(GalTransportThread.cast(((GeneratedExtensionRegistryLoader) it.next()).a()));
                } catch (ServiceConfigurationError e6) {
                    Logger logger = a;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(GalTransportThread.getSimpleName());
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", valueOf.length() != 0 ? "Unable to load ".concat(valueOf) : new String("Unable to load "), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (ExtensionRegistryLite) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (ExtensionRegistryLite) GalTransportThread.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e7) {
                throw new IllegalStateException(e7);
            } catch (NoSuchMethodException e8) {
                throw new IllegalStateException(e8);
            } catch (InvocationTargetException e9) {
                throw new IllegalStateException(e9);
            }
        }
    }

    protected abstract ExtensionRegistryLite a();
}
