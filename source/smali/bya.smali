.class public final synthetic Lbya;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lbya;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbya;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 3
    iget v0, p0, Lbya;->b:I

    packed-switch v0, :pswitch_data_0

    .line 5
    iget-object v0, p0, Lbya;->a:Landroid/content/Context;

    .line 11
    sget v1, Lcei;->d:I

    .line 12
    invoke-static {v0}, Lafo;->c(Landroid/content/Context;)Lcoc;

    move-result-object v0

    return-object v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lbya;->a:Landroid/content/Context;

    .line 1
    new-instance v1, Lcex;

    .line 2
    invoke-static {v0}, Lbos;->a(Landroid/content/Context;)Lbkc;

    move-result-object v0

    invoke-direct {v1, v0}, Lcex;-><init>(Lbkc;)V

    return-object v1

    .line 3
    :pswitch_1
    iget-object v0, p0, Lbya;->a:Landroid/content/Context;

    sget-object v1, Ldng;->a:Ldng;

    .line 4
    invoke-virtual {v1}, Ldng;->b()Ldnh;

    move-result-object v1

    invoke-interface {v1, v0}, Ldnh;->c(Landroid/content/Context;)Z

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_2
    iget-object v0, p0, Lbya;->a:Landroid/content/Context;

    const-string v1, "primes"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 2
    :pswitch_3
    iget-object v0, p0, Lbya;->a:Landroid/content/Context;

    .line 6
    sget v1, Lbxx;->a:I

    if-nez v1, :cond_2

    const-class v1, Lbxx;

    monitor-enter v1

    :try_start_0
    sget v2, Lbxx;->a:I

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0}, Lbxx;->a(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    const/16 v0, 0x3c

    :cond_0
    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    .line 8
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    sput v0, Lbxx;->a:I

    .line 9
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    sget v0, Lbxx;->a:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
