package com.google.android.apps.auto.aareceiver.input;

import android.car.CarProjectionManager;
import android.car.CarProjectionManager$ProjectionKeyEventHandler;
import android.os.SystemClock;
import android.view.InputDevice;
import android.view.KeyEvent;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.InputSource;
import j$.util.Collection;
import j$.util.DesugarArrays;
import j$.util.function.Consumer;
import j$.util.function.Function;
import java.util.HashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class InputManager {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/input/InputManager");
    static final KeyEvent b = new KeyEvent(0, 84);
    static final KeyEvent c = new KeyEvent(1, 84);
    private static final ImmutableSet g = ImmutableSet.r(84, 86, 87, 88, 126, 127, 65537);
    private static final ImmutableSet h = ImmutableSet.p(2, 5);
    private static final ImmutableSet i = ImmutableSet.l(5, 0, 1, 2, 3, 5);
    public final ImmutableMapBase d;
    private final CarProjectionManager j;
    private final int k;
    private final int l;
    private final boolean m;
    private final int[] n;
    private final CarProjectionManager$ProjectionKeyEventHandler o = new CarProjectionManager$ProjectionKeyEventHandler() { // from class: axh
        @Override // android.car.CarProjectionManager$ProjectionKeyEventHandler
        public final void onKeyEvent(int i2) {
            InputManager.this.b(i2);
        }
    };
    public boolean e = false;
    private boolean p = false;
    public boolean f = false;

    public InputManager(CarProjectionManager carProjectionManager, ClusterDisplayAvailability bfeVar, int i2, int i3, boolean z) {
        this.j = carProjectionManager;
        this.k = i2;
        this.l = i3;
        this.m = z;
        final int[] array = DesugarArrays.stream(AndroidKeycode.values()).mapToInt(axk.b).toArray();
        final HashSet hashSet = new HashSet(ProtoMessageIntAndBooleanG);
        DesugarArrays.stream(InputDevice.getDeviceIds()).mapToObj(aws.f).map(new Function() { // from class: axj
            @Override // j$.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                int[] iArr = array;
                FloggerLoggerFactory cszVar = axl.a;
                return ((InputDevice) obj).hasKeys(iArr);
            }

            @Override // j$.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        }).forEach(new Consumer() { // from class: axi
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                int[] iArr = array;
                Set set = hashSet;
                boolean[] zArr = (boolean[]) obj;
                FloggerLoggerFactory cszVar = axl.a;
                for (int i4 = 0; i4 < iArr.length; i4++) {
                    if (zArr[i4]) {
                        set.add(Integer.valueOf(iArr[i4]));
                    }
                }
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
        this.n = Collection.EL.stream(hashSet).mapToInt(axk.a).toArray();
        ImmutableMapBuilder e = ImmutableMapBase.e();
        e.f(DisplayType.DISPLAY_TYPE_MAIN, new InputSource());
        if (bfeVar.a()) {
            e.f(DisplayType.DISPLAY_TYPE_CLUSTER, new InputSource());
        }
        this.d = e.c();
    }

    private final ImmutableSet f() {
        if (this.m) {
            return h;
        }
        ImmutableSetBuilder k = ImmutableSet.k();
        k.g(ProtoMessageSingleEnumFieldH);
        k.d(1);
        return k.f();
    }

    public final InputSource a(DisplayType ckbVar) {
        return (InputSource) this.d.get(ckbVar);
    }

    public final synchronized void b(int i2) {
        if (!this.f) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "handleProjectionKeyEvent", 181, "InputManager.java")).n("handleProjectionKeyEvent called on uninitialized object");
            return;
        }
        if (i2 == 5) {
            ((InputSource) this.d.get(DisplayType.DISPLAY_TYPE_MAIN)).d(new KeyEvent(0, 65540));
            ((InputSource) this.d.get(DisplayType.DISPLAY_TYPE_MAIN)).d(new KeyEvent(1, 65540));
            return;
        }
        InputSource inputSource = (InputSource) this.d.get(DisplayType.DISPLAY_TYPE_MAIN);
        if (!this.e) {
            if (i2 == 2) {
                KeyEvent keyEvent = b;
                inputSource.nativeSendKeyLongEvent(SystemClock.elapsedRealtimeNanos(), keyEvent.getKeyCode(), keyEvent.getMetaState());
                return;
            } else if (this.m || i2 != 1) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "handleProjectionKeyEvent", 221, "InputManager.java")).o("Unexpected key event %d", i2);
                return;
            } else {
                inputSource.d(ProtoLiteMessageBase);
                inputSource.d(PhenotypeFlagMessage);
                return;
            }
        }
        if (i2 == 2) {
            inputSource.d(ProtoLiteMessageBase);
            this.p = true;
        } else {
            if (i2 != 3) {
                if (i2 == 0) {
                    return;
                }
                if (i2 != 1) {
                    ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "handleProjectionKeyEvent", 259, "InputManager.java")).o("Unexpected key event %d", i2);
                    return;
                } else {
                    inputSource.d(ProtoLiteMessageBase);
                    inputSource.d(PhenotypeFlagMessage);
                    return;
                }
            }
            if (this.p) {
                inputSource.d(PhenotypeFlagMessage);
                this.p = false;
            }
        }
    }

    public final synchronized void c() {
        if (this.f) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "initialize", 133, "InputManager.java")).n("initialize called twice on the object");
            return;
        }
        this.f = true;
        ((InputSource) this.d.get(DisplayType.DISPLAY_TYPE_MAIN)).nativeRegisterTouchScreen(this.k, this.l, 1);
        ((InputSource) this.d.get(DisplayType.DISPLAY_TYPE_MAIN)).nativeSetDisplayId(0);
        InputSource inputSource = (InputSource) this.d.get(DisplayType.DISPLAY_TYPE_MAIN);
        int[] iArr = this.n;
        for (int i2 : iArr) {
        }
        inputSource.nativeRegisterKeyCodes(iArr);
        if (this.d.containsKey(DisplayType.DISPLAY_TYPE_CLUSTER)) {
            ((InputSource) this.d.get(DisplayType.DISPLAY_TYPE_CLUSTER)).nativeSetDisplayId(1);
        }
        CarCompat.addKeyEventHandler(this.j, f(), this.o);
    }

    public final synchronized void d(int i2) {
        if (!this.f) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "onVoiceSessionNotification", 265, "InputManager.java")).n("onNavigationFocusRequest called on uninitialized object");
            return;
        }
        boolean z = i2 == 1;
        int i3 = GalReceiver.a;
        this.e = z;
        this.p = false;
        CarCompat.addKeyEventHandler(this.j, z ? i : f(), this.o);
    }

    public final synchronized void e() {
        CarCompat.removeKeyEventHandler(this.j, this.o);
        this.f = false;
    }
}
