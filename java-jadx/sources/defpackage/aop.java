package defpackage;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import com.android.car.ui.SecureView;
import com.google.android.embedded.projection.R;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aop extends qq implements aoq {
    private final List a;
    private int b = -1;

    public aop(List list) {
        this.a = list;
    }

    @Override // defpackage.aoq
    public final void a(int i) {
        this.b = i;
    }

    @Override // defpackage.qq
    public final int getItemCount() {
        return this.b == -1 ? this.a.size() : Math.min(this.a.size(), this.b);
    }

    @Override // defpackage.qq
    public final int getItemViewType(int i) {
        if (this.a.get(i) instanceof aoe) {
            return 1;
        }
        if (this.a.get(i) instanceof aog) {
            return 2;
        }
        throw new IllegalStateException("Unknown view type.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00dd, code lost:
    
        if (r0 != false) goto L46;
     */
    @Override // defpackage.qq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onBindViewHolder(rr rrVar, int i) {
        boolean z;
        CompoundButton compoundButton;
        switch (rrVar.getItemViewType()) {
            case 1:
                if (!(rrVar instanceof aoo)) {
                    throw new IllegalStateException("Incorrect view holder type for list item.");
                }
                aoj aojVar = (aoj) this.a.get(i);
                if (!(aojVar instanceof aoe)) {
                    throw new IllegalStateException("Expected item to be bound to viewHolder to be instance of CarUiContentListItem.");
                }
                aoo aooVar = (aoo) rrVar;
                aoe aoeVar = (aoe) aojVar;
                amo amoVar = aoeVar.b;
                if (amoVar != null) {
                    aooVar.a.a(amoVar);
                    aooVar.a.setVisibility(0);
                } else {
                    aooVar.a.setVisibility(8);
                }
                aooVar.b.setVisibility(8);
                aooVar.c.setVisibility(8);
                aooVar.d.setVisibility(8);
                aooVar.e.setVisibility(8);
                Drawable drawable = aoeVar.a;
                final int i2 = 1;
                if (drawable != null) {
                    aooVar.f.setVisibility(0);
                    aob aobVar = aob.NONE;
                    aoc aocVar = aoc.CONTENT;
                    switch (aoeVar.d) {
                        case CONTENT:
                            aooVar.d.setVisibility(0);
                            aooVar.d.setImageDrawable(drawable);
                            break;
                        case STANDARD:
                            aooVar.c.setVisibility(0);
                            aooVar.c.setImageDrawable(drawable);
                            break;
                        case AVATAR:
                            aooVar.e.setVisibility(0);
                            aooVar.e.setImageDrawable(drawable);
                            aooVar.e.setClipToOutline(true);
                            break;
                    }
                } else {
                    aooVar.f.setVisibility(8);
                }
                View view = aooVar.m;
                if (view instanceof SecureView) {
                    ((SecureView) view).a();
                    z = false;
                } else {
                    z = true;
                }
                View view2 = aooVar.n;
                if (view2 instanceof SecureView) {
                    ((SecureView) view2).a();
                } else {
                    z = true;
                }
                View view3 = aooVar.o;
                if (view3 instanceof SecureView) {
                    ((SecureView) view3).a();
                    break;
                }
                Log.w("carui", "List item doesn't have a SecureView, but security was requested!");
                aooVar.h.setVisibility(8);
                aooVar.i.setVisibility(8);
                aooVar.j.setVisibility(8);
                aooVar.k.setVisibility(8);
                aooVar.l.setVisibility(8);
                final arh arhVar = aoeVar.i;
                aob aobVar2 = aob.NONE;
                aoc aocVar2 = aoc.CONTENT;
                switch (aoeVar.c) {
                    case NONE:
                        aooVar.g.setVisibility(8);
                        aooVar.m.setVisibility(0);
                        aooVar.m.setOnClickListener(new View.OnClickListener() { // from class: aom
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view4) {
                                switch (i2) {
                                    case 0:
                                        arh arhVar2 = arhVar;
                                        int i3 = aoo.p;
                                        if (arhVar2 != null) {
                                            arhVar2.a();
                                            break;
                                        }
                                        break;
                                    case 1:
                                        arh arhVar3 = arhVar;
                                        int i4 = aoo.p;
                                        if (arhVar3 != null) {
                                            arhVar3.a();
                                            break;
                                        }
                                        break;
                                    default:
                                        arh arhVar4 = arhVar;
                                        int i5 = aoo.p;
                                        if (arhVar4 != null) {
                                            arhVar4.a();
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        aooVar.m.setClickable(arhVar != null);
                        aooVar.n.setVisibility(8);
                        aooVar.o.setVisibility(8);
                        aooVar.itemView.setActivated(aoeVar.g);
                        aooVar.a(aooVar.itemView, aoeVar.f);
                        return;
                    case SWITCH:
                        compoundButton = aooVar.i;
                        aooVar.b(aoeVar, compoundButton, arhVar);
                        aooVar.itemView.setActivated(aoeVar.g);
                        aooVar.a(aooVar.itemView, aoeVar.f);
                        return;
                    case CHECK_BOX:
                        compoundButton = aooVar.j;
                        aooVar.b(aoeVar, compoundButton, arhVar);
                        aooVar.itemView.setActivated(aoeVar.g);
                        aooVar.a(aooVar.itemView, aoeVar.f);
                        return;
                    case RADIO_BUTTON:
                        compoundButton = aooVar.k;
                        aooVar.b(aoeVar, compoundButton, arhVar);
                        aooVar.itemView.setActivated(aoeVar.g);
                        aooVar.a(aooVar.itemView, aoeVar.f);
                        return;
                    case ICON:
                        aooVar.l.setVisibility(0);
                        ImageView imageView = aooVar.l;
                        aoeVar.c();
                        imageView.setImageDrawable(null);
                        aooVar.g.setVisibility(0);
                        aooVar.m.setVisibility(0);
                        final int i3 = 2;
                        aooVar.m.setOnClickListener(new View.OnClickListener() { // from class: aom
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view4) {
                                switch (i3) {
                                    case 0:
                                        arh arhVar2 = arhVar;
                                        int i32 = aoo.p;
                                        if (arhVar2 != null) {
                                            arhVar2.a();
                                            break;
                                        }
                                        break;
                                    case 1:
                                        arh arhVar3 = arhVar;
                                        int i4 = aoo.p;
                                        if (arhVar3 != null) {
                                            arhVar3.a();
                                            break;
                                        }
                                        break;
                                    default:
                                        arh arhVar4 = arhVar;
                                        int i5 = aoo.p;
                                        if (arhVar4 != null) {
                                            arhVar4.a();
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        aooVar.m.setClickable(arhVar != null);
                        aooVar.n.setVisibility(8);
                        aooVar.o.setVisibility(8);
                        aooVar.itemView.setActivated(aoeVar.g);
                        aooVar.a(aooVar.itemView, aoeVar.f);
                        return;
                    case CHEVRON:
                        aooVar.l.setVisibility(0);
                        aooVar.l.setImageDrawable(aooVar.itemView.getContext().getDrawable(R.drawable.car_ui_preference_icon_chevron));
                        aooVar.g.setVisibility(0);
                        aooVar.m.setVisibility(0);
                        View view4 = aooVar.m;
                        final int i4 = r2 ? 1 : 0;
                        view4.setOnClickListener(new View.OnClickListener() { // from class: aom
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view42) {
                                switch (i4) {
                                    case 0:
                                        arh arhVar2 = arhVar;
                                        int i32 = aoo.p;
                                        if (arhVar2 != null) {
                                            arhVar2.a();
                                            break;
                                        }
                                        break;
                                    case 1:
                                        arh arhVar3 = arhVar;
                                        int i42 = aoo.p;
                                        if (arhVar3 != null) {
                                            arhVar3.a();
                                            break;
                                        }
                                        break;
                                    default:
                                        arh arhVar4 = arhVar;
                                        int i5 = aoo.p;
                                        if (arhVar4 != null) {
                                            arhVar4.a();
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        aooVar.m.setClickable(arhVar != null);
                        aooVar.n.setVisibility(8);
                        aooVar.o.setVisibility(8);
                        aooVar.itemView.setActivated(aoeVar.g);
                        aooVar.a(aooVar.itemView, aoeVar.f);
                        return;
                    default:
                        throw new IllegalStateException("Unknown secondary action type.");
                }
            case 2:
                if (!(rrVar instanceof aok)) {
                    throw new IllegalStateException("Incorrect view holder type for list item.");
                }
                aoj aojVar2 = (aoj) this.a.get(i);
                if (!(aojVar2 instanceof aog)) {
                    throw new IllegalStateException("Expected item to be bound to viewHolder to be instance of CarUiHeaderListItem.");
                }
                throw null;
            default:
                throw new IllegalStateException("Unknown item view type.");
        }
    }

    @Override // defpackage.qq
    public final rr onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 1:
                return new aoo(from.inflate(R.layout.car_ui_list_item, viewGroup, false));
            case 2:
                return new aok(from.inflate(R.layout.car_ui_header_list_item, viewGroup, false));
            default:
                throw new IllegalStateException("Unknown item type.");
        }
    }
}
