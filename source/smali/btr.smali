.class public final synthetic Lbtr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbtt;


# direct methods
.method public synthetic constructor <init>(Lbtt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtr;->a:Lbtt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbtr;->a:Lbtt;

    iget-object v1, v0, Lbtt;->a:Ldai;

    new-instance v2, Lbts;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lbts;-><init>(Lbtt;I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v2, v3, v4, v0}, Ldai;->d(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ldak;

    return-void
.end method
