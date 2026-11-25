package defpackage;

import android.media.session.PlaybackState;
import android.os.Bundle;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public class fv {
    public static boolean A(int i) {
        return i == 3 || i == 4 || i == 6;
    }

    public static /* synthetic */ void B(int i) {
        if (i == 0) {
            throw null;
        }
    }

    public static int C(int i) {
        if (i >= 3) {
            return i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Preference.DEFAULT_ORDER;
        }
        ez.C(i, "expectedSize");
        return i + 1;
    }

    public static Object D(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    public static ArrayList E() {
        return new ArrayList();
    }

    public static ArrayList F(int i) {
        ez.C(i, "initialArraySize");
        return new ArrayList(i);
    }

    public static boolean G(List list, Object obj) {
        if (obj == list) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (list2 instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                if (!ew.t(list.get(i), list2.get(i))) {
                    return false;
                }
            }
            return true;
        }
        Iterator it = list.iterator();
        Iterator it2 = list2.iterator();
        while (true) {
            if (it.hasNext()) {
                if (!it2.hasNext() || !ew.t(it.next(), it2.next())) {
                    break;
                }
            } else if (!it2.hasNext()) {
                return true;
            }
        }
        return false;
    }

    public static Object H(Iterator it) {
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object I(Iterable iterable) {
        if (iterable.isEmpty()) {
            throw new NoSuchElementException();
        }
        return iterable.get(iterable.size() - 1);
    }

    public static Object J(Iterable iterable) {
        Iterator it = iterable.iterator();
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("expected one element but was: <");
        sb.append(next);
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            sb.append(", ");
            sb.append(it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    public static Object K(Iterable iterable) {
        return H(((csg) iterable).listIterator());
    }

    public static float a(PlaybackState playbackState) {
        return playbackState.getPlaybackSpeed();
    }

    public static int b(PlaybackState.CustomAction customAction) {
        return customAction.getIcon();
    }

    public static int c(PlaybackState playbackState) {
        return playbackState.getState();
    }

    public static long d(PlaybackState playbackState) {
        return playbackState.getActions();
    }

    public static long e(PlaybackState playbackState) {
        return playbackState.getActiveQueueItemId();
    }

    public static long f(PlaybackState playbackState) {
        return playbackState.getBufferedPosition();
    }

    public static long g(PlaybackState playbackState) {
        return playbackState.getLastPositionUpdateTime();
    }

    public static long h(PlaybackState playbackState) {
        return playbackState.getPosition();
    }

    static PlaybackState.Builder i() {
        return new PlaybackState.Builder();
    }

    static PlaybackState.CustomAction.Builder j(String str, CharSequence charSequence, int i) {
        return new PlaybackState.CustomAction.Builder(str, charSequence, i);
    }

    static PlaybackState.CustomAction k(PlaybackState.CustomAction.Builder builder) {
        return builder.build();
    }

    static PlaybackState l(PlaybackState.Builder builder) {
        return builder.build();
    }

    public static Bundle m(PlaybackState.CustomAction customAction) {
        return customAction.getExtras();
    }

    public static CharSequence n(PlaybackState playbackState) {
        return playbackState.getErrorMessage();
    }

    public static CharSequence o(PlaybackState.CustomAction customAction) {
        return customAction.getName();
    }

    public static String p(PlaybackState.CustomAction customAction) {
        return customAction.getAction();
    }

    public static List q(PlaybackState playbackState) {
        return playbackState.getCustomActions();
    }

    static void r(PlaybackState.Builder builder, PlaybackState.CustomAction customAction) {
        builder.addCustomAction(customAction);
    }

    static void s(PlaybackState.Builder builder, long j) {
        builder.setActions(j);
    }

    static void t(PlaybackState.Builder builder, long j) {
        builder.setActiveQueueItemId(j);
    }

    static void u(PlaybackState.Builder builder, long j) {
        builder.setBufferedPosition(j);
    }

    static void v(PlaybackState.Builder builder, CharSequence charSequence) {
        builder.setErrorMessage(charSequence);
    }

    static void w(PlaybackState.CustomAction.Builder builder, Bundle bundle) {
        builder.setExtras(bundle);
    }

    static void x(PlaybackState.Builder builder, int i, long j, float f, long j2) {
        builder.setState(i, j, f, j2);
    }

    public static gp y(gk gkVar) {
        return gkVar.a();
    }

    public static /* synthetic */ String z(int i) {
        switch (i) {
            case 1:
                return "ENQUEUED";
            case 2:
                return "RUNNING";
            case 3:
                return "SUCCEEDED";
            case 4:
                return "FAILED";
            case 5:
                return "BLOCKED";
            case 6:
                return "CANCELLED";
            default:
                return "null";
        }
    }
}
