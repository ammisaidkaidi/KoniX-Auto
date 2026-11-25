.class final Lcdi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcdj;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcdi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ldeq;)Ljava/lang/String;
    .locals 1

    .line 3
    iget v0, p0, Lcdi;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lddf;

    iget-object p1, p1, Lddf;->b:Lddk;

    check-cast p1, Ldpc;

    iget-object p1, p1, Ldpc;->b:Ljava/lang/String;

    return-object p1

    :pswitch_0
    check-cast p1, Lddf;

    iget-object p1, p1, Lddf;->b:Lddk;

    .line 1
    check-cast p1, Ldpz;

    iget-object p1, p1, Ldpz;->o:Ljava/lang/String;

    return-object p1

    :pswitch_1
    check-cast p1, Lddf;

    iget-object p1, p1, Lddf;->b:Lddk;

    .line 2
    check-cast p1, Ldoj;

    iget-object p1, p1, Ldoj;->e:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ldeq;)Ljava/lang/String;
    .locals 1

    .line 3
    iget v0, p0, Lcdi;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lddf;

    iget-object p1, p1, Lddf;->b:Lddk;

    check-cast p1, Ldpc;

    iget-object p1, p1, Ldpc;->d:Ljava/lang/String;

    return-object p1

    :pswitch_0
    check-cast p1, Lddf;

    iget-object p1, p1, Lddf;->b:Lddk;

    .line 1
    check-cast p1, Ldpz;

    iget-object p1, p1, Ldpz;->d:Ljava/lang/String;

    return-object p1

    :pswitch_1
    check-cast p1, Lddf;

    iget-object p1, p1, Lddf;->b:Lddk;

    .line 2
    check-cast p1, Ldoj;

    iget-object p1, p1, Ldoj;->d:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c(Ldeq;Ljava/lang/Long;)V
    .locals 4

    .line 9
    iget v0, p0, Lcdi;->a:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    if-nez p2, :cond_7

    check-cast p1, Lddf;

    iget-boolean p2, p1, Lddf;->c:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v3, p1, Lddf;->c:Z

    goto :goto_0

    .line 12
    :pswitch_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lddf;

    iget-boolean p2, p1, Lddf;->c:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v3, p1, Lddf;->c:Z

    :cond_0
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 4
    check-cast p1, Ldpz;

    sget-object p2, Ldpz;->y:Ldpz;

    iget p2, p1, Ldpz;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Ldpz;->a:I

    iput-wide v0, p1, Ldpz;->c:J

    return-void

    :cond_1
    check-cast p1, Lddf;

    iget-boolean p2, p1, Lddf;->c:Z

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v3, p1, Lddf;->c:Z

    :cond_2
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 2
    check-cast p1, Ldpz;

    sget-object p2, Ldpz;->y:Ldpz;

    iget p2, p1, Ldpz;->a:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p1, Ldpz;->a:I

    iput-wide v1, p1, Ldpz;->c:J

    return-void

    :pswitch_1
    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lddf;

    iget-boolean p2, p1, Lddf;->c:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v3, p1, Lddf;->c:Z

    :cond_3
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 8
    check-cast p1, Ldoj;

    sget-object p2, Ldoj;->k:Ldoj;

    iget p2, p1, Ldoj;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Ldoj;->a:I

    iput-wide v0, p1, Ldoj;->c:J

    return-void

    :cond_4
    check-cast p1, Lddf;

    iget-boolean p2, p1, Lddf;->c:Z

    if-eqz p2, :cond_5

    .line 5
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v3, p1, Lddf;->c:Z

    :cond_5
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 6
    check-cast p1, Ldoj;

    sget-object p2, Ldoj;->k:Ldoj;

    iget p2, p1, Ldoj;->a:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p1, Ldoj;->a:I

    iput-wide v1, p1, Ldoj;->c:J

    return-void

    .line 9
    :cond_6
    :goto_0
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 10
    check-cast p1, Ldpc;

    sget-object p2, Ldpc;->k:Ldpc;

    iget p2, p1, Ldpc;->a:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p1, Ldpc;->a:I

    iput-wide v1, p1, Ldpc;->c:J

    return-void

    .line 11
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lddf;

    iget-boolean p2, p1, Lddf;->c:Z

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v3, p1, Lddf;->c:Z

    :cond_8
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 12
    check-cast p1, Ldpc;

    sget-object p2, Ldpc;->k:Ldpc;

    iget p2, p1, Ldpc;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Ldpc;->a:I

    iput-wide v0, p1, Ldpc;->c:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic d(Ldeq;)V
    .locals 2

    .line 5
    iget v0, p0, Lcdi;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lddf;

    iget-boolean v0, p1, Lddf;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v1, p1, Lddf;->c:Z

    goto :goto_0

    .line 6
    :pswitch_0
    check-cast p1, Lddf;

    iget-boolean v0, p1, Lddf;->c:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v1, p1, Lddf;->c:Z

    :cond_0
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 2
    check-cast p1, Ldpz;

    sget-object v0, Ldpz;->y:Ldpz;

    iget v0, p1, Ldpz;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Ldpz;->a:I

    sget-object v0, Ldpz;->y:Ldpz;

    iget-object v0, v0, Ldpz;->d:Ljava/lang/String;

    iput-object v0, p1, Ldpz;->d:Ljava/lang/String;

    return-void

    :pswitch_1
    check-cast p1, Lddf;

    iget-boolean v0, p1, Lddf;->c:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lddf;->k()V

    iput-boolean v1, p1, Lddf;->c:Z

    :cond_1
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 4
    check-cast p1, Ldoj;

    sget-object v0, Ldoj;->k:Ldoj;

    iget v0, p1, Ldoj;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Ldoj;->a:I

    sget-object v0, Ldoj;->k:Ldoj;

    iget-object v0, v0, Ldoj;->d:Ljava/lang/String;

    iput-object v0, p1, Ldoj;->d:Ljava/lang/String;

    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p1, Lddf;->b:Lddk;

    .line 6
    check-cast p1, Ldpc;

    sget-object v0, Ldpc;->k:Ldpc;

    iget v0, p1, Ldpc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Ldpc;->a:I

    sget-object v0, Ldpc;->k:Ldpc;

    iget-object v0, v0, Ldpc;->d:Ljava/lang/String;

    iput-object v0, p1, Ldpc;->d:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
