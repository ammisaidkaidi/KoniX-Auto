.class public final Lcmn;
.super Lcmb;
.source "PG"


# instance fields
.field private final a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcmb;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcmn;->a:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final b(Lcly;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcmb;->b(Lcly;)V

    :try_start_0
    iget-object p1, p0, Lcmn;->a:Ljava/net/Socket;

    .line 2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method public final onApplyTcpReadTimout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcmn;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public final onApplyTcpReceiveBufferSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcmn;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public final onApplyTcpSendBufferSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcmn;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    return-void
.end method

.method public final onRetrieveTcpReadTimeout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcmn;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public final onRetrieveTcpReceiveBufferSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcmn;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public final onRetrieveTcpSendBufferSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcmn;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method
