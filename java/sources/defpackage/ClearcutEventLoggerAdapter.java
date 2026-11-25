package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutEventLoggerAdapter implements PrimesEventLoggerInterface {
    private final ClearcutLoggerFacade a;

    public ClearcutEventLoggerAdapter(ClearcutLoggerFacade bikVar) {
        this.a = bikVar;
    }

    @Override // defpackage.PrimesEventLoggerInterface
    public final void a(ProtoMsgConfigWithDglChild dgnVar) {
        if (dgnVar != null) {
            LogEventBuilder a = this.a.a(dgnVar);
            ProtoMsgSubclassOfDdf ddhVar = a.j;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMsgMixedScalarsConfig dgtVar = (ProtoMsgMixedScalarsConfig) ddhVar.b;
            ProtoMsgMixedScalarsConfig dgtVar2 = dgt.j;
            dgtVar.a |= 16;
            dgtVar.e = 1;
            a.a();
        }
    }
}
