.class public final synthetic Laom;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Larh;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Larh;I)V
    .locals 0

    iput p2, p0, Laom;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laom;->a:Larh;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 5
    iget p1, p0, Laom;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Laom;->a:Larh;

    sget v0, Laoo;->p:I

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Larh;->a()V

    return-void

    :pswitch_0
    iget-object p1, p0, Laom;->a:Larh;

    .line 1
    sget v0, Laoo;->p:I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Larh;->a()V

    :cond_0
    return-void

    :pswitch_1
    iget-object p1, p0, Laom;->a:Larh;

    .line 3
    sget v0, Laoo;->p:I

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Larh;->a()V

    :cond_1
    return-void

    .line 6
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
