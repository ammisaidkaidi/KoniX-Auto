.class public Lcmb;
.super Lclz;
.source "PG"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Lclz;-><init>()V

    iput-object p1, p0, Lcmb;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcmb;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcmb;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public b(Lcly;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcmb;->a:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lcmb;->b:Ljava/io/OutputStream;

    .line 2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to close streams: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AHU.TRANSPORT"

    invoke-static {v0, p1}, Lcjz;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c([BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcmb;->b:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
