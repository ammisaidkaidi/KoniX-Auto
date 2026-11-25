.class public final Laun;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcli;


# static fields
.field public static final a:Lcsz;

.field public static final b:I


# instance fields
.field public c:Laum;

.field public d:I

.field public e:Ljava/util/concurrent/Semaphore;

.field public final f:Lcom/google/android/projection/protocol/AudioSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laun;->a:Lcsz;

    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 2
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laun;->b:I

    return-void
.end method

.method public constructor <init>(Lzn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laum;

    invoke-direct {v0, p0}, Laum;-><init>(Laun;)V

    iput-object v0, p0, Laun;->c:Laum;

    const/4 v0, 0x0

    iput v0, p0, Laun;->d:I

    new-instance v0, Lcom/google/android/projection/protocol/AudioSource;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/projection/protocol/AudioSource;-><init>(Lcli;)V

    iput-object v0, p0, Laun;->f:Lcom/google/android/projection/protocol/AudioSource;

    new-instance v0, Lcom/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$1;-><init>(Laun;)V

    .line 3
    invoke-virtual {p1, v0}, Lzn;->b(Lzp;)V

    return-void
.end method
