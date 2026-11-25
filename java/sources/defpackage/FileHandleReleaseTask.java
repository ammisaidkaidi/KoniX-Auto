package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FileHandleReleaseTask {
    public final StorageFileHandle a;
    private long b = 1;

    public FileHandleReleaseTask(StorageFileHandle cayVar) {
        this.a = cayVar;
    }

    public final void a(StorageFileHandle cayVar, long j, ArrayList arrayList) {
        List list;
        if (cayVar.f == null) {
            list = cayVar.f == null ? Collections.emptyList() : cayVar.f;
        } else {
            list = cayVar.f;
            cayVar.f = null;
        }
        if (cayVar.c() && list.isEmpty()) {
            return;
        }
        ProtoMsgHoldingMessageAndBool n = ProtoMessageStringAndFiveLongs.k.n();
        int i = cayVar.g;
        String str = cayVar.b;
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageStringAndFiveLongs dpcVar = (ProtoMessageStringAndFiveLongs) n.b;
        str.getClass();
        int i2 = dpcVar.a | 1;
        dpcVar.a = i2;
        dpcVar.b = str;
        long j2 = cayVar.c;
        dpcVar.a = i2 | 32;
        dpcVar.g = j2;
        long a = cayVar.a();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageStringAndFiveLongs dpcVar2 = (ProtoMessageStringAndFiveLongs) n.b;
        int i3 = dpcVar2.a | 64;
        dpcVar2.a = i3;
        dpcVar2.h = a;
        long j3 = cayVar.e;
        int i4 = i3 | 256;
        dpcVar2.a = i4;
        dpcVar2.i = j3;
        long j4 = this.b;
        this.b = 1 + j4;
        int i5 = i4 | 8;
        dpcVar2.a = i5;
        dpcVar2.e = j4;
        int i6 = i5 | 16;
        dpcVar2.a = i6;
        dpcVar2.f = j;
        switch (cayVar.h - 1) {
            case 1:
                dpcVar2.j = 1;
                dpcVar2.a = i6 | 512;
                break;
            case 2:
            default:
                dpcVar2.j = 0;
                dpcVar2.a = i6 | 512;
                break;
            case 3:
                dpcVar2.j = 4;
                dpcVar2.a = i6 | 512;
                break;
        }
        if (cayVar.c()) {
            long j5 = ((StorageFileHandle) list.get(list.size() - 1)).d - cayVar.c;
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndFiveLongs dpcVar3 = (ProtoMessageStringAndFiveLongs) n.b;
            dpcVar3.a |= 64;
            dpcVar3.h = j5;
        }
        arrayList.add((ProtoMessageStringAndFiveLongs) n.h());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((StorageFileHandle) it.next(), ((ProtoMessageStringAndFiveLongs) n.b).e, arrayList);
        }
    }
}
