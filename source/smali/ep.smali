.class final Lep;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leq;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lep;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .line 2
    iget v0, p0, Lep;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lyl;

    iget p1, p1, Lyl;->c:I

    return p1

    .line 1
    :pswitch_0
    check-cast p1, Ldx;

    iget p1, p1, Ldx;->b:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    iget v0, p0, Lep;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lyl;

    iget-boolean p1, p1, Lyl;->d:Z

    return p1

    .line 1
    :pswitch_0
    check-cast p1, Ldx;

    iget-boolean p1, p1, Ldx;->c:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
