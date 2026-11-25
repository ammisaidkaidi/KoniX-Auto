.class public final synthetic Lbxh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lbxk;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lbxk;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxh;->a:Lbxk;

    iput-object p2, p0, Lbxh;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lbxh;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 3

    .line 1
    iget-object v0, p0, Lbxh;->a:Lbxk;

    iget-object v1, p0, Lbxh;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lbxh;->c:I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-gtz v1, :cond_0

    .line 2
    sget-object v0, Ldad;->a:Ldag;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lbxk;->e:Ldgz;

    .line 3
    invoke-interface {v1}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxf;

    invoke-virtual {v0, v2, v1}, Lbxk;->e(ILbxf;)Ldag;

    move-result-object v0

    .line 2
    :goto_0
    return-object v0
.end method
