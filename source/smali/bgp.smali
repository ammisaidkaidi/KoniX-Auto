.class public final synthetic Lbgp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:Lbgp;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbgp;

    invoke-direct {v0}, Lbgp;-><init>()V

    sput-object v0, Lbgp;->a:Lbgp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbgu;
    .locals 4

    .line 1
    sget-object v0, Lbgz;->a:Lcsz;

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2
    const-string v1, "mime"

    const-string v2, "video/avc"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    sget-object v2, Lbgo;->a:Lbgo;

    new-instance v3, Lbgu;

    .line 7
    invoke-direct {v3, v0, v1, v2}, Lbgu;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lbgo;)V

    return-object v3

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Decoder name could not be found for media format: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
