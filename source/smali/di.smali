.class final Ldi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldj;

.field final synthetic b:Ldm;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ldm;Ldj;I)V
    .locals 0

    iput p3, p0, Ldi;->c:I

    iput-object p1, p0, Ldi;->b:Ldm;

    iput-object p2, p0, Ldi;->a:Ldj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3
    iget v0, p0, Ldi;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldi;->b:Ldm;

    iget-object v0, v0, Ldm;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ldi;->a:Ldj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldi;->a:Ldj;

    iget v1, v0, Ldl;->e:I

    iget-object v0, v0, Ldl;->a:Lbr;

    .line 4
    iget-object v0, v0, Lbr;->P:Landroid/view/View;

    invoke-static {v1, v0}, Lr;->o(ILandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldi;->b:Ldm;

    iget-object v0, v0, Ldm;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ldi;->a:Ldj;

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldi;->b:Ldm;

    iget-object v0, v0, Ldm;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Ldi;->a:Ldj;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
