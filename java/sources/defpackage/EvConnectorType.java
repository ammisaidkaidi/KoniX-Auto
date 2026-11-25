package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum EvConnectorType implements EnumLite {
    EV_CONNECTOR_TYPE_UNKNOWN(0),
    EV_CONNECTOR_TYPE_J1772(1),
    EV_CONNECTOR_TYPE_MENNEKES(2),
    EV_CONNECTOR_TYPE_CHADEMO(3),
    EV_CONNECTOR_TYPE_COMBO_1(4),
    EV_CONNECTOR_TYPE_COMBO_2(5),
    EV_CONNECTOR_TYPE_TESLA_ROADSTER(6),
    EV_CONNECTOR_TYPE_TESLA_HPWC(7),
    EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER(8),
    EV_CONNECTOR_TYPE_GBT(9),
    EV_CONNECTOR_TYPE_OTHER(101);

    public final int l;

    ckc(int i) {
        this.l = i;
    }

    public static EvConnectorType b(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return EV_CONNECTOR_TYPE_UNKNOWN;
            case 1:
                return EV_CONNECTOR_TYPE_J1772;
            case 2:
                return EV_CONNECTOR_TYPE_MENNEKES;
            case 3:
                return EV_CONNECTOR_TYPE_CHADEMO;
            case 4:
                return EV_CONNECTOR_TYPE_COMBO_1;
            case 5:
                return EV_CONNECTOR_TYPE_COMBO_2;
            case 6:
                return EV_CONNECTOR_TYPE_TESLA_ROADSTER;
            case 7:
                return EV_CONNECTOR_TYPE_TESLA_HPWC;
            case 8:
                return EV_CONNECTOR_TYPE_TESLA_SUPERCHARGER;
            case 9:
                return EV_CONNECTOR_TYPE_GBT;
            case 101:
                return EV_CONNECTOR_TYPE_OTHER;
            default:
                return null;
        }
    }

    @Override // defpackage.EnumLite
    public final int a() {
        return this.l;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.l);
    }
}
