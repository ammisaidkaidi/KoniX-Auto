.class public Lcom/google/android/apps/auto/aareceiver/settings/SettingsActivity;
.super Lbce;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbce;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltk;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/aareceiver/settings/SettingsActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbce;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0c007b

    invoke-virtual {p0, p1}, Ltk;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lbv;->aI()Lcr;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcr;->h()Lda;

    move-result-object p1

    new-instance v0, Lbcb;

    invoke-direct {v0}, Lbcb;-><init>()V

    .line 5
    const v1, 0x7f09010a

    invoke-virtual {p1, v1, v0}, Lda;->j(ILbr;)V

    .line 6
    invoke-virtual {p1}, Lda;->b()V

    return-void
.end method
