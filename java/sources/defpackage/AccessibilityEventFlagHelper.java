package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccessibilityEventFlagHelper {
    public final SimpleArrayMap a = new SimpleArrayMap();
    public final LongSparseArrayCompat b = new LongSparseArrayCompat();

    public final ItemViewTypeHolder a(RecyclerViewViewHolder rrVar, int i) {
        ViewHolderAttachState szVar;
        ItemViewTypeHolder quVar;
        int c = this.a.c(rrVar);
        if (PhenotypeFlagMessage >= 0 && (szVar = (ViewHolderAttachState) this.a.i(PhenotypeFlagMessage)) != null) {
            int i2 = szVar.a;
            if ((i2 & i) != 0) {
                int i3 = (NavInstructionTypeEnum ^ (-1)) & i2;
                szVar.a = i3;
                if (NavInstructionTypeEnum == 4) {
                    quVar = szVar.b;
                } else {
                    if (NavInstructionTypeEnum != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    quVar = szVar.c;
                }
                if ((i3 & 12) == 0) {
                    this.a.g(PhenotypeFlagMessage);
                    sz.b(szVar);
                }
                return quVar;
            }
        }
        return null;
    }

    final void b(RecyclerViewViewHolder rrVar) {
        ViewHolderAttachState szVar = (ViewHolderAttachState) this.a.get(rrVar);
        if (szVar == null) {
            szVar = sz.a();
            this.a.put(rrVar, szVar);
        }
        szVar.a |= 1;
    }

    public final void c(long j, RecyclerViewViewHolder rrVar) {
        this.b.f(j, rrVar);
    }

    public final void d(RecyclerViewViewHolder rrVar, ItemViewTypeHolder quVar) {
        ViewHolderAttachState szVar = (ViewHolderAttachState) this.a.get(rrVar);
        if (szVar == null) {
            szVar = sz.a();
            this.a.put(rrVar, szVar);
        }
        szVar.c = quVar;
        szVar.a |= 8;
    }

    public final void e(RecyclerViewViewHolder rrVar, ItemViewTypeHolder quVar) {
        ViewHolderAttachState szVar = (ViewHolderAttachState) this.a.get(rrVar);
        if (szVar == null) {
            szVar = sz.a();
            this.a.put(rrVar, szVar);
        }
        szVar.b = quVar;
        szVar.a |= 4;
    }

    public final void f() {
        this.a.clear();
        this.b.e();
    }

    final void g(RecyclerViewViewHolder rrVar) {
        ViewHolderAttachState szVar = (ViewHolderAttachState) this.a.get(rrVar);
        if (szVar == null) {
            return;
        }
        szVar.a &= -2;
    }

    final void h(RecyclerViewViewHolder rrVar) {
        int a = this.b.a() - 1;
        while (true) {
            if (SingleStringProtoMessage < 0) {
                break;
            }
            if (rrVar == this.b.d(SingleStringProtoMessage)) {
                LongSparseArrayCompat vgVar = this.b;
                if (vgVar.d[a] != vg.a) {
                    vgVar.d[a] = vg.a;
                    vgVar.b = true;
                }
            } else {
                a--;
            }
        }
        ViewHolderAttachState szVar = (ViewHolderAttachState) this.a.remove(rrVar);
        if (szVar != null) {
            sz.b(szVar);
        }
    }

    public final boolean i(RecyclerViewViewHolder rrVar) {
        ViewHolderAttachState szVar = (ViewHolderAttachState) this.a.get(rrVar);
        return (szVar == null || (szVar.a & 1) == 0) ? false : true;
    }
}
