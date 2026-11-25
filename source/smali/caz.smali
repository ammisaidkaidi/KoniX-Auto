.class final Lcaz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcay;

.field private b:J


# direct methods
.method public constructor <init>(Lcay;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaz;->a:Lcay;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcaz;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lcay;JLjava/util/ArrayList;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcay;->f:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcay;->f:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p1, Lcay;->f:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcay;->f:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p1, Lcay;->f:Ljava/util/List;

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcay;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    return-void

    .line 3
    :cond_3
    :goto_1
    sget-object v1, Ldpc;->k:Ldpc;

    .line 4
    invoke-virtual {v1}, Lddk;->n()Lddf;

    move-result-object v1

    .line 5
    iget v2, p1, Lcay;->g:I

    .line 6
    iget-object v2, p1, Lcay;->b:Ljava/lang/String;

    iget-boolean v3, v1, Lddf;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_4
    iget-object v3, v1, Lddf;->b:Lddk;

    .line 7
    check-cast v3, Ldpc;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Ldpc;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v3, Ldpc;->a:I

    iput-object v2, v3, Ldpc;->b:Ljava/lang/String;

    .line 9
    iget-wide v7, p1, Lcay;->c:J

    or-int/lit8 v2, v5, 0x20

    iput v2, v3, Ldpc;->a:I

    iput-wide v7, v3, Ldpc;->g:J

    .line 10
    invoke-virtual {p1}, Lcay;->a()J

    move-result-wide v2

    iget-boolean v5, v1, Lddf;->c:Z

    if-eqz v5, :cond_5

    .line 11
    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_5
    iget-object v5, v1, Lddf;->b:Lddk;

    .line 12
    check-cast v5, Ldpc;

    iget v7, v5, Ldpc;->a:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v5, Ldpc;->a:I

    iput-wide v2, v5, Ldpc;->h:J

    .line 10
    iget-wide v2, p1, Lcay;->e:J

    or-int/lit16 v7, v7, 0x100

    iput v7, v5, Ldpc;->a:I

    iput-wide v2, v5, Ldpc;->i:J

    iget-wide v2, p0, Lcaz;->b:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcaz;->b:J

    or-int/lit8 v7, v7, 0x8

    iput v7, v5, Ldpc;->a:I

    iput-wide v2, v5, Ldpc;->e:J

    or-int/lit8 v2, v7, 0x10

    iput v2, v5, Ldpc;->a:I

    iput-wide p2, v5, Ldpc;->f:J

    .line 13
    iget p2, p1, Lcay;->h:I

    add-int/lit8 p2, p2, -0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iput v4, v5, Ldpc;->j:I

    or-int/lit16 p2, v2, 0x200

    iput p2, v5, Ldpc;->a:I

    goto :goto_3

    .line 20
    :pswitch_1
    const/4 p2, 0x4

    iput p2, v5, Ldpc;->j:I

    goto :goto_2

    :pswitch_2
    iput v6, v5, Ldpc;->j:I

    :goto_2
    or-int/lit16 p2, v2, 0x200

    iput p2, v5, Ldpc;->a:I

    .line 14
    :goto_3
    invoke-virtual {p1}, Lcay;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcay;

    iget-wide p2, p2, Lcay;->d:J

    iget-wide v2, p1, Lcay;->c:J

    sub-long/2addr p2, v2

    iget-boolean p1, v1, Lddf;->c:Z

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lddf;->k()V

    iput-boolean v4, v1, Lddf;->c:Z

    :cond_6
    iget-object p1, v1, Lddf;->b:Lddk;

    .line 16
    check-cast p1, Ldpc;

    iget v2, p1, Ldpc;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p1, Ldpc;->a:I

    iput-wide p2, p1, Ldpc;->h:J

    .line 17
    :cond_7
    invoke-virtual {v1}, Lddf;->f()Lddk;

    move-result-object p1

    check-cast p1, Ldpc;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcay;

    iget-object p3, v1, Lddf;->b:Lddk;

    .line 19
    check-cast p3, Ldpc;

    iget-wide v2, p3, Ldpc;->e:J

    .line 20
    invoke-virtual {p0, p2, v2, v3, p4}, Lcaz;->a(Lcay;JLjava/util/ArrayList;)V

    goto :goto_4

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
