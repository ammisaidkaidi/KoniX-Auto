.class final Lbcd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field final synthetic a:Lbce;


# direct methods
.method public constructor <init>(Lbce;)V
    .locals 0

    iput-object p1, p0, Lbcd;->a:Lbce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbcd;->a:Lbce;

    iget-boolean v1, v0, Lbce;->l:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbce;->l:Z

    invoke-virtual {v0}, Lbce;->aT()Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/auto/aareceiver/settings/SettingsActivity;

    :cond_0
    return-void
.end method
