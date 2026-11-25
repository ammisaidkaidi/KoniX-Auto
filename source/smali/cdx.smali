.class public final synthetic Lcdx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Lcdx;


# instance fields
.field private final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcdx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcdx;-><init>(I)V

    sput-object v0, Lcdx;->a:Lcdx;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcdx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 3
    iget v0, p0, Lcdx;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lyn;

    invoke-direct {v0, p1}, Lyn;-><init>(Ljava/lang/Runnable;)V

    return-object v0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    .line 2
    const-string v1, "ProcessStablePhenotypeFlag"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
