package defpackage;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.XmlResourceParser;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeRegistrationParser {
    private final PackageManager a;

    public PhenotypeRegistrationParser(PackageManager packageManager) {
        this.a = packageManager;
    }

    static final String d(String str, PackageInfo packageInfo, boolean z) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Empty configuration package");
        }
        if (!z) {
            return str;
        }
        if (str.contains("#")) {
            throw new IllegalArgumentException(String.format("When %s ConstraintLayoutStateParser present, %s should not contain subpackage separator %s (config package=%s)", "auto-subpackage", "configuration-package", "#", str));
        }
        String str2 = packageInfo.packageName;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("#");
        StaggeredGridLayoutParams.append(str2);
        return StaggeredGridLayoutParams.toString();
    }

    private final List e(PackageInfo packageInfo) {
        if (packageInfo.applicationInfo == null || packageInfo.applicationInfo.metaData == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : packageInfo.applicationInfo.metaData.keySet()) {
            if ("com.google.android.gms.phenotype.registration.xml".equals(str) || str.startsWith("com.google.android.gms.phenotype.registration.xml:")) {
                int i = packageInfo.applicationInfo.metaData.getInt(str, 0);
                if (NavInstructionTypeEnum != 0) {
                    arrayList.addAll(i(i, packageInfo, 1));
                }
            }
        }
        if (packageInfo.services != null) {
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            int length = serviceInfoArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                ServiceInfo serviceInfo = serviceInfoArr[i2];
                if (serviceInfo == null || !"com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService".equals(serviceInfo.name)) {
                    i2++;
                } else if (serviceInfo.metaData != null) {
                    for (String str2 : serviceInfo.metaData.keySet()) {
                        if ("com.google.android.gms.phenotype.registration.xml".equals(str2) || str2.startsWith("com.google.android.gms.phenotype.registration.xml:")) {
                            int i3 = serviceInfo.metaData.getInt(str2, 0);
                            if (i3 != 0) {
                                arrayList.addAll(i(i3, packageInfo, 2));
                            }
                        }
                    }
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            ProtoMsgManyMixedFields dbtVar = (ProtoMsgManyMixedFields) arrayList.get(i4);
            ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dbtVar.E(5);
            ddfVar.n(dbtVar);
            String str3 = packageInfo.packageName;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoMsgManyMixedFields dbtVar2 = (ProtoMsgManyMixedFields) ddfVar.b;
            ProtoMsgManyMixedFields dbtVar3 = dbt.p;
            str3.getClass();
            dbtVar2.b = 7;
            dbtVar2.c = str3;
            if (dbtVar.e == 0) {
                int i5 = packageInfo.versionCode;
                if (ddfVar.c) {
                    ddfVar.k();
                    ddfVar.c = false;
                }
                ProtoMsgManyMixedFields dbtVar4 = (ProtoMsgManyMixedFields) ddfVar.b;
                dbtVar4.a |= 2;
                dbtVar4.e = i5;
            }
            ProtoMsgManyMixedFields dbtVar5 = (ProtoMsgManyMixedFields) ddfVar.b;
            dbtVar5.k = 2;
            dbtVar5.a |= 128;
            arrayList2.add((ProtoMsgManyMixedFields) ddfVar.h());
        }
        return arrayList2;
    }

    private final void f(XmlResourceParser xmlResourceParser) {
        String name = xmlResourceParser.getName();
        while (xmlResourceParser.next() != 3) {
            switch (xmlResourceParser.getEventType()) {
                case 2:
                    f(xmlResourceParser);
                case 3:
                default:
                    int eventType = xmlResourceParser.getEventType();
                    StringBuilder sb = new StringBuilder(29);
                    StaggeredGridLayoutParams.append("Unexpected event: ");
                    StaggeredGridLayoutParams.append(eventType);
                    throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
                case 4:
                    xmlResourceParser.next();
                    g(xmlResourceParser, name);
                    return;
            }
        }
        g(xmlResourceParser, name);
    }

    private static final void g(XmlResourceParser xmlResourceParser, String str) {
        if (xmlResourceParser.getEventType() != 3) {
            int lineNumber = xmlResourceParser.getLineNumber();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45);
            StaggeredGridLayoutParams.append("Expected an end tag named ");
            StaggeredGridLayoutParams.append(str);
            StaggeredGridLayoutParams.append(" (line ");
            StaggeredGridLayoutParams.append(lineNumber);
            StaggeredGridLayoutParams.append(")");
            throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
        }
        if (str.equals(xmlResourceParser.getName())) {
            return;
        }
        int lineNumber2 = xmlResourceParser.getLineNumber();
        String name = xmlResourceParser.getName();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 58 + String.valueOf(name).length());
        sb2.append("Mismatched end tag at line ");
        sb2.append(lineNumber2);
        sb2.append(". Expected ");
        sb2.append(str);
        sb2.append(" but was ");
        sb2.append(name);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static final void h(XmlResourceParser xmlResourceParser, String str) {
        if (xmlResourceParser.getEventType() != 2) {
            int lineNumber = xmlResourceParser.getLineNumber();
            StringBuilder sb = new StringBuilder(str.length() + 46);
            StaggeredGridLayoutParams.append("Expected a start tag named ");
            StaggeredGridLayoutParams.append(str);
            StaggeredGridLayoutParams.append(" (line ");
            StaggeredGridLayoutParams.append(lineNumber);
            StaggeredGridLayoutParams.append(")");
            throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
        }
        if (str.equals(xmlResourceParser.getName())) {
            return;
        }
        int lineNumber2 = xmlResourceParser.getLineNumber();
        String name = xmlResourceParser.getName();
        StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 53 + str.length());
        sb2.append("Unexpected start tag at line ");
        sb2.append(lineNumber2);
        sb2.append(": ");
        sb2.append(name);
        sb2.append(". Expected ");
        sb2.append(str);
        throw new IllegalArgumentException(sb2.toString());
    }

    private final List i(int i, PackageInfo packageInfo, int i2) {
        XmlResourceParser xml = this.a.getResourcesForApplication(packageInfo.packageName).getXml(NavInstructionTypeEnum);
        ArrayList arrayList = new ArrayList();
        try {
            xml.next();
            while (xml.next() != 1) {
                if (xml.getEventType() != 2) {
                    int eventType = xml.getEventType();
                    StringBuilder sb = new StringBuilder(29);
                    StaggeredGridLayoutParams.append("Unexpected event: ");
                    StaggeredGridLayoutParams.append(eventType);
                    throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
                }
                String name = xml.getName();
                if ("phenotype-registrations".equals(name)) {
                    h(xml, "phenotype-registrations");
                    ArrayList arrayList2 = new ArrayList();
                    while (true) {
                        int i3 = 3;
                        if (xml.nextTag() != 3) {
                            String name2 = xml.getName();
                            if ("phenotype-registration".equals(name2)) {
                                h(xml, "phenotype-registration");
                                ProtoMsgHoldingMessageAndBool n = ProtoMsgManyMixedFields.p.n();
                                boolean z = false;
                                boolean z2 = false;
                                while (true) {
                                    if (xml.nextTag() != i3) {
                                        String name3 = xml.getName();
                                        switch (name3) {
                                            case "configuration-package":
                                                String nextText = xml.nextText();
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                ProtoMsgManyMixedFields dbtVar = (ProtoMsgManyMixedFields) n.b;
                                                nextText.getClass();
                                                dbtVar.a |= 1;
                                                dbtVar.d = nextText;
                                                break;
                                            case "configuration-version":
                                                int parseInt = Integer.parseInt(xml.nextText());
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                ProtoMsgManyMixedFields dbtVar2 = (ProtoMsgManyMixedFields) n.b;
                                                dbtVar2.a |= 2;
                                                dbtVar2.e = parseInt;
                                                break;
                                            case "log-sources":
                                                h(xml, "log-sources");
                                                ArrayList arrayList3 = new ArrayList();
                                                while (xml.nextTag() != 3) {
                                                    String name4 = xml.getName();
                                                    if ("log-source".equals(name4)) {
                                                        arrayList3.add(xml.nextText());
                                                    } else {
                                                        f(xml);
                                                    }
                                                    g(xml, name4);
                                                }
                                                g(xml, "log-sources");
                                                n.s(arrayList3);
                                                break;
                                            case "params":
                                                ByteString t = ByteString.t(Base64.decode(xml.nextText(), 8));
                                                if (n.c) {
                                                    n.k();
                                                    n.c = z;
                                                }
                                                ProtoMsgManyMixedFields dbtVar3 = (ProtoMsgManyMixedFields) n.b;
                                                dbtVar3.a = 8 | dbtVar3.a;
                                                dbtVar3.i = t;
                                                break;
                                            case "auto-subpackage":
                                                z2 = Boolean.parseBoolean(xml.nextText());
                                                break;
                                            case "delete-runtime-properties":
                                                boolean parseBoolean = Boolean.parseBoolean(xml.nextText());
                                                if (n.c) {
                                                    n.k();
                                                    n.c = z;
                                                }
                                                ProtoMsgManyMixedFields dbtVar4 = (ProtoMsgManyMixedFields) n.b;
                                                dbtVar4.a |= 512;
                                                dbtVar4.m = parseBoolean;
                                                break;
                                            default:
                                                f(xml);
                                                break;
                                        }
                                        g(xml, name3);
                                        i3 = 3;
                                        z = false;
                                    } else {
                                        g(xml, "phenotype-registration");
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        ProtoMsgManyMixedFields dbtVar5 = (ProtoMsgManyMixedFields) n.b;
                                        dbtVar5.l = i2 - 1;
                                        dbtVar5.a |= 256;
                                        long j = AndroidBuildDataResolver.a(this.a, packageInfo.packageName).a;
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        ProtoMsgManyMixedFields dbtVar6 = (ProtoMsgManyMixedFields) n.b;
                                        dbtVar6.a |= 1024;
                                        dbtVar6.n = j;
                                        String d = d(dbtVar6.d, packageInfo, z2);
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        ProtoMsgManyMixedFields dbtVar7 = (ProtoMsgManyMixedFields) n.b;
                                        d.getClass();
                                        dbtVar7.a |= 1;
                                        dbtVar7.d = d;
                                        arrayList2.add((ProtoMsgManyMixedFields) n.h());
                                    }
                                }
                            } else {
                                f(xml);
                            }
                            g(xml, name2);
                        } else {
                            g(xml, "phenotype-registrations");
                            arrayList.addAll(arrayList2);
                        }
                    }
                } else {
                    f(xml);
                }
                g(xml, name);
            }
            return arrayList;
        } finally {
            xml.close();
        }
    }

    public final HashMap a(PackageInfo packageInfo, List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = ((ResolveInfo) it.next()).serviceInfo;
            if (serviceInfo != null && "com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService".equals(serviceInfo.name) && serviceInfo.metaData != null) {
                for (String str : serviceInfo.metaData.keySet()) {
                    if ("com.google.android.gms.phenotype.heterodyne_info.binarypb".equals(str) || str.startsWith("com.google.android.gms.phenotype.heterodyne_info.binarypb")) {
                        int i = serviceInfo.metaData.getInt(str, 0);
                        if (NavInstructionTypeEnum != 0) {
                            ByteString w = ByteString.w(this.a.getResourcesForApplication(packageInfo.packageName).openRawResource(NavInstructionTypeEnum));
                            ExtensionRegistryLite b = ExtensionRegistryLite.b();
                            PhenotypeTokenProto cgyVar = cgy.c;
                            try {
                                CodedInputStreamReaderBase l = w.l();
                                GeneratedMessageLite ddkVar = (GeneratedMessageLite) cgyVar.E(4);
                                try {
                                    MessageSchema b2 = MessageInfoImpl.a.b(ddkVar);
                                    b2.h(ddkVar, LiteProtoFieldParser.p(ProtoMessageSingleStringL), b);
                                    b2.f(ddkVar);
                                    try {
                                        l.z(0);
                                        GeneratedMessageLite.F(ddkVar);
                                        PhenotypeTokenProto cgyVar2 = (PhenotypeTokenProto) ddkVar;
                                        String str2 = cgyVar2.b;
                                        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) cgyVar2.E(5);
                                        ddfVar.n(cgyVar2);
                                        if (ddfVar.c) {
                                            ddfVar.k();
                                            ddfVar.c = false;
                                        }
                                        PhenotypeTokenProto cgyVar3 = (PhenotypeTokenProto) ddfVar.b;
                                        cgyVar3.a &= -2;
                                        cgyVar3.b = PhenotypeTokenProto.c.b;
                                        hashMap.put(str2, ((PhenotypeTokenProto) ddfVar.h()).e());
                                    } catch (InvalidProtocolBufferException e) {
                                        throw e;
                                    }
                                } catch (InvalidProtocolBufferException e2) {
                                    if (e2.a) {
                                        throw new InvalidProtocolBufferException(e2);
                                    }
                                    throw e2;
                                } catch (IOException e3) {
                                    if (e3.getCause() instanceof InvalidProtocolBufferException) {
                                        throw ((InvalidProtocolBufferException) e3.getCause());
                                    }
                                    throw new InvalidProtocolBufferException(e3);
                                } catch (RuntimeException e4) {
                                    if (e4.getCause() instanceof InvalidProtocolBufferException) {
                                        throw ((InvalidProtocolBufferException) e4.getCause());
                                    }
                                    throw e4;
                                }
                            } catch (InvalidProtocolBufferException e5) {
                                throw e5;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public final List b(String str) {
        return this.a.queryIntentServices(new Intent("com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService").setPackage(str), 787072);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List c(PackageInfo packageInfo, List list) {
        packageInfo.getClass();
        ArrayList arrayList = new ArrayList();
        if (list.isEmpty()) {
            try {
                return e(packageInfo);
            } catch (Exception e) {
                String valueOf = String.valueOf(packageInfo.packageName);
                Log.e("PhenotypeResourceReader", valueOf.length() != 0 ? "Error reading phenotype registration: ".concat(valueOf) : new String("Error reading phenotype registration: "), e);
                return new ArrayList();
            }
        }
        try {
            HashSet hashSet = new HashSet();
            ImmutableListBuilder j = ImmutableList.j();
            HashMap a = a(packageInfo, list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ServiceInfo serviceInfo = ((ResolveInfo) it.next()).serviceInfo;
                if (serviceInfo != null) {
                    if ("com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService".equals(serviceInfo.name) && serviceInfo.metaData != null) {
                        for (String str : serviceInfo.metaData.keySet()) {
                            if ("com.google.android.gms.phenotype.registration.binarypb".equals(str) || str.startsWith("com.google.android.gms.phenotype.registration.binarypb:")) {
                                int i = serviceInfo.metaData.getInt(str, 0);
                                if (NavInstructionTypeEnum != 0) {
                                    ProtoMsgManyMixedFields dbtVar = (ProtoMsgManyMixedFields) ((ProtoParser) ProtoMsgManyMixedFields.p.E(7)).b(this.a.getResourcesForApplication(packageInfo.packageName).openRawResource(NavInstructionTypeEnum));
                                    ProtoMsgHoldingMessageAndBool n = ProtoMsgManyMixedFields.p.n();
                                    String d = d(dbtVar.d, packageInfo, dbtVar.f);
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    ProtoMsgManyMixedFields dbtVar2 = (ProtoMsgManyMixedFields) n.b;
                                    d.getClass();
                                    Iterator it2 = it;
                                    dbtVar2.a |= 1;
                                    dbtVar2.d = d;
                                    int i2 = (dbtVar.a & 2) != 0 ? dbtVar.e : packageInfo.versionCode;
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    ProtoMsgManyMixedFields dbtVar3 = (ProtoMsgManyMixedFields) n.b;
                                    int i3 = dbtVar3.a | 2;
                                    dbtVar3.a = i3;
                                    dbtVar3.e = i2;
                                    boolean z = dbtVar.f;
                                    dbtVar3.a = i3 | 4;
                                    dbtVar3.f = z;
                                    n.s(dbtVar.g);
                                    String str2 = packageInfo.packageName;
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    ProtoMsgManyMixedFields dbtVar4 = (ProtoMsgManyMixedFields) n.b;
                                    str2.getClass();
                                    dbtVar4.b = 7;
                                    dbtVar4.c = str2;
                                    int L = ViewCompatCore.L(dbtVar.k);
                                    if (L == 0) {
                                        L = 1;
                                    }
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    ProtoMsgManyMixedFields dbtVar5 = (ProtoMsgManyMixedFields) n.b;
                                    dbtVar5.k = L - 1;
                                    int i4 = dbtVar5.a | 128;
                                    dbtVar5.a = i4;
                                    dbtVar5.l = 3;
                                    dbtVar5.a = i4 | 256;
                                    if (!dbtVar.i.B()) {
                                        ByteString dclVar = dbtVar.i;
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        ProtoMsgManyMixedFields dbtVar6 = (ProtoMsgManyMixedFields) n.b;
                                        dclVar.getClass();
                                        dbtVar6.a |= 8;
                                        dbtVar6.i = dclVar;
                                    }
                                    if (dbtVar.m) {
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        ProtoMsgManyMixedFields dbtVar7 = (ProtoMsgManyMixedFields) n.b;
                                        dbtVar7.a |= 512;
                                        dbtVar7.m = true;
                                    }
                                    long j2 = AndroidBuildDataResolver.a(this.a, packageInfo.packageName).a;
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    ProtoMsgManyMixedFields dbtVar8 = (ProtoMsgManyMixedFields) n.b;
                                    dbtVar8.a |= 1024;
                                    dbtVar8.n = j2;
                                    ByteString dclVar2 = (ByteString) a.get(dbtVar.d);
                                    if (dclVar2 != null) {
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        ProtoMsgManyMixedFields dbtVar9 = (ProtoMsgManyMixedFields) n.b;
                                        dbtVar9.a |= 2048;
                                        dbtVar9.o = dclVar2;
                                    }
                                    j.g((ProtoMsgManyMixedFields) n.h());
                                    it = it2;
                                }
                            }
                        }
                    }
                }
            }
            UnmodifiableListIterator it3 = j.f().iterator();
            while (it3.hasNext()) {
                ProtoMsgManyMixedFields dbtVar10 = (ProtoMsgManyMixedFields) it3.next();
                hashSet.add(dbtVar10.d);
                arrayList.add(dbtVar10);
            }
            for (ProtoMsgManyMixedFields dbtVar11 : e(packageInfo)) {
                if (!hashSet.contains(dbtVar11.d)) {
                    arrayList.add(dbtVar11);
                }
            }
            return arrayList;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(packageInfo.packageName);
            Log.e("PhenotypeResourceReader", valueOf2.length() != 0 ? "Error reading phenotype registration: ".concat(valueOf2) : new String("Error reading phenotype registration: "), e2);
            return new ArrayList();
        }
    }
}
