.class public final synthetic Lbbz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lacq;


# instance fields
.field public final synthetic a:Lbcb;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbcb;I)V
    .locals 0

    iput p2, p0, Lbbz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbz;->a:Lbcb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 3
    iget v0, p0, Lbbz;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbbz;->a:Lbcb;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Lbcb;->x()Lbv;

    move-result-object v2

    const-class v3, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v0, v1}, Lbcb;->V(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lbbz;->a:Lbcb;

    .line 1
    invoke-virtual {v0}, Lbr;->r()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lxr;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lbcb;->V(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
