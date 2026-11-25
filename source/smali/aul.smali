.class public final Laul;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcsz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/audio/AudioUtils"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laul;->a:Lcsz;

    return-void
.end method

.method static a(Landroid/os/Message;)J
    .locals 6

    .line 1
    iget v0, p0, Landroid/os/Message;->arg1:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/os/Message;->arg2:I

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static b()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "android.car.media.AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static c(I)Ljava/lang/String;
    .locals 5

    .line 1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Laul;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x6e

    const-string v2, "com/google/android/apps/auto/aareceiver/audio/AudioUtils"

    const-string v3, "platformFocusToString"

    const-string v4, "AudioUtils.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unknown platform focus: %s"

    invoke-interface {v0, v1, p0}, Lcsx;->o(Ljava/lang/String;I)V

    const-string p0, ""

    return-object p0

    :pswitch_1
    const-string p0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object p0

    :pswitch_2
    const-string p0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object p0

    :pswitch_3
    const-string p0, "GAIN_TRANSIENT"

    return-object p0

    :pswitch_4
    const-string p0, "GAIN"

    return-object p0

    :pswitch_5
    const-string p0, "LOSS"

    return-object p0

    :pswitch_6
    const-string p0, "LOSS_TRANSIENT"

    return-object p0

    :pswitch_7
    const-string p0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static e(I)Ljava/lang/String;
    .locals 5

    .line 1
    sparse-switch p0, :sswitch_data_0

    sget-object v0, Laul;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v1, 0x7c

    const-string v2, "com/google/android/apps/auto/aareceiver/audio/AudioUtils"

    const-string v3, "usageToString"

    const-string v4, "AudioUtils.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unknown usage: %d"

    invoke-interface {v0, v1, p0}, Lcsx;->o(Ljava/lang/String;I)V

    const-string p0, ""

    return-object p0

    :sswitch_0
    const-string p0, "ASSISTANT"

    return-object p0

    :sswitch_1
    const-string p0, "GUIDANCE"

    return-object p0

    :sswitch_2
    const-string p0, "MEDIA"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static f(Landroid/os/Handler;JLjava/lang/Object;)Landroid/os/Message;
    .locals 2

    .line 1
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    long-to-int p2, p1

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static g(I)I
    .locals 6

    .line 1
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x3

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Laul;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v2, 0x54

    .line 2
    const-string v3, "com/google/android/apps/auto/aareceiver/audio/AudioUtils"

    const-string v4, "mapGalToFocusType"

    const-string v5, "AudioUtils.java"

    invoke-interface {v0, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Invalid audio focus: %d"

    invoke-interface {v0, v2, p0}, Lcsx;->o(Ljava/lang/String;I)V

    return v1
.end method
