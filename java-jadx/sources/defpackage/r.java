package defpackage;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.google.android.embedded.projection.R;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class r {
    public static /* synthetic */ String a(int i) {
        switch (i) {
            case 1:
                return "NONE";
            case 2:
                return "SIMPLE";
            case 3:
                return "CHOICE";
            case 4:
                return "PLURAL";
            case 5:
                return "SELECT";
            case 6:
                return "SELECTORDINAL";
            default:
                return "null";
        }
    }

    public static boolean b(int i) {
        return i == 4 || i == 6;
    }

    public static int c(int i) {
        return i - 2;
    }

    public static int d(int i) {
        return i - 2;
    }

    public static bw e(Context context, br brVar, boolean z, boolean z2) {
        bo boVar = brVar.S;
        int i = 0;
        int i2 = boVar == null ? 0 : boVar.f;
        int p = z2 ? z ? brVar.p() : brVar.q() : z ? brVar.n() : brVar.o();
        brVar.P(0, 0, 0, 0);
        ViewGroup viewGroup = brVar.O;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            brVar.O.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = brVar.O;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        if (p != 0) {
            i = p;
        } else if (i2 != 0) {
            switch (i2) {
                case 4097:
                    if (true == z) {
                        i = R.animator.fragment_open_enter;
                        break;
                    } else {
                        i = R.animator.fragment_open_exit;
                        break;
                    }
                case 4099:
                    if (true == z) {
                        i = R.animator.fragment_fade_enter;
                        break;
                    } else {
                        i = R.animator.fragment_fade_exit;
                        break;
                    }
                case 4100:
                    if (!z) {
                        i = u(context, android.R.attr.activityOpenExitAnimation);
                        break;
                    } else {
                        i = u(context, android.R.attr.activityOpenEnterAnimation);
                        break;
                    }
                case 8194:
                    if (true == z) {
                        i = R.animator.fragment_close_enter;
                        break;
                    } else {
                        i = R.animator.fragment_close_exit;
                        break;
                    }
                case 8197:
                    if (!z) {
                        i = u(context, android.R.attr.activityCloseExitAnimation);
                        break;
                    } else {
                        i = u(context, android.R.attr.activityCloseEnterAnimation);
                        break;
                    }
                default:
                    i = -1;
                    break;
            }
        }
        if (i != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(i));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, i);
                    if (loadAnimation != null) {
                        return new bw(loadAnimation);
                    }
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                }
            }
            try {
                Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
                if (loadAnimator != null) {
                    return new bw(loadAnimator);
                }
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i);
                if (loadAnimation2 != null) {
                    return new bw(loadAnimation2);
                }
            }
        }
        return null;
    }

    public static int g(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i = (i * 31) + str.charAt(i2);
        }
        return i;
    }

    public static boolean h(int i) {
        return i == 13 || i == 14;
    }

    public static List i(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    public static void j(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }

    public static int k(Context context, String str) {
        int a;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        String permissionToOp = AppOpsManager.permissionToOp(str);
        if (permissionToOp == null) {
            return 0;
        }
        if (packageName == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            packageName = packagesForUid[0];
        }
        int myUid2 = Process.myUid();
        String packageName2 = context.getPackageName();
        if (myUid2 != myUid || !Objects.equals(packageName2, packageName)) {
            a = qs.a(context, permissionToOp, packageName);
        } else if (Build.VERSION.SDK_INT >= 29) {
            AppOpsManager b = xp.b(context);
            a = xp.a(b, permissionToOp, Binder.getCallingUid(), packageName);
            if (a == 0) {
                a = xp.a(b, permissionToOp, myUid, xp.c(context));
            }
        } else {
            a = qs.a(context, permissionToOp, packageName);
        }
        return a != 0 ? -2 : 0;
    }

    public static /* synthetic */ String l(int i) {
        switch (i) {
            case 1:
                return "REMOVED";
            case 2:
                return "VISIBLE";
            case 3:
                return "GONE";
            case 4:
                return "INVISIBLE";
            default:
                return "null";
        }
    }

    public static int m(int i) {
        switch (i) {
            case 0:
                return 2;
            case 4:
                return 4;
            case 8:
                return 3;
            default:
                throw new IllegalArgumentException("Unknown visibility " + i);
        }
    }

    public static int n(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        return m(view.getVisibility());
    }

    public static void o(int i, View view) {
        switch (i - 1) {
            case 0:
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    if (cr.R(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: Removing view ");
                        sb.append(view);
                        sb.append(" from container ");
                        sb.append(viewGroup);
                    }
                    viewGroup.removeView(view);
                    break;
                }
                break;
            case 1:
                if (cr.R(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: Setting view ");
                    sb2.append(view);
                    sb2.append(" to VISIBLE");
                }
                view.setVisibility(0);
                break;
            case 2:
                if (cr.R(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("SpecialEffectsController: Setting view ");
                    sb3.append(view);
                    sb3.append(" to GONE");
                }
                view.setVisibility(8);
                break;
            default:
                if (cr.R(2)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("SpecialEffectsController: Setting view ");
                    sb4.append(view);
                    sb4.append(" to INVISIBLE");
                }
                view.setVisibility(4);
                break;
        }
    }

    public static /* synthetic */ String p(int i) {
        switch (i) {
            case 1:
                return "NONE";
            case 2:
                return "ADDING";
            case 3:
                return "REMOVING";
            default:
                return "null";
        }
    }

    public static Intent q(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        String s = s(activity);
        if (s == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(activity, s);
        try {
            return t(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + s + "' in manifest");
            return null;
        }
    }

    public static Intent r(Context context, ComponentName componentName) {
        String t = t(context, componentName);
        if (t == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), t);
        return t(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String s(Activity activity) {
        try {
            return t(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static String t(Context context, ComponentName componentName) {
        String string;
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(componentName, Build.VERSION.SDK_INT >= 29 ? 269222528 : 787072);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        if (activityInfo.metaData == null || (string = activityInfo.metaData.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        return string.charAt(0) == '.' ? String.valueOf(context.getPackageName()).concat(string) : string;
    }

    private static int u(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static final dgl f(int i) {
        switch (i - 1) {
            case 0:
                ddf c = dgl.c();
                c.z(2);
                return (dgl) c.h();
            case 1:
                ddf c2 = dgl.c();
                c2.z(2);
                return (dgl) c2.h();
            case 2:
                ddf c3 = dgl.c();
                c3.z(2);
                return (dgl) c3.h();
            case 3:
                ddf c4 = dgl.c();
                c4.z(1);
                return (dgl) c4.h();
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 198:
            case 221:
            case 248:
            case 249:
            default:
                ddf c5 = dgl.c();
                c5.z(1);
                return (dgl) c5.h();
            case 100:
                ddf c6 = dgl.c();
                c6.z(3);
                return (dgl) c6.h();
            case 101:
                ddf c7 = dgl.c();
                c7.z(3);
                return (dgl) c7.h();
            case 102:
                ddf c8 = dgl.c();
                c8.z(3);
                return (dgl) c8.h();
            case 103:
                ddf c9 = dgl.c();
                c9.z(3);
                return (dgl) c9.h();
            case 104:
                ddf c10 = dgl.c();
                c10.z(3);
                return (dgl) c10.h();
            case 105:
                ddf c11 = dgl.c();
                c11.z(3);
                return (dgl) c11.h();
            case 106:
                ddf c12 = dgl.c();
                c12.z(3);
                return (dgl) c12.h();
            case 107:
                ddf c13 = dgl.c();
                c13.z(2);
                return (dgl) c13.h();
            case 108:
                ddf c14 = dgl.c();
                c14.z(3);
                return (dgl) c14.h();
            case 109:
                ddf c15 = dgl.c();
                c15.z(3);
                return (dgl) c15.h();
            case 110:
                ddf c16 = dgl.c();
                c16.z(2);
                return (dgl) c16.h();
            case 111:
                ddf c17 = dgl.c();
                c17.z(3);
                return (dgl) c17.h();
            case 112:
                ddf c18 = dgl.c();
                c18.z(3);
                return (dgl) c18.h();
            case 113:
                ddf c19 = dgl.c();
                c19.z(3);
                return (dgl) c19.h();
            case 114:
                ddf c20 = dgl.c();
                c20.z(2);
                return (dgl) c20.h();
            case 115:
                ddf c21 = dgl.c();
                c21.z(3);
                return (dgl) c21.h();
            case 116:
                ddf c22 = dgl.c();
                c22.z(3);
                return (dgl) c22.h();
            case 117:
                ddf c23 = dgl.c();
                c23.z(3);
                return (dgl) c23.h();
            case 118:
                ddf c24 = dgl.c();
                c24.z(3);
                return (dgl) c24.h();
            case 119:
                ddf c25 = dgl.c();
                c25.z(3);
                return (dgl) c25.h();
            case 120:
                ddf c26 = dgl.c();
                c26.z(3);
                return (dgl) c26.h();
            case 121:
                ddf c27 = dgl.c();
                c27.z(3);
                return (dgl) c27.h();
            case 122:
                ddf c28 = dgl.c();
                c28.z(3);
                return (dgl) c28.h();
            case 123:
                ddf c29 = dgl.c();
                c29.z(3);
                return (dgl) c29.h();
            case 124:
                ddf c30 = dgl.c();
                c30.z(3);
                return (dgl) c30.h();
            case 125:
                ddf c31 = dgl.c();
                c31.z(3);
                return (dgl) c31.h();
            case 126:
                ddf c32 = dgl.c();
                c32.z(3);
                return (dgl) c32.h();
            case 127:
                ddf c33 = dgl.c();
                c33.z(3);
                return (dgl) c33.h();
            case 128:
                ddf c34 = dgl.c();
                c34.z(3);
                return (dgl) c34.h();
            case 129:
                ddf c35 = dgl.c();
                c35.z(3);
                return (dgl) c35.h();
            case 130:
                ddf c36 = dgl.c();
                c36.z(3);
                return (dgl) c36.h();
            case 131:
                ddf n = dgl.c.n();
                n.z(3);
                return (dgl) n.h();
            case 132:
                ddf c37 = dgl.c();
                c37.z(3);
                return (dgl) c37.h();
            case 133:
                ddf c38 = dgl.c();
                c38.z(3);
                return (dgl) c38.h();
            case 134:
                ddf c39 = dgl.c();
                c39.z(3);
                return (dgl) c39.h();
            case 135:
                ddf c40 = dgl.c();
                c40.z(2);
                return (dgl) c40.h();
            case 136:
                ddf c41 = dgl.c();
                c41.z(2);
                return (dgl) c41.h();
            case 137:
                ddf c42 = dgl.c();
                c42.z(2);
                return (dgl) c42.h();
            case 138:
                ddf c43 = dgl.c();
                c43.z(2);
                return (dgl) c43.h();
            case 139:
                ddf c44 = dgl.c();
                c44.z(2);
                return (dgl) c44.h();
            case 140:
                ddf c45 = dgl.c();
                c45.z(2);
                return (dgl) c45.h();
            case 141:
                ddf c46 = dgl.c();
                c46.z(2);
                return (dgl) c46.h();
            case 142:
                ddf c47 = dgl.c();
                c47.z(2);
                return (dgl) c47.h();
            case 143:
                ddf c48 = dgl.c();
                c48.z(2);
                return (dgl) c48.h();
            case 144:
                ddf c49 = dgl.c();
                c49.z(2);
                return (dgl) c49.h();
            case 145:
                ddf c50 = dgl.c();
                c50.z(2);
                return (dgl) c50.h();
            case 146:
                ddf c51 = dgl.c();
                c51.z(2);
                return (dgl) c51.h();
            case 147:
                ddf c52 = dgl.c();
                c52.z(2);
                return (dgl) c52.h();
            case 148:
                ddf c53 = dgl.c();
                c53.z(2);
                return (dgl) c53.h();
            case 149:
                ddf c54 = dgl.c();
                c54.z(2);
                return (dgl) c54.h();
            case 150:
                ddf c55 = dgl.c();
                c55.z(3);
                return (dgl) c55.h();
            case 151:
                ddf c56 = dgl.c();
                c56.z(3);
                return (dgl) c56.h();
            case 152:
                ddf c57 = dgl.c();
                c57.z(3);
                return (dgl) c57.h();
            case 153:
                ddf c58 = dgl.c();
                c58.z(3);
                return (dgl) c58.h();
            case 154:
                ddf c59 = dgl.c();
                c59.z(3);
                return (dgl) c59.h();
            case 155:
                ddf c60 = dgl.c();
                c60.z(3);
                return (dgl) c60.h();
            case 156:
                ddf c61 = dgl.c();
                c61.z(3);
                return (dgl) c61.h();
            case 157:
                ddf n2 = dgl.c.n();
                n2.z(23);
                return (dgl) n2.h();
            case 158:
                ddf c62 = dgl.c();
                c62.z(2);
                return (dgl) c62.h();
            case 159:
                ddf c63 = dgl.c();
                c63.z(2);
                return (dgl) c63.h();
            case 160:
                ddf c64 = dgl.c();
                c64.z(2);
                return (dgl) c64.h();
            case 161:
                ddf c65 = dgl.c();
                ddf c66 = dgj.c();
                c66.u(2);
                c66.u(16);
                c65.x((dgj) c66.h());
                return (dgl) c65.h();
            case 162:
                ddf c67 = dgl.c();
                ddf c68 = dgj.c();
                c68.u(2);
                c68.u(16);
                c67.x((dgj) c68.h());
                return (dgl) c67.h();
            case 163:
                ddf c69 = dgl.c();
                ddf c70 = dgj.c();
                c70.u(2);
                c70.u(16);
                c69.x((dgj) c70.h());
                return (dgl) c69.h();
            case 164:
                ddf c71 = dgl.c();
                ddf c72 = dgj.c();
                c72.u(2);
                c72.u(16);
                c71.x((dgj) c72.h());
                return (dgl) c71.h();
            case 165:
                ddf n3 = dgl.c.n();
                n3.z(2);
                return (dgl) n3.h();
            case 166:
                ddf n4 = dgl.c.n();
                n4.z(5);
                return (dgl) n4.h();
            case 167:
                ddf c73 = dgl.c();
                c73.z(2);
                return (dgl) c73.h();
            case 168:
                ddf n5 = dgl.c.n();
                n5.z(21);
                return (dgl) n5.h();
            case 169:
                ddf n6 = dgl.c.n();
                n6.z(21);
                return (dgl) n6.h();
            case 170:
                ddf n7 = dgl.c.n();
                n7.z(21);
                return (dgl) n7.h();
            case 171:
                ddf n8 = dgl.c.n();
                n8.z(21);
                return (dgl) n8.h();
            case 172:
                ddf n9 = dgl.c.n();
                n9.z(3);
                return (dgl) n9.h();
            case 173:
                ddf n10 = dgl.c.n();
                n10.z(3);
                return (dgl) n10.h();
            case 174:
                ddf n11 = dgl.c.n();
                n11.z(3);
                return (dgl) n11.h();
            case 175:
                ddf n12 = dgl.c.n();
                n12.z(3);
                return (dgl) n12.h();
            case 176:
                ddf n13 = dgl.c.n();
                n13.z(3);
                return (dgl) n13.h();
            case 177:
                ddf c74 = dgl.c();
                c74.z(15);
                return (dgl) c74.h();
            case 178:
                ddf c75 = dgl.c();
                c75.z(15);
                return (dgl) c75.h();
            case 179:
                ddf c76 = dgl.c();
                c76.z(15);
                return (dgl) c76.h();
            case 180:
                ddf c77 = dgl.c();
                c77.z(15);
                return (dgl) c77.h();
            case 181:
                ddf n14 = dgl.c.n();
                n14.z(21);
                return (dgl) n14.h();
            case 182:
                ddf n15 = dgl.c.n();
                n15.z(6);
                return (dgl) n15.h();
            case 183:
                ddf n16 = dgl.c.n();
                n16.z(8);
                return (dgl) n16.h();
            case 184:
                ddf n17 = dgl.c.n();
                n17.z(2);
                return (dgl) n17.h();
            case 185:
                ddf n18 = dgl.c.n();
                n18.z(9);
                return (dgl) n18.h();
            case 186:
                ddf n19 = dgl.c.n();
                ddf n20 = dgj.c.n();
                n20.u(6);
                n20.u(9);
                ddf c78 = dgk.c();
                c78.w(10);
                c78.w(11);
                n20.t((dgk) c78.h());
                n19.x((dgj) n20.h());
                return (dgl) n19.h();
            case 187:
                ddf n21 = dgl.c.n();
                ddf n22 = dgk.c.n();
                n22.w(19);
                ddf c79 = dgj.c();
                c79.u(9);
                c79.u(8);
                n22.v((dgj) c79.h());
                n21.y((dgk) n22.h());
                return (dgl) n21.h();
            case 188:
                ddf n23 = dgl.c.n();
                ddf n24 = dgk.c.n();
                n24.w(3);
                n24.w(15);
                n23.y((dgk) n24.h());
                return (dgl) n23.h();
            case 189:
                ddf n25 = dgl.c.n();
                ddf n26 = dgk.c.n();
                n26.w(3);
                n26.w(15);
                n25.y((dgk) n26.h());
                return (dgl) n25.h();
            case 190:
                ddf n27 = dgl.c.n();
                ddf n28 = dgk.c.n();
                n28.w(3);
                n28.w(15);
                n27.y((dgk) n28.h());
                return (dgl) n27.h();
            case 191:
                ddf n29 = dgl.c.n();
                ddf n30 = dgk.c.n();
                n30.w(3);
                n30.w(15);
                n29.y((dgk) n30.h());
                return (dgl) n29.h();
            case 192:
                ddf n31 = dgl.c.n();
                n31.z(2);
                return (dgl) n31.h();
            case 193:
                ddf n32 = dgl.c.n();
                n32.z(2);
                return (dgl) n32.h();
            case 194:
                ddf c80 = dgl.c();
                c80.z(2);
                return (dgl) c80.h();
            case 195:
                ddf n33 = dgl.c.n();
                n33.z(26);
                return (dgl) n33.h();
            case 196:
                ddf n34 = dgl.c.n();
                n34.z(3);
                return (dgl) n34.h();
            case 197:
                ddf c81 = dgl.c();
                c81.z(13);
                return (dgl) c81.h();
            case 199:
                ddf c82 = dgl.c();
                c82.z(2);
                return (dgl) c82.h();
            case 200:
                ddf c83 = dgl.c();
                c83.z(2);
                return (dgl) c83.h();
            case 201:
                ddf c84 = dgl.c();
                c84.z(2);
                return (dgl) c84.h();
            case 202:
                ddf c85 = dgl.c();
                c85.z(2);
                return (dgl) c85.h();
            case 203:
                ddf c86 = dgl.c();
                c86.z(2);
                return (dgl) c86.h();
            case 204:
                ddf n35 = dgl.c.n();
                n35.z(14);
                return (dgl) n35.h();
            case 205:
                ddf c87 = dgl.c();
                c87.z(2);
                return (dgl) c87.h();
            case 206:
                ddf c88 = dgl.c();
                c88.z(2);
                return (dgl) c88.h();
            case 207:
                ddf c89 = dgl.c();
                c89.z(2);
                return (dgl) c89.h();
            case 208:
                ddf n36 = dgl.c.n();
                n36.z(3);
                return (dgl) n36.h();
            case 209:
                ddf n37 = dgl.c.n();
                n37.z(2);
                return (dgl) n37.h();
            case 210:
                ddf n38 = dgl.c.n();
                ddf n39 = dgk.c.n();
                n39.w(25);
                n39.w(24);
                n38.y((dgk) n39.h());
                return (dgl) n38.h();
            case 211:
                ddf n40 = dgl.c.n();
                ddf n41 = dgk.c.n();
                n41.w(25);
                n41.w(24);
                n40.y((dgk) n41.h());
                return (dgl) n40.h();
            case 212:
                ddf n42 = dgl.c.n();
                ddf n43 = dgk.c.n();
                n43.w(25);
                n43.w(24);
                n42.y((dgk) n43.h());
                return (dgl) n42.h();
            case 213:
                ddf n44 = dgl.c.n();
                n44.z(2);
                return (dgl) n44.h();
            case 214:
                ddf n45 = dgl.c.n();
                n45.z(2);
                return (dgl) n45.h();
            case 215:
                ddf n46 = dgl.c.n();
                n46.z(17);
                return (dgl) n46.h();
            case 216:
                ddf n47 = dgl.c.n();
                n47.z(2);
                return (dgl) n47.h();
            case 217:
                ddf n48 = dgl.c.n();
                n48.z(4);
                return (dgl) n48.h();
            case 218:
                ddf n49 = dgl.c.n();
                n49.z(10);
                return (dgl) n49.h();
            case 219:
                ddf n50 = dgl.c.n();
                n50.z(2);
                return (dgl) n50.h();
            case 220:
                ddf n51 = dgl.c.n();
                n51.z(2);
                return (dgl) n51.h();
            case 222:
                ddf n52 = dgl.c.n();
                n52.z(2);
                return (dgl) n52.h();
            case 223:
                ddf n53 = dgl.c.n();
                n53.z(1);
                return (dgl) n53.h();
            case 224:
                ddf n54 = dgl.c.n();
                n54.z(18);
                return (dgl) n54.h();
            case 225:
                ddf n55 = dgl.c.n();
                n55.z(18);
                return (dgl) n55.h();
            case 226:
                ddf n56 = dgl.c.n();
                n56.z(9);
                return (dgl) n56.h();
            case 227:
                ddf n57 = dgl.c.n();
                n57.z(18);
                return (dgl) n57.h();
            case 228:
                ddf n58 = dgl.c.n();
                n58.z(2);
                return (dgl) n58.h();
            case 229:
                ddf n59 = dgl.c.n();
                n59.z(2);
                return (dgl) n59.h();
            case 230:
                ddf n60 = dgl.c.n();
                n60.z(2);
                return (dgl) n60.h();
            case 231:
                ddf n61 = dgl.c.n();
                n61.z(2);
                return (dgl) n61.h();
            case 232:
                ddf n62 = dgl.c.n();
                n62.z(2);
                return (dgl) n62.h();
            case 233:
                ddf n63 = dgl.c.n();
                n63.z(20);
                return (dgl) n63.h();
            case 234:
                ddf n64 = dgl.c.n();
                n64.z(22);
                return (dgl) n64.h();
            case 235:
                ddf n65 = dgl.c.n();
                if (n65.c) {
                    n65.k();
                    n65.c = false;
                }
                dgl dglVar = (dgl) n65.b;
                dglVar.b = 21;
                dglVar.a = 1;
                return (dgl) n65.h();
            case 236:
                ddf n66 = dgl.c.n();
                if (n66.c) {
                    n66.k();
                    n66.c = false;
                }
                dgl dglVar2 = (dgl) n66.b;
                dglVar2.b = 21;
                dglVar2.a = 1;
                return (dgl) n66.h();
            case 237:
                ddf n67 = dgl.c.n();
                n67.z(21);
                return (dgl) n67.h();
            case 238:
                ddf n68 = dgl.c.n();
                n68.z(23);
                return (dgl) n68.h();
            case 239:
                ddf n69 = dgl.c.n();
                n69.z(4);
                return (dgl) n69.h();
            case 240:
                ddf n70 = dgl.c.n();
                n70.z(2);
                return (dgl) n70.h();
            case 241:
                ddf n71 = dgl.c.n();
                n71.z(2);
                return (dgl) n71.h();
            case 242:
                ddf n72 = dgl.c.n();
                if (n72.c) {
                    n72.k();
                    n72.c = false;
                }
                dgl dglVar3 = (dgl) n72.b;
                dglVar3.b = 1;
                dglVar3.a = 1;
                return (dgl) n72.h();
            case 243:
                ddf n73 = dgl.c.n();
                if (n73.c) {
                    n73.k();
                    n73.c = false;
                }
                dgl dglVar4 = (dgl) n73.b;
                dglVar4.b = 1;
                dglVar4.a = 1;
                return (dgl) n73.h();
            case 244:
                ddf n74 = dgl.c.n();
                if (n74.c) {
                    n74.k();
                    n74.c = false;
                }
                dgl dglVar5 = (dgl) n74.b;
                dglVar5.b = 26;
                dglVar5.a = 1;
                return (dgl) n74.h();
            case 245:
                ddf n75 = dgl.c.n();
                n75.z(2);
                return (dgl) n75.h();
            case 246:
                ddf n76 = dgl.c.n();
                n76.z(2);
                return (dgl) n76.h();
            case 247:
                ddf n77 = dgl.c.n();
                n77.z(2);
                return (dgl) n77.h();
            case 250:
                ddf n78 = dgl.c.n();
                if (n78.c) {
                    n78.k();
                    n78.c = false;
                }
                dgl dglVar6 = (dgl) n78.b;
                dglVar6.b = 1;
                dglVar6.a = 1;
                return (dgl) n78.h();
            case 251:
                ddf n79 = dgl.c.n();
                if (n79.c) {
                    n79.k();
                    n79.c = false;
                }
                dgl dglVar7 = (dgl) n79.b;
                dglVar7.b = 1;
                dglVar7.a = 1;
                return (dgl) n79.h();
            case 252:
                ddf n80 = dgl.c.n();
                if (n80.c) {
                    n80.k();
                    n80.c = false;
                }
                dgl dglVar8 = (dgl) n80.b;
                dglVar8.b = 3;
                dglVar8.a = 1;
                return (dgl) n80.h();
            case 253:
                ddf n81 = dgl.c.n();
                if (n81.c) {
                    n81.k();
                    n81.c = false;
                }
                dgl dglVar9 = (dgl) n81.b;
                dglVar9.b = 3;
                dglVar9.a = 1;
                return (dgl) n81.h();
            case 254:
                ddf n82 = dgl.c.n();
                if (n82.c) {
                    n82.k();
                    n82.c = false;
                }
                dgl dglVar10 = (dgl) n82.b;
                dglVar10.b = 3;
                dglVar10.a = 1;
                return (dgl) n82.h();
            case 255:
                ddf n83 = dgl.c.n();
                if (n83.c) {
                    n83.k();
                    n83.c = false;
                }
                dgl dglVar11 = (dgl) n83.b;
                dglVar11.b = 1;
                dglVar11.a = 1;
                return (dgl) n83.h();
            case 256:
                ddf n84 = dgl.c.n();
                if (n84.c) {
                    n84.k();
                    n84.c = false;
                }
                dgl dglVar12 = (dgl) n84.b;
                dglVar12.b = 27;
                dglVar12.a = 1;
                return (dgl) n84.h();
            case 257:
                ddf n85 = dgl.c.n();
                if (n85.c) {
                    n85.k();
                    n85.c = false;
                }
                dgl dglVar13 = (dgl) n85.b;
                dglVar13.b = 28;
                dglVar13.a = 1;
                return (dgl) n85.h();
            case 258:
                ddf n86 = dgl.c.n();
                if (n86.c) {
                    n86.k();
                    n86.c = false;
                }
                dgl dglVar14 = (dgl) n86.b;
                dglVar14.b = 28;
                dglVar14.a = 1;
                return (dgl) n86.h();
            case 259:
                ddf n87 = dgl.c.n();
                if (n87.c) {
                    n87.k();
                    n87.c = false;
                }
                dgl dglVar15 = (dgl) n87.b;
                dglVar15.b = 28;
                dglVar15.a = 1;
                return (dgl) n87.h();
            case 260:
                ddf n88 = dgl.c.n();
                if (n88.c) {
                    n88.k();
                    n88.c = false;
                }
                dgl dglVar16 = (dgl) n88.b;
                dglVar16.b = 1;
                dglVar16.a = 1;
                return (dgl) n88.h();
            case 261:
                ddf n89 = dgl.c.n();
                if (n89.c) {
                    n89.k();
                    n89.c = false;
                }
                dgl dglVar17 = (dgl) n89.b;
                dglVar17.b = 1;
                dglVar17.a = 1;
                return (dgl) n89.h();
            case 262:
                ddf n90 = dgl.c.n();
                n90.z(18);
                return (dgl) n90.h();
            case 263:
                ddf n91 = dgl.c.n();
                if (n91.c) {
                    n91.k();
                    n91.c = false;
                }
                dgl dglVar18 = (dgl) n91.b;
                dglVar18.b = 1;
                dglVar18.a = 1;
                return (dgl) n91.h();
            case 264:
                ddf n92 = dgl.c.n();
                if (n92.c) {
                    n92.k();
                    n92.c = false;
                }
                dgl dglVar19 = (dgl) n92.b;
                dglVar19.b = 1;
                dglVar19.a = 1;
                return (dgl) n92.h();
        }
    }
}
