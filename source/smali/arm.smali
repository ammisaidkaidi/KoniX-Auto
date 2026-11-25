.class public final synthetic Larm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Larm;


# instance fields
.field private final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Larm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Larm;-><init>(I)V

    sput-object v0, Larm;->a:Larm;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Larm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    iget v0, p0, Larm;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Luf;->g()Luf;

    move-result-object v0

    iget-object v0, v0, Luf;->b:Lhq;

    check-cast v0, Luh;

    iget-object v0, v0, Luh;->b:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1
    :pswitch_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
