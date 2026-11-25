.class public final synthetic Lbbf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbbh;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbbh;I[B)V
    .locals 0

    iput p2, p0, Lbbf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbf;->a:Lbbh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lbbf;->b:I

    packed-switch v0, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lbbf;->a:Lbbh;

    iget-object v0, v0, Lbbh;->a:Lbbl;

    iget-object v1, v0, Lbbl;->d:Lbah;

    iget-object v0, v0, Lbbl;->h:Lawo;

    .line 5
    invoke-virtual {v1, v0}, Lbah;->p(Lawo;)V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lbbf;->a:Lbbh;

    iget-object v1, v0, Lbbh;->a:Lbbl;

    invoke-virtual {v1}, Lbbl;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbbh;->a:Lbbl;

    iget-object v0, v0, Lbbl;->f:Landroid/content/Context;

    const v1, 0x7f100060

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
