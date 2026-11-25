.class public final Lbws;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lbtk;

.field public final f:Lcol;

.field public final g:Lcol;

.field public final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcoc;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbws;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbws;->b:Ljava/lang/String;

    .line 2
    sget v0, Lbvk;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbvk;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    nop

    .line 3
    :goto_0
    iput-object v1, p0, Lbws;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcoc;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p2}, Lcoc;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbwh;

    invoke-virtual {p2}, Lbwh;->a()Lcol;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_3
    nop

    .line 6
    :goto_1
    iput-object v3, p0, Lbws;->g:Lcol;

    iput-object p3, p0, Lbws;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 8
    const-string p3, "android.hardware.type.watch"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    goto :goto_2

    .line 12
    :cond_4
    nop

    .line 9
    const-string p3, "android.software.leanback"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x4

    goto :goto_2

    :cond_5
    const/4 p3, 0x2

    .line 8
    :goto_2
    nop

    .line 10
    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-ne v2, p2, :cond_6

    const/4 p3, 0x5

    :cond_6
    iput p3, p0, Lbws;->h:I

    new-instance p2, Lbtk;

    .line 11
    invoke-direct {p2, p1}, Lbtk;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lbws;->e:Lbtk;

    new-instance p1, Lbwr;

    invoke-direct {p1, p0}, Lbwr;-><init>(Lbws;)V

    .line 12
    invoke-static {p1}, Lex;->i(Lcol;)Lcol;

    move-result-object p1

    iput-object p1, p0, Lbws;->f:Lcol;

    return-void
.end method
