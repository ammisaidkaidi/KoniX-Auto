.class public final Ldbc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ldbb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ldbb;->b:Ldbb;

    sput-object v0, Ldbc;->a:Ldbb;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ldbb;
    .locals 3

    .line 1
    invoke-static {p0}, Ldbc;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Ldbc;->b(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.google.android.build.data.Properties"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    const v1, 0xc0280

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Ldbc;->a:Ldbb;

    return-object p0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 10
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.android.build.data.properties"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Ldbc;->a:Ldbb;

    return-object p0

    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object p1

    .line 13
    sget-object v0, Ldbb;->b:Ldbb;

    .line 14
    invoke-static {v0, p0, p1}, Lddk;->q(Lddk;Ljava/io/InputStream;Ldcz;)Lddk;

    move-result-object p0

    check-cast p0, Ldbb;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p0, Ldbc;->a:Ldbb;

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 8
    const-string p1, "Failed to resolve target AndroidBuildData"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
