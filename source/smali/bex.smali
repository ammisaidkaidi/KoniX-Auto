.class public final synthetic Lbex;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbey;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbey;I)V
    .locals 0

    iput p2, p0, Lbex;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbex;->a:Lbey;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lbex;->b:I

    const v1, 0x7f090119

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lbex;->a:Lbey;

    iget-object v0, v0, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lbex;->a:Lbey;

    iget-object v2, v0, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lbey;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
