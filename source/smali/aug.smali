.class public final synthetic Laug;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lauj;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lauj;I)V
    .locals 0

    iput p2, p0, Laug;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laug;->a:Lauj;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 2
    iget v0, p0, Laug;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laug;->a:Lauj;

    check-cast p1, Lauc;

    check-cast p2, Latq;

    .line 3
    invoke-virtual {p2}, Latq;->f()V

    iget-object v1, v0, Lauj;->e:Ldgq;

    .line 4
    sget-object v2, Ldgq;->c:Ldgq;

    invoke-virtual {v1, v2}, Ldgq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lauj;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0xf9

    .line 5
    const-string v3, "com/google/android/apps/auto/aareceiver/audio/AudioSinkManager"

    const-string v4, "lambda$handleSetUp$1"

    const-string v5, "AudioSinkManager.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    .line 6
    invoke-virtual {p1}, Lauc;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Latq;->i:Laue;

    invoke-virtual {v3}, Laue;->a()I

    move-result v3

    .line 5
    const-string v4, "Audio stream %s - session id %d"

    invoke-interface {v1, v4, v2, v3}, Lcsx;->s(Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v0, v0, Lauj;->d:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Ladl;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lauc;->name()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Latq;->i:Laue;

    invoke-virtual {p2}, Laue;->a()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_0
    iget-object v0, p0, Laug;->a:Lauj;

    .line 1
    check-cast p1, Lauc;

    check-cast p2, Latq;

    iget-object p1, p2, Latq;->i:Laue;

    iput-object v0, p1, Laue;->e:Laud;

    return-void

    .line 10
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 1

    .line 2
    iget v0, p0, Laug;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
