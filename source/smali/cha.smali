.class public final Lcha;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcha;->a:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static final d(Ljava/lang/String;Landroid/content/pm/PackageInfo;Z)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    if-eqz p2, :cond_1

    .line 3
    const-string p2, "#"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "auto-subpackage"

    aput-object v3, v0, v2

    const-string v2, "configuration-package"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 p2, 0x3

    aput-object p0, v0, p2

    .line 4
    const-string p0, "When %s is present, %s should not contain subpackage separator %s (config package=%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    return-object p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p1, "Empty configuration package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "com.google.android.gms.phenotype.registration.xml:"

    const-string v4, "com.google.android.gms.phenotype.registration.xml"

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lcha;->i(ILandroid/content/pm/PackageInfo;I)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    .line 11
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget-object v8, v1, v7

    if-eqz v8, :cond_6

    .line 12
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v10, "com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 13
    iget-object v1, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    .line 14
    iget-object v1, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 16
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    :cond_5
    iget-object v7, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    invoke-direct {p0, v6, p1, v2}, Lcha;->i(ILandroid/content/pm/PackageInfo;I)Ljava/util/List;

    move-result-object v6

    .line 19
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_b

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Ldbt;

    const/4 v7, 0x5

    .line 22
    invoke-virtual {v6, v7}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v7

    .line 23
    check-cast v7, Lddf;

    .line 24
    invoke-virtual {v7, v6}, Lddf;->n(Lddk;)V

    .line 22
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-boolean v9, v7, Lddf;->c:Z

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v5, v7, Lddf;->c:Z

    :cond_8
    iget-object v9, v7, Lddf;->b:Lddk;

    .line 25
    check-cast v9, Ldbt;

    sget-object v10, Ldbt;->p:Ldbt;

    .line 26
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x7

    iput v10, v9, Ldbt;->b:I

    iput-object v8, v9, Ldbt;->c:Ljava/lang/Object;

    iget v6, v6, Ldbt;->e:I

    if-nez v6, :cond_a

    .line 27
    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-boolean v8, v7, Lddf;->c:Z

    if-eqz v8, :cond_9

    .line 28
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v5, v7, Lddf;->c:Z

    :cond_9
    iget-object v8, v7, Lddf;->b:Lddk;

    .line 29
    check-cast v8, Ldbt;

    iget v9, v8, Ldbt;->a:I

    or-int/2addr v9, v2

    iput v9, v8, Ldbt;->a:I

    iput v6, v8, Ldbt;->e:I

    :cond_a
    iget-object v6, v7, Lddf;->b:Lddk;

    .line 30
    check-cast v6, Ldbt;

    iput v2, v6, Ldbt;->k:I

    iget v8, v6, Ldbt;->a:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v6, Ldbt;->a:I

    .line 31
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v6

    check-cast v6, Ldbt;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    return-object v1

    .line 1
    :cond_c
    :goto_4
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private final f(Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 6
    invoke-static {p1, v0}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    return-void

    .line 4
    :pswitch_2
    invoke-direct {p0, p1}, Lcha;->f(Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, v0}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v1

    .line 5
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3a

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Mismatched end tag at line "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Expected "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected an end tag named "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (line "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final h(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v1

    .line 5
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected start tag at line "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Expected "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected a start tag named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final i(ILandroid/content/pm/PackageInfo;I)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "phenotype-registration"

    const-string v3, "phenotype-registrations"

    iget-object v4, v1, Lcha;->a:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    .line 5
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f

    .line 6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_e

    .line 7
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 9
    invoke-static {v4, v3}, Lcha;->h(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextTag()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_c

    .line 12
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 14
    invoke-static {v4, v2}, Lcha;->h(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 15
    sget-object v12, Ldbt;->p:Ldbt;

    .line 16
    invoke-virtual {v12}, Lddk;->n()Lddf;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 17
    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextTag()I

    move-result v15

    const/16 v16, -0x1

    if-eq v15, v11, :cond_7

    .line 18
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 19
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "log-sources"

    sparse-switch v17, :sswitch_data_0

    :cond_0
    goto :goto_3

    .line 39
    :sswitch_0
    nop

    .line 19
    const-string v8, "configuration-version"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v16, 0x1

    goto :goto_3

    :sswitch_1
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v16, 0x2

    goto :goto_3

    :sswitch_2
    const-string v8, "configuration-package"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v16, 0x0

    goto :goto_3

    :sswitch_3
    const-string v8, "auto-subpackage"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v16, 0x4

    goto :goto_3

    :sswitch_4
    const-string v8, "delete-runtime-properties"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v16, 0x5

    goto :goto_3

    :sswitch_5
    const-string v8, "params"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v16, 0x3

    :goto_3
    packed-switch v16, :pswitch_data_0

    .line 40
    const/4 v13, 0x2

    :try_start_1
    invoke-direct {v1, v4}, Lcha;->f(Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_6

    .line 30
    :pswitch_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-boolean v8, v12, Lddf;->c:Z

    if-eqz v8, :cond_1

    invoke-virtual {v12}, Lddf;->k()V

    iput-boolean v13, v12, Lddf;->c:Z

    :cond_1
    iget-object v8, v12, Lddf;->b:Lddk;

    .line 31
    check-cast v8, Ldbt;

    iget v11, v8, Ldbt;->a:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v8, Ldbt;->a:I

    iput-boolean v7, v8, Ldbt;->m:Z

    const/4 v13, 0x2

    goto/16 :goto_6

    .line 32
    :pswitch_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const/4 v13, 0x2

    goto/16 :goto_6

    .line 33
    :pswitch_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-static {v7}, Ldcl;->t([B)Ldcl;

    move-result-object v7

    iget-boolean v11, v12, Lddf;->c:Z

    if-eqz v11, :cond_2

    invoke-virtual {v12}, Lddf;->k()V

    iput-boolean v13, v12, Lddf;->c:Z

    :cond_2
    iget-object v11, v12, Lddf;->b:Lddk;

    .line 34
    check-cast v11, Ldbt;

    iget v13, v11, Ldbt;->a:I

    or-int/2addr v8, v13

    iput v8, v11, Ldbt;->a:I

    iput-object v7, v11, Ldbt;->i:Ldcl;

    const/4 v13, 0x2

    goto/16 :goto_6

    :pswitch_3
    nop

    .line 20
    invoke-static {v4, v7}, Lcha;->h(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextTag()I

    move-result v11

    const/4 v13, 0x3

    if-eq v11, v13, :cond_4

    .line 23
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "log-source"

    .line 24
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 25
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_3
    invoke-direct {v1, v4}, Lcha;->f(Landroid/content/res/XmlResourceParser;)V

    .line 27
    :goto_5
    invoke-static {v4, v11}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_4
    nop

    .line 28
    invoke-static {v4, v7}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v12, v8}, Lddf;->s(Ljava/lang/Iterable;)V

    const/4 v13, 0x2

    goto :goto_6

    .line 35
    :pswitch_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-boolean v8, v12, Lddf;->c:Z

    if-eqz v8, :cond_5

    invoke-virtual {v12}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v12, Lddf;->c:Z

    :cond_5
    iget-object v8, v12, Lddf;->b:Lddk;

    .line 36
    check-cast v8, Ldbt;

    iget v11, v8, Ldbt;->a:I

    const/4 v13, 0x2

    or-int/2addr v11, v13

    iput v11, v8, Ldbt;->a:I

    iput v7, v8, Ldbt;->e:I

    goto :goto_6

    .line 37
    :pswitch_5
    const/4 v13, 0x2

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v12, Lddf;->c:Z

    if-eqz v8, :cond_6

    invoke-virtual {v12}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v12, Lddf;->c:Z

    :cond_6
    iget-object v8, v12, Lddf;->b:Lddk;

    .line 38
    check-cast v8, Ldbt;

    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v8, Ldbt;->a:I

    const/16 v16, 0x1

    or-int/lit8 v11, v11, 0x1

    iput v11, v8, Ldbt;->a:I

    iput-object v7, v8, Ldbt;->d:Ljava/lang/String;

    .line 41
    :goto_6
    invoke-static {v4, v15}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 19
    :cond_7
    const/4 v13, 0x2

    .line 42
    invoke-static {v4, v2}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    iget-boolean v7, v12, Lddf;->c:Z

    if-eqz v7, :cond_8

    .line 43
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v7, 0x0

    iput-boolean v7, v12, Lddf;->c:Z

    :cond_8
    iget-object v7, v12, Lddf;->b:Lddk;

    .line 44
    check-cast v7, Ldbt;

    add-int/lit8 v8, p3, -0x1

    iput v8, v7, Ldbt;->l:I

    iget v8, v7, Ldbt;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v7, Ldbt;->a:I

    iget-object v7, v1, Lcha;->a:Landroid/content/pm/PackageManager;

    .line 45
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 46
    invoke-static {v7, v8}, Ldbc;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ldbb;

    move-result-object v7

    iget-wide v7, v7, Ldbb;->a:J

    iget-boolean v11, v12, Lddf;->c:Z

    if-eqz v11, :cond_9

    .line 45
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v11, 0x0

    iput-boolean v11, v12, Lddf;->c:Z

    :cond_9
    iget-object v11, v12, Lddf;->b:Lddk;

    .line 47
    check-cast v11, Ldbt;

    iget v15, v11, Ldbt;->a:I

    or-int/lit16 v15, v15, 0x400

    iput v15, v11, Ldbt;->a:I

    iput-wide v7, v11, Ldbt;->n:J

    iget-object v7, v11, Ldbt;->d:Ljava/lang/String;

    .line 48
    invoke-static {v7, v0, v14}, Lcha;->d(Ljava/lang/String;Landroid/content/pm/PackageInfo;Z)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v12, Lddf;->c:Z

    if-eqz v8, :cond_a

    .line 49
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v12, Lddf;->c:Z

    :cond_a
    iget-object v8, v12, Lddf;->b:Lddk;

    .line 50
    check-cast v8, Ldbt;

    .line 51
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v8, Ldbt;->a:I

    const/4 v14, 0x1

    or-int/2addr v11, v14

    iput v11, v8, Ldbt;->a:I

    iput-object v7, v8, Ldbt;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {v12}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Ldbt;

    .line 53
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 54
    :cond_b
    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct {v1, v4}, Lcha;->f(Landroid/content/res/XmlResourceParser;)V

    .line 55
    :goto_7
    invoke-static {v4, v10}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_1

    .line 54
    :cond_c
    nop

    .line 56
    invoke-static {v4, v3}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 57
    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 58
    :cond_d
    invoke-direct {v1, v4}, Lcha;->f(Landroid/content/res/XmlResourceParser;)V

    .line 59
    :goto_8
    invoke-static {v4, v6}, Lcha;->g(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x1d

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected event: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v5

    .line 58
    :catchall_0
    move-exception v0

    .line 61
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 62
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    :sswitch_data_0
    .sparse-switch
        -0x3b55067a -> :sswitch_5
        -0x172df256 -> :sswitch_4
        -0xf89971c -> :sswitch_3
        0x1ebc366f -> :sswitch_2
        0x2ded9e2f -> :sswitch_1
        0x63cc1f01 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/pm/PackageInfo;Ljava/util/List;)Ljava/util/HashMap;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v3, "com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    const-string v4, "com.google.android.gms.phenotype.heterodyne_info.binarypb"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    :cond_2
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcha;->a:Landroid/content/pm/PackageManager;

    .line 9
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 12
    invoke-static {v3}, Ldcl;->w(Ljava/io/InputStream;)Ldcl;

    move-result-object v3

    .line 13
    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v4

    .line 14
    sget-object v6, Lcgy;->c:Lcgy;

    .line 15
    :try_start_0
    invoke-virtual {v3}, Ldcl;->l()Ldcp;

    move-result-object v3

    const/4 v7, 0x4

    .line 16
    invoke-virtual {v6, v7}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lddk;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_4

    .line 17
    :try_start_1
    sget-object v7, Ldez;->a:Ldez;

    invoke-virtual {v7, v6}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v7

    .line 18
    invoke-static {v3}, Ldcq;->p(Ldcp;)Ldcq;

    move-result-object v8

    invoke-interface {v7, v6, v8, v4}, Ldfg;->h(Ljava/lang/Object;Ldfc;Ldcz;)V

    .line 19
    invoke-interface {v7, v6}, Ldfg;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    :try_start_2
    invoke-virtual {v3, v5}, Ldcp;->z(I)V
    :try_end_2
    .catch Lddu; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    invoke-static {v6}, Lddk;->F(Lddk;)V

    .line 22
    check-cast v6, Lcgy;

    iget-object v3, v6, Lcgy;->b:Ljava/lang/String;

    const/4 v4, 0x5

    .line 23
    invoke-virtual {v6, v4}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v4

    .line 24
    check-cast v4, Lddf;

    .line 25
    invoke-virtual {v4, v6}, Lddf;->n(Lddk;)V

    iget-boolean v6, v4, Lddf;->c:Z

    if-eqz v6, :cond_3

    .line 23
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v5, v4, Lddf;->c:Z

    :cond_3
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 26
    check-cast v5, Lcgy;

    iget v6, v5, Lcgy;->a:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Lcgy;->a:I

    sget-object v6, Lcgy;->c:Lcgy;

    iget-object v6, v6, Lcgy;->b:Ljava/lang/String;

    iput-object v6, v5, Lcgy;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v4

    check-cast v4, Lcgy;

    invoke-virtual {v4}, Ldbv;->e()Ldcl;

    move-result-object v4

    .line 27
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 36
    :try_start_3
    throw p1

    .line 32
    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lddu;

    if-eqz p2, :cond_4

    .line 29
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lddu;

    throw p1

    .line 30
    :cond_4
    throw p1

    .line 35
    :catch_2
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lddu;

    if-eqz p2, :cond_5

    .line 32
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lddu;

    throw p1

    .line 36
    :cond_5
    new-instance p2, Lddu;

    .line 33
    invoke-direct {p2, p1}, Lddu;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 37
    :catch_3
    move-exception p1

    iget-boolean p2, p1, Lddu;->a:Z

    if-eqz p2, :cond_6

    new-instance p2, Lddu;

    .line 34
    invoke-direct {p2, p1}, Lddu;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 35
    :cond_6
    throw p1
    :try_end_3
    .catch Lddu; {:try_start_3 .. :try_end_3} :catch_4

    .line 27
    :catch_4
    move-exception p1

    .line 37
    throw p1

    .line 27
    :cond_7
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcha;->a:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1
    const v1, 0xc0280

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/pm/PackageInfo;Ljava/util/List;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "PhenotypeResourceReader"

    const-string v5, "Error reading phenotype registration: "

    if-nez v3, :cond_18

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    .line 4
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-static {}, Lcqh;->j()Lcqc;

    move-result-object v6

    .line 6
    invoke-virtual/range {p0 .. p2}, Lcha;->a(Landroid/content/pm/PackageInfo;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v7

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 8
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_12

    const-string v10, "com.google.android.libraries.phenotype.registration.PhenotypeMetadataHolderService"

    .line 9
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_11

    .line 10
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "com.google.android.gms.phenotype.registration.binarypb"

    .line 11
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "com.google.android.gms.phenotype.registration.binarypb:"

    .line 12
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 13
    :cond_1
    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_f

    iget-object v12, v1, Lcha;->a:Landroid/content/pm/PackageManager;

    .line 14
    iget-object v14, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 15
    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 16
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 17
    sget-object v12, Ldbt;->p:Ldbt;

    .line 18
    const/4 v14, 0x7

    invoke-virtual {v12, v14}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v12

    .line 19
    check-cast v12, Ldex;

    .line 17
    invoke-interface {v12, v11}, Ldex;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldbt;

    sget-object v12, Ldbt;->p:Ldbt;

    .line 20
    invoke-virtual {v12}, Lddk;->n()Lddf;

    move-result-object v12

    iget-object v15, v11, Ldbt;->d:Ljava/lang/String;

    iget-boolean v14, v11, Ldbt;->f:Z

    .line 21
    invoke-static {v15, v2, v14}, Lcha;->d(Ljava/lang/String;Landroid/content/pm/PackageInfo;Z)Ljava/lang/String;

    move-result-object v14

    iget-boolean v15, v12, Lddf;->c:Z

    if-eqz v15, :cond_2

    .line 22
    invoke-virtual {v12}, Lddf;->k()V

    iput-boolean v13, v12, Lddf;->c:Z

    :cond_2
    iget-object v15, v12, Lddf;->b:Lddk;

    .line 23
    check-cast v15, Ldbt;

    .line 24
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v15, Ldbt;->a:I

    move-object/from16 v16, v8

    const/4 v8, 0x1

    or-int/2addr v13, v8

    iput v13, v15, Ldbt;->a:I

    iput-object v14, v15, Ldbt;->d:Ljava/lang/String;

    iget v13, v11, Ldbt;->a:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_3

    iget v13, v11, Ldbt;->e:I

    goto :goto_2

    .line 25
    :cond_3
    iget v13, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 24
    :goto_2
    iget-boolean v14, v12, Lddf;->c:Z

    if-eqz v14, :cond_4

    .line 26
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v14, 0x0

    iput-boolean v14, v12, Lddf;->c:Z

    :cond_4
    iget-object v14, v12, Lddf;->b:Lddk;

    .line 27
    check-cast v14, Ldbt;

    iget v15, v14, Ldbt;->a:I

    or-int/lit8 v15, v15, 0x2

    iput v15, v14, Ldbt;->a:I

    iput v13, v14, Ldbt;->e:I

    iget-boolean v13, v11, Ldbt;->f:Z

    or-int/lit8 v15, v15, 0x4

    iput v15, v14, Ldbt;->a:I

    iput-boolean v13, v14, Ldbt;->f:Z

    iget-object v13, v11, Ldbt;->g:Lddr;

    .line 28
    invoke-virtual {v12, v13}, Lddf;->s(Ljava/lang/Iterable;)V

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-boolean v14, v12, Lddf;->c:Z

    if-eqz v14, :cond_5

    .line 29
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v14, 0x0

    iput-boolean v14, v12, Lddf;->c:Z

    :cond_5
    iget-object v14, v12, Lddf;->b:Lddk;

    .line 30
    check-cast v14, Ldbt;

    .line 31
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x7

    iput v15, v14, Ldbt;->b:I

    iput-object v13, v14, Ldbt;->c:Ljava/lang/Object;

    iget v13, v11, Ldbt;->k:I

    invoke-static {v13}, Lhl;->L(I)I

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :cond_6
    iget-boolean v14, v12, Lddf;->c:Z

    if-eqz v14, :cond_7

    .line 32
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v14, 0x0

    iput-boolean v14, v12, Lddf;->c:Z

    :cond_7
    iget-object v14, v12, Lddf;->b:Lddk;

    .line 33
    check-cast v14, Ldbt;

    add-int/lit8 v13, v13, -0x1

    iput v13, v14, Ldbt;->k:I

    iget v13, v14, Ldbt;->a:I

    or-int/lit16 v13, v13, 0x80

    iput v13, v14, Ldbt;->a:I

    const/4 v15, 0x3

    iput v15, v14, Ldbt;->l:I

    or-int/lit16 v13, v13, 0x100

    iput v13, v14, Ldbt;->a:I

    iget-object v13, v11, Ldbt;->i:Ldcl;

    .line 34
    invoke-virtual {v13}, Ldcl;->B()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, v11, Ldbt;->i:Ldcl;

    iget-boolean v14, v12, Lddf;->c:Z

    if-eqz v14, :cond_8

    .line 35
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v14, 0x0

    iput-boolean v14, v12, Lddf;->c:Z

    :cond_8
    iget-object v14, v12, Lddf;->b:Lddk;

    .line 36
    check-cast v14, Ldbt;

    .line 37
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Ldbt;->a:I

    or-int/lit8 v15, v15, 0x8

    iput v15, v14, Ldbt;->a:I

    iput-object v13, v14, Ldbt;->i:Ldcl;

    :cond_9
    iget-boolean v13, v11, Ldbt;->m:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v12, Lddf;->c:Z

    if-eqz v13, :cond_a

    .line 38
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v13, 0x0

    iput-boolean v13, v12, Lddf;->c:Z

    :cond_a
    iget-object v13, v12, Lddf;->b:Lddk;

    .line 39
    check-cast v13, Ldbt;

    iget v14, v13, Ldbt;->a:I

    or-int/lit16 v14, v14, 0x200

    iput v14, v13, Ldbt;->a:I

    iput-boolean v8, v13, Ldbt;->m:Z

    :cond_b
    iget-object v8, v1, Lcha;->a:Landroid/content/pm/PackageManager;

    .line 40
    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 41
    invoke-static {v8, v13}, Ldbc;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ldbb;

    move-result-object v8

    iget-wide v13, v8, Ldbb;->a:J

    iget-boolean v8, v12, Lddf;->c:Z

    if-eqz v8, :cond_c

    .line 42
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v8, 0x0

    iput-boolean v8, v12, Lddf;->c:Z

    :cond_c
    iget-object v8, v12, Lddf;->b:Lddk;

    .line 43
    check-cast v8, Ldbt;

    iget v15, v8, Ldbt;->a:I

    or-int/lit16 v15, v15, 0x400

    iput v15, v8, Ldbt;->a:I

    iput-wide v13, v8, Ldbt;->n:J

    iget-object v8, v11, Ldbt;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldcl;

    if-eqz v8, :cond_e

    iget-boolean v11, v12, Lddf;->c:Z

    if-eqz v11, :cond_d

    .line 45
    invoke-virtual {v12}, Lddf;->k()V

    const/4 v11, 0x0

    iput-boolean v11, v12, Lddf;->c:Z

    :cond_d
    iget-object v11, v12, Lddf;->b:Lddk;

    .line 46
    check-cast v11, Ldbt;

    iget v13, v11, Ldbt;->a:I

    or-int/lit16 v13, v13, 0x800

    iput v13, v11, Ldbt;->a:I

    iput-object v8, v11, Ldbt;->o:Ldcl;

    .line 47
    :cond_e
    invoke-virtual {v12}, Lddf;->f()Lddk;

    move-result-object v8

    check-cast v8, Ldbt;

    .line 48
    invoke-virtual {v6, v8}, Lcqc;->g(Ljava/lang/Object;)V

    move-object/from16 v8, v16

    goto/16 :goto_1

    .line 13
    :cond_f
    move-object/from16 v16, v8

    goto/16 :goto_1

    .line 10
    :cond_10
    move-object/from16 v16, v8

    goto/16 :goto_0

    .line 9
    :cond_11
    move-object/from16 v16, v8

    goto/16 :goto_0

    .line 8
    :cond_12
    move-object/from16 v16, v8

    goto/16 :goto_0

    .line 49
    :cond_13
    invoke-virtual {v6}, Lcqc;->f()Lcqh;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Lcqh;->u()Lcsu;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldbt;

    iget-object v8, v7, Ldbt;->d:Ljava/lang/String;

    .line 51
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcha;->e(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldbt;

    iget-object v8, v7, Ldbt;->d:Ljava/lang/String;

    .line 54
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 55
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_16
    goto :goto_6

    .line 58
    :catch_0
    move-exception v0

    .line 56
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 60
    :cond_17
    new-instance v2, Ljava/lang/String;

    .line 56
    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :goto_6
    return-object v0

    .line 58
    :cond_18
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcha;->e(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 57
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 59
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 56
    :cond_19
    new-instance v0, Ljava/lang/String;

    .line 59
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :goto_8
    return-object v0
.end method
