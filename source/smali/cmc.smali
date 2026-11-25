.class final Lcmc;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field final synthetic a:Lcme;

.field final synthetic b:Lbbj;


# direct methods
.method public constructor <init>(Lcme;Lbbj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcmc;->a:Lcme;

    iput-object p2, p0, Lcmc;->b:Lbbj;

    const-string p1, "TCP server"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcmc;->a:Lcme;

    iget-object v0, v0, Lcme;->a:Ljava/net/ServerSocket;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listening on: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AHU.TCP_CONNECTION"

    invoke-static {v1, v0}, Lcjz;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcmc;->a:Lcme;

    iget-object v0, v0, Lcme;->a:Ljava/net/ServerSocket;

    .line 2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    .line 3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Set read timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Set receive buffer size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    const-string v2, "Enable tcp no delay"

    .line 7
    invoke-static {v1, v2}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    new-instance v2, Lcmn;

    .line 9
    invoke-direct {v2, v0}, Lcmn;-><init>(Ljava/net/Socket;)V

    iget-object v0, p0, Lcmc;->b:Lbbj;

    .line 10
    invoke-virtual {v0, v2}, Lbbj;->a(Lclz;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcmc;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Can\'t listen to socket: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v2, v1, v0}, Lcjz;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcmc;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcmc;->b:Lbbj;

    .line 16
    invoke-virtual {v0}, Lbbj;->b()V

    return-void

    .line 15
    :cond_1
    nop

    .line 12
    const-string v0, "Socket accept timed out; retrying"

    invoke-static {v1, v0}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
