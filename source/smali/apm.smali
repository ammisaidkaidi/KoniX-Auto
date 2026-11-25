.class public final synthetic Lapm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Lapn;

.field public final synthetic b:Ljava/lang/Runnable;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lapn;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lapm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapm;->a:Lapn;

    iput-object p2, p0, Lapm;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lapm;->c:I

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lapm;->a:Lapn;

    iget-object v1, p0, Lapm;->b:Ljava/lang/Runnable;

    .line 4
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lapn;->d:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lapm;->a:Lapn;

    iget-object v1, p0, Lapm;->b:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    :goto_0
    iput-object p1, v0, Lapn;->c:Ljava/lang/String;

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 1

    .line 2
    iget v0, p0, Lapm;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
