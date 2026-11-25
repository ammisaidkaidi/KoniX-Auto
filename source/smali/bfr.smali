.class final Lbfr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field final synthetic a:Lbfs;


# direct methods
.method public constructor <init>(Lbfs;)V
    .locals 0

    iput-object p1, p0, Lbfr;->a:Lbfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbfr;->a:Lbfs;

    iget-boolean v1, v0, Lbfs;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbfs;->a:Z

    invoke-virtual {v0}, Lbfs;->aT()Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;

    check-cast v1, Lass;

    iget-object v1, v1, Lass;->a:Latj;

    iget-object v1, v1, Latj;->e:Ldny;

    .line 2
    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    iput-object v1, v0, Lcom/google/android/apps/auto/aareceiver/ui/MissingPermissionsActivity;->b:Landroid/content/pm/PackageManager;

    :cond_0
    return-void
.end method
