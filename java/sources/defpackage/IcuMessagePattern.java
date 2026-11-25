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
public final class IcuMessagePattern {
    public static /* synthetic */ String a(int i) {
        switch (NavInstructionTypeEnum) {
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

    public static FragmentAnimationInfo e(Context context, AndroidxFragment brVar, boolean z, boolean z2) {
        FragmentSavedStateHolder boVar = brVar.S;
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
        if (IcuConfigProperties != 0) {
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
        if (NavInstructionTypeEnum != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(NavInstructionTypeEnum));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, i);
                    if (loadAnimation != null) {
                        return new FragmentAnimationInfo(loadAnimation);
                    }
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                }
            }
            try {
                Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
                if (loadAnimator != null) {
                    return new FragmentAnimationInfo(loadAnimator);
                }
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i);
                if (loadAnimation2 != null) {
                    return new FragmentAnimationInfo(loadAnimation2);
                }
            }
        }
        return null;
    }

    public static int g(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i = (NavInstructionTypeEnum * 31) + str.charAt(i2);
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
        while (NavInstructionTypeEnum > 0) {
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
            a = AdapterDataObserver.a(context, permissionToOp, packageName);
        } else if (Build.VERSION.SDK_INT >= 29) {
            AppOpsManager b = PrimesTimeoutTracker.b(context);
            a = PrimesTimeoutTracker.a(b, permissionToOp, Binder.getCallingUid(), packageName);
            if (SingleStringProtoMessage == 0) {
                a = PrimesTimeoutTracker.a(b, permissionToOp, myUid, PrimesTimeoutTracker.c(context));
            }
        } else {
            a = AdapterDataObserver.a(context, permissionToOp, packageName);
        }
        return a != 0 ? -2 : 0;
    }

    public static /* synthetic */ String l(int i) {
        switch (NavInstructionTypeEnum) {
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
        switch (NavInstructionTypeEnum) {
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
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    if (FragmentManagerImpl.R(2)) {
                        StringBuilder sb = new StringBuilder();
                        StaggeredGridLayoutParams.append("SpecialEffectsController: Removing view ");
                        StaggeredGridLayoutParams.append(view);
                        StaggeredGridLayoutParams.append(" from container ");
                        StaggeredGridLayoutParams.append(viewGroup);
                    }
                    viewGroup.removeView(view);
                    break;
                }
                break;
            case 1:
                if (FragmentManagerImpl.R(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: Setting view ");
                    sb2.append(view);
                    sb2.append(" to VISIBLE");
                }
                view.setVisibility(0);
                break;
            case 2:
                if (FragmentManagerImpl.R(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("SpecialEffectsController: Setting view ");
                    sb3.append(view);
                    sb3.append(" to GONE");
                }
                view.setVisibility(8);
                break;
            default:
                if (FragmentManagerImpl.R(2)) {
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
        switch (NavInstructionTypeEnum) {
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
        if (IcuMessageArgTypeHolder == null) {
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
        if (IcuLocaleResourceBundle == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), t);
        return t(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String s(Activity activity) {
        try {
            return t(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(ProtoFlagValueMessage);
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

    public static final ProtoMsgIntAndObject f(int i) {
        switch (NavInstructionTypeEnum - 1) {
            case 0:
                ProtoMsgHoldingMessageAndBool c = ProtoMsgIntAndObject.c();
                c.z(2);
                return (ProtoMsgIntAndObject) c.h();
            case 1:
                ProtoMsgHoldingMessageAndBool c2 = ProtoMsgIntAndObject.c();
                c2.z(2);
                return (ProtoMsgIntAndObject) c2.h();
            case 2:
                ProtoMsgHoldingMessageAndBool c3 = ProtoMsgIntAndObject.c();
                c3.z(2);
                return (ProtoMsgIntAndObject) c3.h();
            case 3:
                ProtoMsgHoldingMessageAndBool c4 = ProtoMsgIntAndObject.c();
                c4.z(1);
                return (ProtoMsgIntAndObject) c4.h();
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
                ProtoMsgHoldingMessageAndBool c5 = ProtoMsgIntAndObject.c();
                c5.z(1);
                return (ProtoMsgIntAndObject) c5.h();
            case 100:
                ProtoMsgHoldingMessageAndBool c6 = ProtoMsgIntAndObject.c();
                c6.z(3);
                return (ProtoMsgIntAndObject) c6.h();
            case 101:
                ProtoMsgHoldingMessageAndBool c7 = ProtoMsgIntAndObject.c();
                c7.z(3);
                return (ProtoMsgIntAndObject) c7.h();
            case 102:
                ProtoMsgHoldingMessageAndBool c8 = ProtoMsgIntAndObject.c();
                c8.z(3);
                return (ProtoMsgIntAndObject) c8.h();
            case 103:
                ProtoMsgHoldingMessageAndBool c9 = ProtoMsgIntAndObject.c();
                c9.z(3);
                return (ProtoMsgIntAndObject) c9.h();
            case 104:
                ProtoMsgHoldingMessageAndBool c10 = ProtoMsgIntAndObject.c();
                c10.z(3);
                return (ProtoMsgIntAndObject) c10.h();
            case 105:
                ProtoMsgHoldingMessageAndBool c11 = ProtoMsgIntAndObject.c();
                c11.z(3);
                return (ProtoMsgIntAndObject) c11.h();
            case 106:
                ProtoMsgHoldingMessageAndBool c12 = ProtoMsgIntAndObject.c();
                c12.z(3);
                return (ProtoMsgIntAndObject) c12.h();
            case 107:
                ProtoMsgHoldingMessageAndBool c13 = ProtoMsgIntAndObject.c();
                c13.z(2);
                return (ProtoMsgIntAndObject) c13.h();
            case 108:
                ProtoMsgHoldingMessageAndBool c14 = ProtoMsgIntAndObject.c();
                c14.z(3);
                return (ProtoMsgIntAndObject) c14.h();
            case 109:
                ProtoMsgHoldingMessageAndBool c15 = ProtoMsgIntAndObject.c();
                c15.z(3);
                return (ProtoMsgIntAndObject) c15.h();
            case 110:
                ProtoMsgHoldingMessageAndBool c16 = ProtoMsgIntAndObject.c();
                c16.z(2);
                return (ProtoMsgIntAndObject) c16.h();
            case 111:
                ProtoMsgHoldingMessageAndBool c17 = ProtoMsgIntAndObject.c();
                c17.z(3);
                return (ProtoMsgIntAndObject) c17.h();
            case 112:
                ProtoMsgHoldingMessageAndBool c18 = ProtoMsgIntAndObject.c();
                c18.z(3);
                return (ProtoMsgIntAndObject) c18.h();
            case 113:
                ProtoMsgHoldingMessageAndBool c19 = ProtoMsgIntAndObject.c();
                c19.z(3);
                return (ProtoMsgIntAndObject) c19.h();
            case 114:
                ProtoMsgHoldingMessageAndBool c20 = ProtoMsgIntAndObject.c();
                c20.z(2);
                return (ProtoMsgIntAndObject) c20.h();
            case 115:
                ProtoMsgHoldingMessageAndBool c21 = ProtoMsgIntAndObject.c();
                c21.z(3);
                return (ProtoMsgIntAndObject) c21.h();
            case 116:
                ProtoMsgHoldingMessageAndBool c22 = ProtoMsgIntAndObject.c();
                c22.z(3);
                return (ProtoMsgIntAndObject) c22.h();
            case 117:
                ProtoMsgHoldingMessageAndBool c23 = ProtoMsgIntAndObject.c();
                c23.z(3);
                return (ProtoMsgIntAndObject) c23.h();
            case 118:
                ProtoMsgHoldingMessageAndBool c24 = ProtoMsgIntAndObject.c();
                c24.z(3);
                return (ProtoMsgIntAndObject) c24.h();
            case 119:
                ProtoMsgHoldingMessageAndBool c25 = ProtoMsgIntAndObject.c();
                c25.z(3);
                return (ProtoMsgIntAndObject) c25.h();
            case 120:
                ProtoMsgHoldingMessageAndBool c26 = ProtoMsgIntAndObject.c();
                c26.z(3);
                return (ProtoMsgIntAndObject) c26.h();
            case 121:
                ProtoMsgHoldingMessageAndBool c27 = ProtoMsgIntAndObject.c();
                c27.z(3);
                return (ProtoMsgIntAndObject) c27.h();
            case 122:
                ProtoMsgHoldingMessageAndBool c28 = ProtoMsgIntAndObject.c();
                c28.z(3);
                return (ProtoMsgIntAndObject) c28.h();
            case 123:
                ProtoMsgHoldingMessageAndBool c29 = ProtoMsgIntAndObject.c();
                c29.z(3);
                return (ProtoMsgIntAndObject) c29.h();
            case 124:
                ProtoMsgHoldingMessageAndBool c30 = ProtoMsgIntAndObject.c();
                c30.z(3);
                return (ProtoMsgIntAndObject) c30.h();
            case 125:
                ProtoMsgHoldingMessageAndBool c31 = ProtoMsgIntAndObject.c();
                c31.z(3);
                return (ProtoMsgIntAndObject) c31.h();
            case 126:
                ProtoMsgHoldingMessageAndBool c32 = ProtoMsgIntAndObject.c();
                c32.z(3);
                return (ProtoMsgIntAndObject) c32.h();
            case 127:
                ProtoMsgHoldingMessageAndBool c33 = ProtoMsgIntAndObject.c();
                c33.z(3);
                return (ProtoMsgIntAndObject) c33.h();
            case 128:
                ProtoMsgHoldingMessageAndBool c34 = ProtoMsgIntAndObject.c();
                c34.z(3);
                return (ProtoMsgIntAndObject) c34.h();
            case 129:
                ProtoMsgHoldingMessageAndBool c35 = ProtoMsgIntAndObject.c();
                c35.z(3);
                return (ProtoMsgIntAndObject) c35.h();
            case 130:
                ProtoMsgHoldingMessageAndBool c36 = ProtoMsgIntAndObject.c();
                c36.z(3);
                return (ProtoMsgIntAndObject) c36.h();
            case 131:
                ProtoMsgHoldingMessageAndBool n = ProtoMsgIntAndObject.c.n();
                n.z(3);
                return (ProtoMsgIntAndObject) n.h();
            case 132:
                ProtoMsgHoldingMessageAndBool c37 = ProtoMsgIntAndObject.c();
                c37.z(3);
                return (ProtoMsgIntAndObject) c37.h();
            case 133:
                ProtoMsgHoldingMessageAndBool c38 = ProtoMsgIntAndObject.c();
                c38.z(3);
                return (ProtoMsgIntAndObject) c38.h();
            case 134:
                ProtoMsgHoldingMessageAndBool c39 = ProtoMsgIntAndObject.c();
                c39.z(3);
                return (ProtoMsgIntAndObject) c39.h();
            case 135:
                ProtoMsgHoldingMessageAndBool c40 = ProtoMsgIntAndObject.c();
                c40.z(2);
                return (ProtoMsgIntAndObject) c40.h();
            case 136:
                ProtoMsgHoldingMessageAndBool c41 = ProtoMsgIntAndObject.c();
                c41.z(2);
                return (ProtoMsgIntAndObject) c41.h();
            case 137:
                ProtoMsgHoldingMessageAndBool c42 = ProtoMsgIntAndObject.c();
                c42.z(2);
                return (ProtoMsgIntAndObject) c42.h();
            case 138:
                ProtoMsgHoldingMessageAndBool c43 = ProtoMsgIntAndObject.c();
                c43.z(2);
                return (ProtoMsgIntAndObject) c43.h();
            case 139:
                ProtoMsgHoldingMessageAndBool c44 = ProtoMsgIntAndObject.c();
                c44.z(2);
                return (ProtoMsgIntAndObject) c44.h();
            case 140:
                ProtoMsgHoldingMessageAndBool c45 = ProtoMsgIntAndObject.c();
                c45.z(2);
                return (ProtoMsgIntAndObject) c45.h();
            case 141:
                ProtoMsgHoldingMessageAndBool c46 = ProtoMsgIntAndObject.c();
                c46.z(2);
                return (ProtoMsgIntAndObject) c46.h();
            case 142:
                ProtoMsgHoldingMessageAndBool c47 = ProtoMsgIntAndObject.c();
                c47.z(2);
                return (ProtoMsgIntAndObject) c47.h();
            case 143:
                ProtoMsgHoldingMessageAndBool c48 = ProtoMsgIntAndObject.c();
                c48.z(2);
                return (ProtoMsgIntAndObject) c48.h();
            case 144:
                ProtoMsgHoldingMessageAndBool c49 = ProtoMsgIntAndObject.c();
                c49.z(2);
                return (ProtoMsgIntAndObject) c49.h();
            case 145:
                ProtoMsgHoldingMessageAndBool c50 = ProtoMsgIntAndObject.c();
                c50.z(2);
                return (ProtoMsgIntAndObject) c50.h();
            case 146:
                ProtoMsgHoldingMessageAndBool c51 = ProtoMsgIntAndObject.c();
                c51.z(2);
                return (ProtoMsgIntAndObject) c51.h();
            case 147:
                ProtoMsgHoldingMessageAndBool c52 = ProtoMsgIntAndObject.c();
                c52.z(2);
                return (ProtoMsgIntAndObject) c52.h();
            case 148:
                ProtoMsgHoldingMessageAndBool c53 = ProtoMsgIntAndObject.c();
                c53.z(2);
                return (ProtoMsgIntAndObject) c53.h();
            case 149:
                ProtoMsgHoldingMessageAndBool c54 = ProtoMsgIntAndObject.c();
                c54.z(2);
                return (ProtoMsgIntAndObject) c54.h();
            case 150:
                ProtoMsgHoldingMessageAndBool c55 = ProtoMsgIntAndObject.c();
                c55.z(3);
                return (ProtoMsgIntAndObject) c55.h();
            case 151:
                ProtoMsgHoldingMessageAndBool c56 = ProtoMsgIntAndObject.c();
                c56.z(3);
                return (ProtoMsgIntAndObject) c56.h();
            case 152:
                ProtoMsgHoldingMessageAndBool c57 = ProtoMsgIntAndObject.c();
                c57.z(3);
                return (ProtoMsgIntAndObject) c57.h();
            case 153:
                ProtoMsgHoldingMessageAndBool c58 = ProtoMsgIntAndObject.c();
                c58.z(3);
                return (ProtoMsgIntAndObject) c58.h();
            case 154:
                ProtoMsgHoldingMessageAndBool c59 = ProtoMsgIntAndObject.c();
                c59.z(3);
                return (ProtoMsgIntAndObject) c59.h();
            case 155:
                ProtoMsgHoldingMessageAndBool c60 = ProtoMsgIntAndObject.c();
                c60.z(3);
                return (ProtoMsgIntAndObject) c60.h();
            case 156:
                ProtoMsgHoldingMessageAndBool c61 = ProtoMsgIntAndObject.c();
                c61.z(3);
                return (ProtoMsgIntAndObject) c61.h();
            case 157:
                ProtoMsgHoldingMessageAndBool n2 = ProtoMsgIntAndObject.c.n();
                n2.z(23);
                return (ProtoMsgIntAndObject) n2.h();
            case 158:
                ProtoMsgHoldingMessageAndBool c62 = ProtoMsgIntAndObject.c();
                c62.z(2);
                return (ProtoMsgIntAndObject) c62.h();
            case 159:
                ProtoMsgHoldingMessageAndBool c63 = ProtoMsgIntAndObject.c();
                c63.z(2);
                return (ProtoMsgIntAndObject) c63.h();
            case 160:
                ProtoMsgHoldingMessageAndBool c64 = ProtoMsgIntAndObject.c();
                c64.z(2);
                return (ProtoMsgIntAndObject) c64.h();
            case 161:
                ProtoMsgHoldingMessageAndBool c65 = ProtoMsgIntAndObject.c();
                ProtoMsgHoldingMessageAndBool c66 = ProtoMsgTwoRepeatedFields.c();
                c66.u(2);
                c66.u(16);
                c65.x((ProtoMsgTwoRepeatedFields) c66.h());
                return (ProtoMsgIntAndObject) c65.h();
            case 162:
                ProtoMsgHoldingMessageAndBool c67 = ProtoMsgIntAndObject.c();
                ProtoMsgHoldingMessageAndBool c68 = ProtoMsgTwoRepeatedFields.c();
                c68.u(2);
                c68.u(16);
                c67.x((ProtoMsgTwoRepeatedFields) c68.h());
                return (ProtoMsgIntAndObject) c67.h();
            case 163:
                ProtoMsgHoldingMessageAndBool c69 = ProtoMsgIntAndObject.c();
                ProtoMsgHoldingMessageAndBool c70 = ProtoMsgTwoRepeatedFields.c();
                c70.u(2);
                c70.u(16);
                c69.x((ProtoMsgTwoRepeatedFields) c70.h());
                return (ProtoMsgIntAndObject) c69.h();
            case 164:
                ProtoMsgHoldingMessageAndBool c71 = ProtoMsgIntAndObject.c();
                ProtoMsgHoldingMessageAndBool c72 = ProtoMsgTwoRepeatedFields.c();
                c72.u(2);
                c72.u(16);
                c71.x((ProtoMsgTwoRepeatedFields) c72.h());
                return (ProtoMsgIntAndObject) c71.h();
            case 165:
                ProtoMsgHoldingMessageAndBool n3 = ProtoMsgIntAndObject.c.n();
                n3.z(2);
                return (ProtoMsgIntAndObject) n3.h();
            case 166:
                ProtoMsgHoldingMessageAndBool n4 = ProtoMsgIntAndObject.c.n();
                n4.z(5);
                return (ProtoMsgIntAndObject) n4.h();
            case 167:
                ProtoMsgHoldingMessageAndBool c73 = ProtoMsgIntAndObject.c();
                c73.z(2);
                return (ProtoMsgIntAndObject) c73.h();
            case 168:
                ProtoMsgHoldingMessageAndBool n5 = ProtoMsgIntAndObject.c.n();
                n5.z(21);
                return (ProtoMsgIntAndObject) n5.h();
            case 169:
                ProtoMsgHoldingMessageAndBool n6 = ProtoMsgIntAndObject.c.n();
                n6.z(21);
                return (ProtoMsgIntAndObject) n6.h();
            case 170:
                ProtoMsgHoldingMessageAndBool n7 = ProtoMsgIntAndObject.c.n();
                n7.z(21);
                return (ProtoMsgIntAndObject) n7.h();
            case 171:
                ProtoMsgHoldingMessageAndBool n8 = ProtoMsgIntAndObject.c.n();
                n8.z(21);
                return (ProtoMsgIntAndObject) n8.h();
            case 172:
                ProtoMsgHoldingMessageAndBool n9 = ProtoMsgIntAndObject.c.n();
                n9.z(3);
                return (ProtoMsgIntAndObject) n9.h();
            case 173:
                ProtoMsgHoldingMessageAndBool n10 = ProtoMsgIntAndObject.c.n();
                n10.z(3);
                return (ProtoMsgIntAndObject) n10.h();
            case 174:
                ProtoMsgHoldingMessageAndBool n11 = ProtoMsgIntAndObject.c.n();
                n11.z(3);
                return (ProtoMsgIntAndObject) n11.h();
            case 175:
                ProtoMsgHoldingMessageAndBool n12 = ProtoMsgIntAndObject.c.n();
                n12.z(3);
                return (ProtoMsgIntAndObject) n12.h();
            case 176:
                ProtoMsgHoldingMessageAndBool n13 = ProtoMsgIntAndObject.c.n();
                n13.z(3);
                return (ProtoMsgIntAndObject) n13.h();
            case 177:
                ProtoMsgHoldingMessageAndBool c74 = ProtoMsgIntAndObject.c();
                c74.z(15);
                return (ProtoMsgIntAndObject) c74.h();
            case 178:
                ProtoMsgHoldingMessageAndBool c75 = ProtoMsgIntAndObject.c();
                c75.z(15);
                return (ProtoMsgIntAndObject) c75.h();
            case 179:
                ProtoMsgHoldingMessageAndBool c76 = ProtoMsgIntAndObject.c();
                c76.z(15);
                return (ProtoMsgIntAndObject) c76.h();
            case 180:
                ProtoMsgHoldingMessageAndBool c77 = ProtoMsgIntAndObject.c();
                c77.z(15);
                return (ProtoMsgIntAndObject) c77.h();
            case 181:
                ProtoMsgHoldingMessageAndBool n14 = ProtoMsgIntAndObject.c.n();
                n14.z(21);
                return (ProtoMsgIntAndObject) n14.h();
            case 182:
                ProtoMsgHoldingMessageAndBool n15 = ProtoMsgIntAndObject.c.n();
                n15.z(6);
                return (ProtoMsgIntAndObject) n15.h();
            case 183:
                ProtoMsgHoldingMessageAndBool n16 = ProtoMsgIntAndObject.c.n();
                n16.z(8);
                return (ProtoMsgIntAndObject) n16.h();
            case 184:
                ProtoMsgHoldingMessageAndBool n17 = ProtoMsgIntAndObject.c.n();
                n17.z(2);
                return (ProtoMsgIntAndObject) n17.h();
            case 185:
                ProtoMsgHoldingMessageAndBool n18 = ProtoMsgIntAndObject.c.n();
                n18.z(9);
                return (ProtoMsgIntAndObject) n18.h();
            case 186:
                ProtoMsgHoldingMessageAndBool n19 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n20 = ProtoMsgTwoRepeatedFields.c.n();
                n20.u(6);
                n20.u(9);
                ProtoMsgHoldingMessageAndBool c78 = ProtoMsgRepeatedPairFields.c();
                c78.w(10);
                c78.w(11);
                n20.t((ProtoMsgRepeatedPairFields) c78.h());
                n19.x((ProtoMsgTwoRepeatedFields) n20.h());
                return (ProtoMsgIntAndObject) n19.h();
            case 187:
                ProtoMsgHoldingMessageAndBool n21 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n22 = ProtoMsgRepeatedPairFields.c.n();
                n22.w(19);
                ProtoMsgHoldingMessageAndBool c79 = ProtoMsgTwoRepeatedFields.c();
                c79.u(9);
                c79.u(8);
                n22.v((ProtoMsgTwoRepeatedFields) c79.h());
                n21.y((ProtoMsgRepeatedPairFields) n22.h());
                return (ProtoMsgIntAndObject) n21.h();
            case 188:
                ProtoMsgHoldingMessageAndBool n23 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n24 = ProtoMsgRepeatedPairFields.c.n();
                n24.w(3);
                n24.w(15);
                n23.y((ProtoMsgRepeatedPairFields) n24.h());
                return (ProtoMsgIntAndObject) n23.h();
            case 189:
                ProtoMsgHoldingMessageAndBool n25 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n26 = ProtoMsgRepeatedPairFields.c.n();
                n26.w(3);
                n26.w(15);
                n25.y((ProtoMsgRepeatedPairFields) n26.h());
                return (ProtoMsgIntAndObject) n25.h();
            case 190:
                ProtoMsgHoldingMessageAndBool n27 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n28 = ProtoMsgRepeatedPairFields.c.n();
                n28.w(3);
                n28.w(15);
                n27.y((ProtoMsgRepeatedPairFields) n28.h());
                return (ProtoMsgIntAndObject) n27.h();
            case 191:
                ProtoMsgHoldingMessageAndBool n29 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n30 = ProtoMsgRepeatedPairFields.c.n();
                n30.w(3);
                n30.w(15);
                n29.y((ProtoMsgRepeatedPairFields) n30.h());
                return (ProtoMsgIntAndObject) n29.h();
            case 192:
                ProtoMsgHoldingMessageAndBool n31 = ProtoMsgIntAndObject.c.n();
                n31.z(2);
                return (ProtoMsgIntAndObject) n31.h();
            case 193:
                ProtoMsgHoldingMessageAndBool n32 = ProtoMsgIntAndObject.c.n();
                n32.z(2);
                return (ProtoMsgIntAndObject) n32.h();
            case 194:
                ProtoMsgHoldingMessageAndBool c80 = ProtoMsgIntAndObject.c();
                c80.z(2);
                return (ProtoMsgIntAndObject) c80.h();
            case 195:
                ProtoMsgHoldingMessageAndBool n33 = ProtoMsgIntAndObject.c.n();
                n33.z(26);
                return (ProtoMsgIntAndObject) n33.h();
            case 196:
                ProtoMsgHoldingMessageAndBool n34 = ProtoMsgIntAndObject.c.n();
                n34.z(3);
                return (ProtoMsgIntAndObject) n34.h();
            case 197:
                ProtoMsgHoldingMessageAndBool c81 = ProtoMsgIntAndObject.c();
                c81.z(13);
                return (ProtoMsgIntAndObject) c81.h();
            case 199:
                ProtoMsgHoldingMessageAndBool c82 = ProtoMsgIntAndObject.c();
                c82.z(2);
                return (ProtoMsgIntAndObject) c82.h();
            case 200:
                ProtoMsgHoldingMessageAndBool c83 = ProtoMsgIntAndObject.c();
                c83.z(2);
                return (ProtoMsgIntAndObject) c83.h();
            case 201:
                ProtoMsgHoldingMessageAndBool c84 = ProtoMsgIntAndObject.c();
                c84.z(2);
                return (ProtoMsgIntAndObject) c84.h();
            case 202:
                ProtoMsgHoldingMessageAndBool c85 = ProtoMsgIntAndObject.c();
                c85.z(2);
                return (ProtoMsgIntAndObject) c85.h();
            case 203:
                ProtoMsgHoldingMessageAndBool c86 = ProtoMsgIntAndObject.c();
                c86.z(2);
                return (ProtoMsgIntAndObject) c86.h();
            case 204:
                ProtoMsgHoldingMessageAndBool n35 = ProtoMsgIntAndObject.c.n();
                n35.z(14);
                return (ProtoMsgIntAndObject) n35.h();
            case 205:
                ProtoMsgHoldingMessageAndBool c87 = ProtoMsgIntAndObject.c();
                c87.z(2);
                return (ProtoMsgIntAndObject) c87.h();
            case 206:
                ProtoMsgHoldingMessageAndBool c88 = ProtoMsgIntAndObject.c();
                c88.z(2);
                return (ProtoMsgIntAndObject) c88.h();
            case 207:
                ProtoMsgHoldingMessageAndBool c89 = ProtoMsgIntAndObject.c();
                c89.z(2);
                return (ProtoMsgIntAndObject) c89.h();
            case 208:
                ProtoMsgHoldingMessageAndBool n36 = ProtoMsgIntAndObject.c.n();
                n36.z(3);
                return (ProtoMsgIntAndObject) n36.h();
            case 209:
                ProtoMsgHoldingMessageAndBool n37 = ProtoMsgIntAndObject.c.n();
                n37.z(2);
                return (ProtoMsgIntAndObject) n37.h();
            case 210:
                ProtoMsgHoldingMessageAndBool n38 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n39 = ProtoMsgRepeatedPairFields.c.n();
                n39.w(25);
                n39.w(24);
                n38.y((ProtoMsgRepeatedPairFields) n39.h());
                return (ProtoMsgIntAndObject) n38.h();
            case 211:
                ProtoMsgHoldingMessageAndBool n40 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n41 = ProtoMsgRepeatedPairFields.c.n();
                n41.w(25);
                n41.w(24);
                n40.y((ProtoMsgRepeatedPairFields) n41.h());
                return (ProtoMsgIntAndObject) n40.h();
            case 212:
                ProtoMsgHoldingMessageAndBool n42 = ProtoMsgIntAndObject.c.n();
                ProtoMsgHoldingMessageAndBool n43 = ProtoMsgRepeatedPairFields.c.n();
                n43.w(25);
                n43.w(24);
                n42.y((ProtoMsgRepeatedPairFields) n43.h());
                return (ProtoMsgIntAndObject) n42.h();
            case 213:
                ProtoMsgHoldingMessageAndBool n44 = ProtoMsgIntAndObject.c.n();
                n44.z(2);
                return (ProtoMsgIntAndObject) n44.h();
            case 214:
                ProtoMsgHoldingMessageAndBool n45 = ProtoMsgIntAndObject.c.n();
                n45.z(2);
                return (ProtoMsgIntAndObject) n45.h();
            case 215:
                ProtoMsgHoldingMessageAndBool n46 = ProtoMsgIntAndObject.c.n();
                n46.z(17);
                return (ProtoMsgIntAndObject) n46.h();
            case 216:
                ProtoMsgHoldingMessageAndBool n47 = ProtoMsgIntAndObject.c.n();
                n47.z(2);
                return (ProtoMsgIntAndObject) n47.h();
            case 217:
                ProtoMsgHoldingMessageAndBool n48 = ProtoMsgIntAndObject.c.n();
                n48.z(4);
                return (ProtoMsgIntAndObject) n48.h();
            case 218:
                ProtoMsgHoldingMessageAndBool n49 = ProtoMsgIntAndObject.c.n();
                n49.z(10);
                return (ProtoMsgIntAndObject) n49.h();
            case 219:
                ProtoMsgHoldingMessageAndBool n50 = ProtoMsgIntAndObject.c.n();
                n50.z(2);
                return (ProtoMsgIntAndObject) n50.h();
            case 220:
                ProtoMsgHoldingMessageAndBool n51 = ProtoMsgIntAndObject.c.n();
                n51.z(2);
                return (ProtoMsgIntAndObject) n51.h();
            case 222:
                ProtoMsgHoldingMessageAndBool n52 = ProtoMsgIntAndObject.c.n();
                n52.z(2);
                return (ProtoMsgIntAndObject) n52.h();
            case 223:
                ProtoMsgHoldingMessageAndBool n53 = ProtoMsgIntAndObject.c.n();
                n53.z(1);
                return (ProtoMsgIntAndObject) n53.h();
            case 224:
                ProtoMsgHoldingMessageAndBool n54 = ProtoMsgIntAndObject.c.n();
                n54.z(18);
                return (ProtoMsgIntAndObject) n54.h();
            case 225:
                ProtoMsgHoldingMessageAndBool n55 = ProtoMsgIntAndObject.c.n();
                n55.z(18);
                return (ProtoMsgIntAndObject) n55.h();
            case 226:
                ProtoMsgHoldingMessageAndBool n56 = ProtoMsgIntAndObject.c.n();
                n56.z(9);
                return (ProtoMsgIntAndObject) n56.h();
            case 227:
                ProtoMsgHoldingMessageAndBool n57 = ProtoMsgIntAndObject.c.n();
                n57.z(18);
                return (ProtoMsgIntAndObject) n57.h();
            case 228:
                ProtoMsgHoldingMessageAndBool n58 = ProtoMsgIntAndObject.c.n();
                n58.z(2);
                return (ProtoMsgIntAndObject) n58.h();
            case 229:
                ProtoMsgHoldingMessageAndBool n59 = ProtoMsgIntAndObject.c.n();
                n59.z(2);
                return (ProtoMsgIntAndObject) n59.h();
            case 230:
                ProtoMsgHoldingMessageAndBool n60 = ProtoMsgIntAndObject.c.n();
                n60.z(2);
                return (ProtoMsgIntAndObject) n60.h();
            case 231:
                ProtoMsgHoldingMessageAndBool n61 = ProtoMsgIntAndObject.c.n();
                n61.z(2);
                return (ProtoMsgIntAndObject) n61.h();
            case 232:
                ProtoMsgHoldingMessageAndBool n62 = ProtoMsgIntAndObject.c.n();
                n62.z(2);
                return (ProtoMsgIntAndObject) n62.h();
            case 233:
                ProtoMsgHoldingMessageAndBool n63 = ProtoMsgIntAndObject.c.n();
                n63.z(20);
                return (ProtoMsgIntAndObject) n63.h();
            case 234:
                ProtoMsgHoldingMessageAndBool n64 = ProtoMsgIntAndObject.c.n();
                n64.z(22);
                return (ProtoMsgIntAndObject) n64.h();
            case 235:
                ProtoMsgHoldingMessageAndBool n65 = ProtoMsgIntAndObject.c.n();
                if (n65.c) {
                    n65.k();
                    n65.c = false;
                }
                ProtoMsgIntAndObject dglVar = (ProtoMsgIntAndObject) n65.b;
                dglVar.b = 21;
                dglVar.a = 1;
                return (ProtoMsgIntAndObject) n65.h();
            case 236:
                ProtoMsgHoldingMessageAndBool n66 = ProtoMsgIntAndObject.c.n();
                if (n66.c) {
                    n66.k();
                    n66.c = false;
                }
                ProtoMsgIntAndObject dglVar2 = (ProtoMsgIntAndObject) n66.b;
                dglVar2.b = 21;
                dglVar2.a = 1;
                return (ProtoMsgIntAndObject) n66.h();
            case 237:
                ProtoMsgHoldingMessageAndBool n67 = ProtoMsgIntAndObject.c.n();
                n67.z(21);
                return (ProtoMsgIntAndObject) n67.h();
            case 238:
                ProtoMsgHoldingMessageAndBool n68 = ProtoMsgIntAndObject.c.n();
                n68.z(23);
                return (ProtoMsgIntAndObject) n68.h();
            case 239:
                ProtoMsgHoldingMessageAndBool n69 = ProtoMsgIntAndObject.c.n();
                n69.z(4);
                return (ProtoMsgIntAndObject) n69.h();
            case 240:
                ProtoMsgHoldingMessageAndBool n70 = ProtoMsgIntAndObject.c.n();
                n70.z(2);
                return (ProtoMsgIntAndObject) n70.h();
            case 241:
                ProtoMsgHoldingMessageAndBool n71 = ProtoMsgIntAndObject.c.n();
                n71.z(2);
                return (ProtoMsgIntAndObject) n71.h();
            case 242:
                ProtoMsgHoldingMessageAndBool n72 = ProtoMsgIntAndObject.c.n();
                if (n72.c) {
                    n72.k();
                    n72.c = false;
                }
                ProtoMsgIntAndObject dglVar3 = (ProtoMsgIntAndObject) n72.b;
                dglVar3.b = 1;
                dglVar3.a = 1;
                return (ProtoMsgIntAndObject) n72.h();
            case 243:
                ProtoMsgHoldingMessageAndBool n73 = ProtoMsgIntAndObject.c.n();
                if (n73.c) {
                    n73.k();
                    n73.c = false;
                }
                ProtoMsgIntAndObject dglVar4 = (ProtoMsgIntAndObject) n73.b;
                dglVar4.b = 1;
                dglVar4.a = 1;
                return (ProtoMsgIntAndObject) n73.h();
            case 244:
                ProtoMsgHoldingMessageAndBool n74 = ProtoMsgIntAndObject.c.n();
                if (n74.c) {
                    n74.k();
                    n74.c = false;
                }
                ProtoMsgIntAndObject dglVar5 = (ProtoMsgIntAndObject) n74.b;
                dglVar5.b = 26;
                dglVar5.a = 1;
                return (ProtoMsgIntAndObject) n74.h();
            case 245:
                ProtoMsgHoldingMessageAndBool n75 = ProtoMsgIntAndObject.c.n();
                n75.z(2);
                return (ProtoMsgIntAndObject) n75.h();
            case 246:
                ProtoMsgHoldingMessageAndBool n76 = ProtoMsgIntAndObject.c.n();
                n76.z(2);
                return (ProtoMsgIntAndObject) n76.h();
            case 247:
                ProtoMsgHoldingMessageAndBool n77 = ProtoMsgIntAndObject.c.n();
                n77.z(2);
                return (ProtoMsgIntAndObject) n77.h();
            case 250:
                ProtoMsgHoldingMessageAndBool n78 = ProtoMsgIntAndObject.c.n();
                if (n78.c) {
                    n78.k();
                    n78.c = false;
                }
                ProtoMsgIntAndObject dglVar6 = (ProtoMsgIntAndObject) n78.b;
                dglVar6.b = 1;
                dglVar6.a = 1;
                return (ProtoMsgIntAndObject) n78.h();
            case 251:
                ProtoMsgHoldingMessageAndBool n79 = ProtoMsgIntAndObject.c.n();
                if (n79.c) {
                    n79.k();
                    n79.c = false;
                }
                ProtoMsgIntAndObject dglVar7 = (ProtoMsgIntAndObject) n79.b;
                dglVar7.b = 1;
                dglVar7.a = 1;
                return (ProtoMsgIntAndObject) n79.h();
            case 252:
                ProtoMsgHoldingMessageAndBool n80 = ProtoMsgIntAndObject.c.n();
                if (n80.c) {
                    n80.k();
                    n80.c = false;
                }
                ProtoMsgIntAndObject dglVar8 = (ProtoMsgIntAndObject) n80.b;
                dglVar8.b = 3;
                dglVar8.a = 1;
                return (ProtoMsgIntAndObject) n80.h();
            case 253:
                ProtoMsgHoldingMessageAndBool n81 = ProtoMsgIntAndObject.c.n();
                if (n81.c) {
                    n81.k();
                    n81.c = false;
                }
                ProtoMsgIntAndObject dglVar9 = (ProtoMsgIntAndObject) n81.b;
                dglVar9.b = 3;
                dglVar9.a = 1;
                return (ProtoMsgIntAndObject) n81.h();
            case 254:
                ProtoMsgHoldingMessageAndBool n82 = ProtoMsgIntAndObject.c.n();
                if (n82.c) {
                    n82.k();
                    n82.c = false;
                }
                ProtoMsgIntAndObject dglVar10 = (ProtoMsgIntAndObject) n82.b;
                dglVar10.b = 3;
                dglVar10.a = 1;
                return (ProtoMsgIntAndObject) n82.h();
            case 255:
                ProtoMsgHoldingMessageAndBool n83 = ProtoMsgIntAndObject.c.n();
                if (n83.c) {
                    n83.k();
                    n83.c = false;
                }
                ProtoMsgIntAndObject dglVar11 = (ProtoMsgIntAndObject) n83.b;
                dglVar11.b = 1;
                dglVar11.a = 1;
                return (ProtoMsgIntAndObject) n83.h();
            case 256:
                ProtoMsgHoldingMessageAndBool n84 = ProtoMsgIntAndObject.c.n();
                if (n84.c) {
                    n84.k();
                    n84.c = false;
                }
                ProtoMsgIntAndObject dglVar12 = (ProtoMsgIntAndObject) n84.b;
                dglVar12.b = 27;
                dglVar12.a = 1;
                return (ProtoMsgIntAndObject) n84.h();
            case 257:
                ProtoMsgHoldingMessageAndBool n85 = ProtoMsgIntAndObject.c.n();
                if (n85.c) {
                    n85.k();
                    n85.c = false;
                }
                ProtoMsgIntAndObject dglVar13 = (ProtoMsgIntAndObject) n85.b;
                dglVar13.b = 28;
                dglVar13.a = 1;
                return (ProtoMsgIntAndObject) n85.h();
            case 258:
                ProtoMsgHoldingMessageAndBool n86 = ProtoMsgIntAndObject.c.n();
                if (n86.c) {
                    n86.k();
                    n86.c = false;
                }
                ProtoMsgIntAndObject dglVar14 = (ProtoMsgIntAndObject) n86.b;
                dglVar14.b = 28;
                dglVar14.a = 1;
                return (ProtoMsgIntAndObject) n86.h();
            case 259:
                ProtoMsgHoldingMessageAndBool n87 = ProtoMsgIntAndObject.c.n();
                if (n87.c) {
                    n87.k();
                    n87.c = false;
                }
                ProtoMsgIntAndObject dglVar15 = (ProtoMsgIntAndObject) n87.b;
                dglVar15.b = 28;
                dglVar15.a = 1;
                return (ProtoMsgIntAndObject) n87.h();
            case 260:
                ProtoMsgHoldingMessageAndBool n88 = ProtoMsgIntAndObject.c.n();
                if (n88.c) {
                    n88.k();
                    n88.c = false;
                }
                ProtoMsgIntAndObject dglVar16 = (ProtoMsgIntAndObject) n88.b;
                dglVar16.b = 1;
                dglVar16.a = 1;
                return (ProtoMsgIntAndObject) n88.h();
            case 261:
                ProtoMsgHoldingMessageAndBool n89 = ProtoMsgIntAndObject.c.n();
                if (n89.c) {
                    n89.k();
                    n89.c = false;
                }
                ProtoMsgIntAndObject dglVar17 = (ProtoMsgIntAndObject) n89.b;
                dglVar17.b = 1;
                dglVar17.a = 1;
                return (ProtoMsgIntAndObject) n89.h();
            case 262:
                ProtoMsgHoldingMessageAndBool n90 = ProtoMsgIntAndObject.c.n();
                n90.z(18);
                return (ProtoMsgIntAndObject) n90.h();
            case 263:
                ProtoMsgHoldingMessageAndBool n91 = ProtoMsgIntAndObject.c.n();
                if (n91.c) {
                    n91.k();
                    n91.c = false;
                }
                ProtoMsgIntAndObject dglVar18 = (ProtoMsgIntAndObject) n91.b;
                dglVar18.b = 1;
                dglVar18.a = 1;
                return (ProtoMsgIntAndObject) n91.h();
            case 264:
                ProtoMsgHoldingMessageAndBool n92 = ProtoMsgIntAndObject.c.n();
                if (n92.c) {
                    n92.k();
                    n92.c = false;
                }
                ProtoMsgIntAndObject dglVar19 = (ProtoMsgIntAndObject) n92.b;
                dglVar19.b = 1;
                dglVar19.a = 1;
                return (ProtoMsgIntAndObject) n92.h();
        }
    }
}
