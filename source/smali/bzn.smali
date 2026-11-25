.class public final Lbzn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ldny;Ldny;I)V
    .locals 0

    iput p3, p0, Lbzn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzn;->a:Ldny;

    iput-object p2, p0, Lbzn;->b:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[B)V
    .locals 0

    iput p3, p0, Lbzn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzn;->b:Ldny;

    iput-object p2, p0, Lbzn;->a:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;I[C)V
    .locals 0

    iput p3, p0, Lbzn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzn;->b:Ldny;

    iput-object p2, p0, Lbzn;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 10
    iget v0, p0, Lbzn;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbzn;->a:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    check-cast v0, Lcoc;

    iget-object v1, p0, Lbzn;->b:Ldny;

    .line 11
    invoke-static {v0}, Lcdh;->c(Lcoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lcdd;

    .line 13
    invoke-virtual {v1}, Lcdd;->b()Lcdc;

    move-result-object v0

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_0
    iget-object v0, p0, Lbzn;->b:Ldny;

    .line 1
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbzn;->a:Ldny;

    check-cast v1, Lcax;

    invoke-virtual {v1}, Lcax;->b()Lcoc;

    move-result-object v1

    new-instance v2, Lcav;

    .line 2
    check-cast v0, Lcau;

    invoke-direct {v2, v0, v1}, Lcav;-><init>(Lcau;Lcoc;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lbzn;->a:Ldny;

    check-cast v0, Latg;

    .line 3
    invoke-virtual {v0}, Latg;->b()Lcoc;

    iget-object v0, p0, Lbzn;->b:Ldny;

    .line 4
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lbzn;->b:Ldny;

    .line 5
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvh;

    iget-object v1, p0, Lbzn;->a:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldai;

    new-instance v2, Lbyy;

    .line 6
    invoke-direct {v2, v0, v1}, Lbyy;-><init>(Lbvh;Ldai;)V

    return-object v2

    :pswitch_3
    iget-object v0, p0, Lbzn;->a:Ldny;

    check-cast v0, Latg;

    .line 7
    invoke-virtual {v0}, Latg;->b()Lcoc;

    iget-object v0, p0, Lbzn;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lbzm;

    .line 9
    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcsf;->a:Lcsf;

    .line 14
    :goto_0
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
