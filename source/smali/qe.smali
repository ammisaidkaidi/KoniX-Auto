.class final Lqe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqf;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lqf;I)V
    .locals 0

    iput p2, p0, Lqe;->b:I

    iput-object p1, p0, Lqe;->a:Lqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lqe;->b:I

    packed-switch v0, :pswitch_data_0

    .line 5
    iget-object v0, p0, Lqe;->a:Lqf;

    .line 6
    invoke-virtual {v0}, Lqf;->p()V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lqe;->a:Lqf;

    iget-object v0, v0, Lqf;->e:Lpf;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lhs;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqe;->a:Lqf;

    iget-object v0, v0, Lqf;->e:Lpf;

    .line 2
    invoke-virtual {v0}, Lpf;->getCount()I

    move-result v0

    iget-object v1, p0, Lqe;->a:Lqf;

    iget-object v1, v1, Lqf;->e:Lpf;

    invoke-virtual {v1}, Lpf;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lqe;->a:Lqf;

    iget-object v0, v0, Lqf;->e:Lpf;

    .line 3
    invoke-virtual {v0}, Lpf;->getChildCount()I

    iget-object v0, p0, Lqe;->a:Lqf;

    iget-object v0, v0, Lqf;->p:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lqe;->a:Lqf;

    .line 5
    invoke-virtual {v0}, Lqf;->s()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
