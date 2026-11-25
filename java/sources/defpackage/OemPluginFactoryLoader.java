package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.embedded.projection.R;
import j$.util.Collection;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OemPluginFactoryLoader {
    private static CarUiViewFactory a;

    private OemPluginFactoryLoader() {
    }

    public static CarUiViewFactory a(Context context) {
        DefaultCarUiViewFactory anlVar;
        Set a2;
        CarUiViewFactory anhVar = a;
        if (anhVar != null) {
            return anhVar;
        }
        Context applicationContext = context.getApplicationContext();
        if (CarUiResourceUtils.n(applicationContext.getResources(), R.string.car_ui_plugin_enabled_system_property_name)) {
            String i = CarUiResourceUtils.i(applicationContext.getResources(), R.string.car_ui_plugin_package_system_property_name);
            if (TextUtils.isEmpty(NavInstructionTypeEnum)) {
                DefaultCarUiViewFactory anlVar2 = new DefaultCarUiViewFactory();
                a = anlVar2;
                return anlVar2;
            }
            try {
                PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(i, 0);
                Object applicationContext2 = applicationContext.getApplicationContext();
                if (!(applicationContext2 instanceof ExtensionSetProvider) || (a2 = ((ExtensionSetProvider) applicationContext2).a()) == null || !Collection.EL.stream(a2).anyMatch(new IntRangePredicate(1))) {
                    try {
                        Context createPackageContext = applicationContext.createPackageContext(i, 3);
                        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
                        ClassLoader classLoader = OemPluginFactoryLoader.class.getClassLoader();
                        classLoader.getClass();
                        ClassLoader classLoader2 = createPackageContext.getClassLoader();
                        ArrayList arrayList = new ArrayList(3);
                        if (applicationInfo.nativeLibraryDir != null) {
                            arrayList.add(applicationInfo.nativeLibraryDir);
                        }
                        if ((applicationInfo.flags & 268435456) == 0) {
                            ArrayList<String> arrayList2 = new ArrayList();
                            if (Process.is64Bit()) {
                                Collections.addAll(arrayList2, Build.SUPPORTED_64_BIT_ABIS);
                            } else {
                                Collections.addAll(arrayList2, Build.SUPPORTED_32_BIT_ABIS);
                            }
                            for (String str : arrayList2) {
                                String str2 = applicationInfo.sourceDir;
                                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 6 + String.valueOf(str).length());
                                StaggeredGridLayoutParams.append(str2);
                                StaggeredGridLayoutParams.append("!/lib/");
                                StaggeredGridLayoutParams.append(str);
                                arrayList.add(StaggeredGridLayoutParams.toString());
                            }
                        }
                        String join = arrayList.size() == 0 ? null : TextUtils.join(File.pathSeparator, arrayList);
                        String str3 = applicationInfo.sourceDir;
                        if (applicationInfo.sharedLibraryFiles != null && applicationInfo.sharedLibraryFiles.length > 0) {
                            String valueOf = String.valueOf(str3);
                            String str4 = File.pathSeparator;
                            String join2 = TextUtils.join(File.pathSeparator, applicationInfo.sharedLibraryFiles);
                            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(str4).length() + String.valueOf(join2).length());
                            sb2.append(valueOf);
                            sb2.append(str4);
                            sb2.append(join2);
                            str3 = sb2.toString();
                        }
                        try {
                            Method declaredMethod = new CarUiOemClassLoader(str3, join, classLoader, classLoader2).loadClass("com.android.car.ui.pluginsupport.OemApiUtil").getDeclaredMethod("getPluginFactory", Context.class, String.class);
                            declaredMethod.setAccessible(true);
                            CarUiViewFactory anhVar2 = (CarUiViewFactory) declaredMethod.invoke(null, createPackageContext, applicationContext.getPackageName());
                            a = anhVar2;
                            if (anhVar2 == null) {
                                Log.e("carui", "Could not load CarUi plugin");
                                DefaultCarUiViewFactory anlVar3 = new DefaultCarUiViewFactory();
                                a = anlVar3;
                                return anlVar3;
                            }
                            packageInfo.getLongVersionCode();
                            String packageName = applicationContext.getPackageName();
                            String.valueOf(NavInstructionTypeEnum).length();
                            String.valueOf(packageName).length();
                            return a;
                        } catch (ReflectiveOperationException e) {
                            Log.e("carui", "Could not load CarUi plugin", e);
                            DefaultCarUiViewFactory anlVar4 = new DefaultCarUiViewFactory();
                            a = anlVar4;
                            return anlVar4;
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        StringBuilder sb3 = new StringBuilder(String.valueOf(NavInstructionTypeEnum).length() + 52);
                        sb3.append("Could not load CarUi plugin, package ");
                        sb3.append(NavInstructionTypeEnum);
                        sb3.append(" was not found.");
                        Log.e("carui", sb3.toString());
                        a = new DefaultCarUiViewFactory();
                        return a;
                    }
                }
                String.valueOf(applicationContext.getPackageName()).length();
                String.valueOf(NavInstructionTypeEnum).length();
                anlVar = new DefaultCarUiViewFactory();
            } catch (PackageManager.NameNotFoundException e3) {
                StringBuilder sb4 = new StringBuilder(String.valueOf(NavInstructionTypeEnum).length() + 52);
                sb4.append("Could not load CarUi plugin, package ");
                sb4.append(NavInstructionTypeEnum);
                sb4.append(" was not found.");
                Log.e("carui", sb4.toString());
                DefaultCarUiViewFactory anlVar5 = new DefaultCarUiViewFactory();
                a = anlVar5;
                return anlVar5;
            }
        } else {
            anlVar = new DefaultCarUiViewFactory();
        }
        a = anlVar;
        return anlVar;
    }
}
