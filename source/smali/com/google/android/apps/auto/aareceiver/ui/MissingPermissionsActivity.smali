.class public Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;
.super Lbfs;
.source "PG"


# static fields
.field private static final c:Lcsz;


# instance fields
.field public b:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->c:Lcsz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbfs;-><init>()V

    return-void
.end method

.method private final b()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static d()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final f()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->c:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x37

    .line 3
    const-string v2, "com/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity"

    const-string v3, "launchSystemSettings"

    const-string v4, "MissingPermissionsActivity.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Settings Activity not found"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->finish()V

    return-void
.end method

.method private final g(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->c:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x2c

    const-string v2, "com/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity"

    const-string v3, "launchAppPermissionSettings"

    const-string v4, "MissingPermissionsActivity.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Permissions Settings Activity not found. Falling back to Settings Activity."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->f()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lbfs;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0c0058

    invoke-virtual {p0, p1}, Ltk;->setContentView(I)V

    :try_start_0
    invoke-static {p0}, Lx/d;->rotateActivityRoot(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 3
    :goto_0
    const p1, 0x7f090075

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lbfx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lbfx;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    const p1, 0x7f090076

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbfx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbfx;-><init>(Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->g(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->g(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
