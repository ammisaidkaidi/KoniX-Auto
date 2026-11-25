.class public final Lamx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:I

.field final b:J

.field c:Lamy;


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lamx;->a:I

    iput-wide p2, p0, Lamx;->b:J

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expiration time must be positive if CacheType is CACHE_TYPE_EXPIRED_AFTER_SOME_TIME"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(J)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lamx;->c:Lamy;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lamx;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v1, v0, Lamy;->b:J

    iget-wide v3, p0, Lamx;->b:J

    add-long/2addr v1, v3

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    :pswitch_1
    iget-object p1, v0, Lamy;->a:Landroid/view/View;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Landroid/view/View;J)V
    .locals 2

    .line 1
    iget v0, p0, Lamx;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lamy;

    invoke-direct {v0, p1, p2, p3}, Lamy;-><init>(Landroid/view/View;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lamx;->c:Lamy;

    return-void
.end method
