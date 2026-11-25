.class public final synthetic Lavn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavp;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lavp;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavn;->a:Lavp;

    iput-object p2, p0, Lavn;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lavn;->a:Lavp;

    iget-object v1, p0, Lavn;->b:[B

    :try_start_0
    iget-object v2, v0, Lavp;->b:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-boolean v1, v0, Lavp;->d:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lavp;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lavm;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lavm;-><init>(Lavp;I)V

    .line 2
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
