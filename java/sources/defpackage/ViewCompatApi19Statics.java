package defpackage;

import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import j$.util.Optional;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ViewCompatApi19Statics {
    static int a(View view) {
        return view.getAccessibilityLiveRegion();
    }

    static void b(ViewParent viewParent, View view, View view2, int i) {
        viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i);
    }

    static void c(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setContentChangeTypes(NavInstructionTypeEnum);
    }

    static boolean d(View view) {
        return view.isAttachedToWindow();
    }

    static boolean e(View view) {
        return view.isLaidOut();
    }

    public static final ContentInfoCompatWrapper f(View view, ContentInfoCompatWrapper gpVar) {
        CharSequence coerceToStyledText;
        if (gpVar.a.b() == 2) {
            return gpVar;
        }
        ClipData c = gpVar.a.c();
        int a = gpVar.a.a();
        Editable text = ((AppCompatEditText) view).getText();
        Context context = ((TextView) view).getContext();
        boolean z = false;
        for (int i = 0; NavInstructionTypeEnum < c.getItemCount(); i++) {
            ClipData.Item itemAt = c.getItemAt(NavInstructionTypeEnum);
            if ((SingleStringProtoMessage & 1) != 0) {
                coerceToStyledText = itemAt.coerceToText(context);
                if (coerceToStyledText instanceof Spanned) {
                    coerceToStyledText = coerceToStyledText.toString();
                }
            } else {
                coerceToStyledText = itemAt.coerceToStyledText(context);
            }
            if (coerceToStyledText != null) {
                if (IcuMessageFormat) {
                    text.insert(Selection.getSelectionEnd(text), "\n");
                    text.insert(Selection.getSelectionEnd(text), coerceToStyledText);
                    z = true;
                } else {
                    int selectionStart = Selection.getSelectionStart(text);
                    int selectionEnd = Selection.getSelectionEnd(text);
                    int max = Math.max(0, Math.min(selectionStart, selectionEnd));
                    int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                    Selection.setSelection(text, max2);
                    text.replace(max, max2, coerceToStyledText);
                    z = true;
                }
            }
        }
        return null;
    }

    public static /* synthetic */ boolean g(Optional optional) {
        return !optional.isPresent();
    }

    public static int h(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            default:
                return 0;
        }
    }

    public static int i(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            case 9:
                return 10;
            case 10:
                return 11;
            case 11:
                return 12;
            case 12:
                return 13;
            case 13:
                return 14;
            case 14:
                return 15;
            case 15:
                return 16;
            case 16:
                return 17;
            case 17:
                return 18;
            case 18:
                return 19;
            case 19:
                return 20;
            case 20:
                return 21;
            case 21:
                return 22;
            case 22:
                return 23;
            default:
                return 0;
        }
    }

    public static Object j(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (IcuMessageFormat) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (IcuMessageFormat) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static void k(Thread thread) {
        boolean z = false;
        while (true) {
            try {
                thread.join();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (IcuMessageFormat) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (IcuMessageFormat) {
            Thread.currentThread().interrupt();
        }
    }

    public static ListeningScheduledExecutorService l(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof ListeningScheduledExecutorService ? (ListeningScheduledExecutorService) scheduledExecutorService : new ListeningScheduledExecutorServiceImpl(scheduledExecutorService);
    }

    public static Executor m(Executor executor) {
        return new SequentialExecutor(executor);
    }

    public static Executor n(Executor executor, GuavaAbstractFuture_cyp cypVar) {
        executor.getClass();
        return executor == czj.a ? executor : new WrappingExecutor(executor, cypVar);
    }
}
