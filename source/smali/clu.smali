.class public final Lclu;
.super Lcls;
.source "PG"


# instance fields
.field final synthetic c:Lclv;


# direct methods
.method public constructor <init>(Lclv;Lclz;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lclu;->c:Lclv;

    const-string v0, "WriterThread"

    invoke-direct {p0, p1, v0, p2}, Lcls;-><init>(Lclv;Ljava/lang/String;Lclz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    const-string v0, "AHU.GAL_RECEIVER"

    const v1, 0x10008

    new-array v1, v1, [B

    :goto_0
    :try_start_0
    iget-object v2, p0, Lclu;->c:Lclv;

    invoke-virtual {v2}, Lclv;->b()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "writerThread"

    .line 2
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lclu;->c:Lclv;

    iget-object v2, v2, Lclv;->g:Lclo;

    iget-object v3, v2, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    invoke-virtual {v3, v1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeGetEncodedFrame([B)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, v2, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    iget-boolean v3, v3, Lcom/google/android/projection/protocol/GalReceiver;->e:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lclo;->a:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/projection/protocol/GalReceiver;->nativePrepareShutdown()V

    iget-object v2, v2, Lclo;->a:Ljava/lang/Runnable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v3, 0x0

    goto :goto_1

    .line 11
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    nop

    .line 5
    :goto_1
    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    const-string v2, "write"

    .line 6
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_2
    const/16 v2, 0xa

    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lclu;->c:Lclv;

    .line 7
    invoke-virtual {v5}, Lclv;->b()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_3

    :try_start_1
    iget-object v5, p0, Lclu;->a:Lclz;

    .line 8
    invoke-virtual {v5, v1, v3}, Lclz;->c([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 14
    :catch_0
    move-exception v2

    add-int/lit8 v4, v4, 0x1

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "IOException while writing, retryCount: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 8
    :cond_3
    :goto_3
    if-ge v4, v2, :cond_4

    .line 10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 8
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "max retry reached"

    .line 12
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5
    :cond_5
    :goto_4
    return-void

    .line 11
    :catch_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Caught exception on write. Exiting."

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lclu;->c:Lclv;

    .line 14
    sget-object v1, Lcly;->h:Lcly;

    invoke-virtual {v0, v1}, Lclv;->c(Lcly;)Z

    return-void
.end method
