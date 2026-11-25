.class public final Lclt;
.super Lcls;
.source "PG"


# instance fields
.field final synthetic c:Lclv;


# direct methods
.method public constructor <init>(Lclv;Lclz;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lclt;->c:Lclv;

    const-string v0, "ReaderThread"

    invoke-direct {p0, p1, v0, p2}, Lcls;-><init>(Lclv;Ljava/lang/String;Lclz;)V

    return-void
.end method

.method private final b([BII)I
    .locals 4

    .line 1
    const-string v0, "read"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lclt;->c:Lclv;

    .line 2
    invoke-virtual {v1}, Lclv;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lclt;->a:Lclz;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    .line 3
    invoke-virtual {v1, p1, v2, v3}, Lclz;->a([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Caught exception on read. Exiting."

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AHU.GAL_RECEIVER"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lclt;->c:Lclv;

    .line 5
    invoke-virtual {p1}, Lclv;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lclt;->c:Lclv;

    .line 6
    sget-object p2, Lcly;->h:Lcly;

    invoke-virtual {p1, p2}, Lclv;->c(Lcly;)Z

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    const v0, 0x10008

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lclt;->c:Lclv;

    invoke-virtual {v1}, Lclv;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    const-string v1, "readerThread"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lclt;->b([BII)I

    move-result v1

    const-string v3, "AHU.GAL_RECEIVER"

    const-string v4, "read returned "

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    .line 9
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " while expecting 4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lclt;->c:Lclv;

    iget-object v1, v1, Lclv;->g:Lclo;

    iget-object v1, v1, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeGetAdditionalBytesToRead([B)I

    move-result v1

    .line 5
    invoke-direct {p0, v0, v2, v1}, Lclt;->b([BII)I

    move-result v2

    if-eq v2, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x35

    .line 10
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while expecting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lclt;->c:Lclv;

    .line 6
    invoke-virtual {v2}, Lclv;->b()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lclt;->c:Lclv;

    iget-object v2, v2, Lclv;->g:Lclo;

    iget-object v2, v2, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    add-int/lit8 v1, v1, 0x4

    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeQueueIncoming([BI)I

    .line 8
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :cond_3
    return-void
.end method
