.class public final Lcey;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldny;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcey;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcey;->b()Ldgr;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldgr;
    .locals 7

    .line 1
    sget-object v0, Ldgr;->x:Ldgr;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    check-cast v0, Lddh;

    iget-object v1, p0, Lcey;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    iget-boolean v3, v0, Lddf;->c:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_0
    iget-object v3, v0, Lddh;->b:Lddk;

    .line 5
    check-cast v3, Ldgr;

    iget v4, v3, Ldgr;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ldgr;->a:I

    iput-wide v1, v3, Ldgr;->b:J

    :cond_1
    iget-object v1, p0, Lcey;->a:Landroid/content/Context;

    .line 6
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v3, v0, Lddf;->c:Z

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_2
    iget-object v3, v0, Lddh;->b:Lddk;

    .line 9
    check-cast v3, Ldgr;

    iget v4, v3, Ldgr;->a:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Ldgr;->a:I

    iput-object v2, v3, Ldgr;->k:Ljava/lang/String;

    .line 10
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_4
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 11
    check-cast v2, Ldgr;

    iget v3, v2, Ldgr;->a:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    iput v3, v2, Ldgr;->a:I

    iput v1, v2, Ldgr;->w:I

    :try_start_0
    iget-object v1, p0, Lcey;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcey;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 13
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 14
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_5
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 15
    check-cast v2, Ldgr;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->j:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_7
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 19
    check-cast v2, Ldgr;

    iget v3, v2, Ldgr;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ldgr;->a:I

    iput v1, v2, Ldgr;->c:I

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_8
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 21
    check-cast v2, Ldgr;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->e:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_9

    .line 23
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_9
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 24
    check-cast v2, Ldgr;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->f:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_a

    .line 26
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_a
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 27
    check-cast v2, Ldgr;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->g:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_b

    .line 29
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_b
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 30
    check-cast v2, Ldgr;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->h:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_c
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 33
    check-cast v2, Ldgr;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->i:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_d

    .line 35
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_d
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 36
    check-cast v2, Ldgr;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->n:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_e

    .line 38
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_e
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 39
    check-cast v2, Ldgr;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->o:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_f

    .line 41
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_f
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 42
    check-cast v2, Ldgr;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->p:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_10

    .line 44
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_10
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 45
    check-cast v2, Ldgr;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->u:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_11

    .line 47
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_11
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 48
    check-cast v2, Ldgr;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    const/high16 v4, 0x2000000

    or-int/2addr v3, v4

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->v:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_12

    .line 51
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    :cond_12
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 52
    check-cast v2, Ldgr;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->l:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_13

    .line 55
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v5, v0, Lddf;->c:Z

    .line 17
    :cond_13
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 56
    check-cast v2, Ldgr;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Ldgr;->a:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Ldgr;->a:I

    iput-object v1, v2, Ldgr;->m:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldgr;

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 17
    const-string v1, "Can\'t find own package?"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
