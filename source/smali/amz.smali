.class public final Lamz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lamx;

.field public final b:Lamv;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lamx;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Lamx;-><init>(IJ)V

    iput-object v0, p0, Lamz;->a:Lamx;

    new-instance p1, Lamv;

    .line 2
    invoke-direct {p1, p3, p4}, Lamv;-><init>(II)V

    iput-object p1, p0, Lamz;->b:Lamv;

    return-void
.end method


# virtual methods
.method public final a(IJ)Lamt;
    .locals 3

    .line 1
    iget-object v0, p0, Lamz;->b:Lamv;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lamv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lamw;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    iget v1, v0, Lamv;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v1, p1, Lamw;->b:J

    sub-long/2addr p2, v1

    iget v0, v0, Lamv;->b:I

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    :pswitch_1
    iget-object p1, p1, Lamw;->a:Lamt;

    return-object p1

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
