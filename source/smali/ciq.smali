.class public final synthetic Lciq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcir;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcir;ILjava/util/List;I)V
    .locals 0

    iput p4, p0, Lciq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lciq;->a:Lcir;

    iput p2, p0, Lciq;->c:I

    iput-object p3, p0, Lciq;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcir;Ljava/util/List;II)V
    .locals 0

    iput p4, p0, Lciq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lciq;->a:Lcir;

    iput-object p2, p0, Lciq;->b:Ljava/util/List;

    iput p3, p0, Lciq;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 5

    .line 5
    iget v0, p0, Lciq;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lciq;->a:Lcir;

    iget v0, p0, Lciq;->c:I

    iget-object v1, p0, Lciq;->b:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lciq;->a:Lcir;

    iget-object v1, p0, Lciq;->b:Ljava/util/List;

    iget v2, p0, Lciq;->c:I

    .line 1
    check-cast p1, Lder;

    .line 2
    invoke-static {v1}, Lhh;->e(Ljava/lang/Iterable;)Lczz;

    move-result-object v3

    new-instance v4, Lcio;

    invoke-direct {v4, v0, p1, v2, v1}, Lcio;-><init>(Lcir;Lder;ILjava/util/List;)V

    .line 3
    invoke-static {v4}, Lcnm;->a(Lczb;)Lczb;

    move-result-object p1

    iget-object v0, v0, Lcir;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v3, p1, v0}, Lczz;->b(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1

    .line 5
    :goto_0
    if-ge v3, v0, :cond_1

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-static {v4}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcir;->a:Ljava/util/List;

    .line 7
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcin;

    invoke-interface {v4}, Lcin;->a()Ldag;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Lhh;->g(Ljava/lang/Iterable;)Lczz;

    move-result-object p1

    invoke-static {}, Lhh;->r()Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 9
    sget-object v1, Lczj;->a:Lczj;

    .line 10
    invoke-virtual {p1, v0, v1}, Lczz;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
