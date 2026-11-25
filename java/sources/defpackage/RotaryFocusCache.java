package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RotaryFocusCache {
    public final RotaryFocusCacheEntry a;
    public final RotaryViewTimestampMap b;

    public RotaryFocusCache(int i, int i2, int i3, int i4) {
        this.a = new RotaryFocusCacheEntry(i, i2);
        this.b = new RotaryViewTimestampMap(i3, i4);
    }

    public final FocusAreaProviderInterface a(int i, long j) {
        RotaryViewTimestampMap amvVar = this.b;
        FocusAreaTimestampEntry amwVar = (FocusAreaTimestampEntry) amvVar.get(Integer.valueOf(NavInstructionTypeEnum));
        if (amwVar == null) {
            return null;
        }
        switch (amvVar.a) {
            case 2:
                if (ProtoMessageTwoIntsAndFlagValue - amwVar.b >= amvVar.b) {
                    return null;
                }
                break;
            case 3:
                break;
            default:
                return null;
        }
        return amwVar.a;
    }
}
