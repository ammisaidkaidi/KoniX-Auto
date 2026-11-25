.class public final Lauj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lclh;
.implements Laud;


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Landroid/os/HandlerThread;

.field public final c:Ljava/util/Map;

.field public final d:Landroid/content/Context;

.field public final e:Ldgq;

.field public final f:Lcom/google/android/projection/protocol/AudioSink;

.field public final g:Lbbl;

.field public final h:Lcxz;

.field public final i:Latt;

.field public j:Landroid/os/Handler;

.field public k:Z

.field public l:I

.field public m:Latq;

.field public final n:Ljava/util/Map;

.field public final o:I

.field public final p:I

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/audio/AudioSinkManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lauj;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILandroid/media/AudioFormat;Lbbl;Lcxz;Latt;Landroid/content/Context;Ldgq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lauj;->n:Ljava/util/Map;

    new-instance v0, Lcom/google/android/projection/protocol/AudioSink;

    invoke-direct {v0, p0}, Lcom/google/android/projection/protocol/AudioSink;-><init>(Lclh;)V

    iput-object v0, p0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    iput p2, p0, Lauj;->o:I

    iput-object p4, p0, Lauj;->g:Lbbl;

    iput-object p5, p0, Lauj;->h:Lcxz;

    iput-object p6, p0, Lauj;->i:Latt;

    iput-object p1, p0, Lauj;->c:Ljava/util/Map;

    iput-object p7, p0, Lauj;->d:Landroid/content/Context;

    iput-object p8, p0, Lauj;->e:Ldgq;

    .line 2
    new-instance p5, Laug;

    const/4 p6, 0x0

    invoke-direct {p5, p0, p6}, Laug;-><init>(Lauj;I)V

    invoke-static {p1, p5}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findAny()Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Latq;

    iget p1, p1, Latq;->j:I

    iput p1, p0, Lauj;->p:I

    invoke-static {p2}, Lbxr;->b(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    const-string p5, "AUDIO_STREAM_"

    invoke-static {p2, p5}, Laul;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    packed-switch p1, :pswitch_data_0

    const-string p5, "null"

    goto :goto_0

    .line 5
    :pswitch_0
    const-string p5, "MEDIA_CODEC_AUDIO_AAC_LC"

    goto :goto_0

    .line 7
    :pswitch_1
    const-string p5, "MEDIA_CODEC_AUDIO_PCM"

    .line 4
    :goto_0
    if-eqz p1, :cond_1

    .line 5
    const-string p1, "MEDIA_CODEC_AUDIO_"

    invoke-static {p5, p1}, Laul;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    new-instance p7, Ljava/lang/StringBuilder;

    add-int/lit8 p5, p5, 0xd

    add-int/2addr p5, p6

    invoke-direct {p7, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lauj;->q:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "AudioThread-"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 7
    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 p3, -0x10

    invoke-direct {p2, p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lauj;->b:Landroid/os/HandlerThread;

    iget-object p1, p4, Lbbl;->F:Lzn;

    new-instance p2, Lcom/google/android/apps/auto/aareceiver/audio/AudioSinkManager$1;

    invoke-direct {p2, p0}, Lcom/google/android/apps/auto/aareceiver/audio/AudioSinkManager$1;-><init>(Lauj;)V

    .line 8
    invoke-virtual {p1, p2}, Lzn;->b(Lzp;)V

    return-void

    .line 7
    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lauj;->n:Ljava/util/Map;

    sget-object v1, Laui;->a:Laui;

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    iget-object v0, p0, Lauj;->n:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lauj;->m:Latq;

    iget-boolean v0, p0, Lauj;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauj;->c:Ljava/util/Map;

    .line 3
    sget-object v1, Laui;->b:Laui;

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lauj;->k:Z

    :cond_0
    return-void
.end method
