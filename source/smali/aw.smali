.class public final Law;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Law;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    .line 9
    iget v0, p0, Law;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 13
    new-instance v0, Lse;

    .line 35
    invoke-direct {v0, p1}, Lse;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 9
    :pswitch_0
    new-instance v0, Lsc;

    .line 1
    invoke-direct {v0, p1}, Lsc;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lpz;

    .line 2
    invoke-direct {v0, p1}, Lpz;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_2
    new-instance v0, Loi;

    .line 3
    invoke-direct {v0, p1}, Loi;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3
    new-instance v0, Liq;

    .line 4
    invoke-direct {v0, p1}, Liq;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lgb;

    .line 5
    invoke-direct {v0, p1}, Lgb;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 6
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_6
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 7
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_7
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 8
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 9
    :pswitch_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Lff;)V

    return-object v0

    .line 27
    :pswitch_9
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 10
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_a
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 11
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_b
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    .line 13
    :pswitch_c
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 14
    :pswitch_d
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Ley;

    invoke-direct {v0}, Ley;-><init>()V

    .line 15
    check-cast p1, Landroid/media/MediaDescription;

    .line 16
    invoke-static {p1}, Lew;->i(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ley;->a:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lew;->h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Ley;->b:Ljava/lang/CharSequence;

    .line 18
    invoke-static {p1}, Lew;->g(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Ley;->c:Ljava/lang/CharSequence;

    .line 19
    invoke-static {p1}, Lew;->f(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Ley;->d:Ljava/lang/CharSequence;

    .line 20
    invoke-static {p1}, Lew;->a(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Ley;->e:Landroid/graphics/Bitmap;

    .line 21
    invoke-static {p1}, Lew;->d(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Ley;->f:Landroid/net/Uri;

    .line 22
    invoke-static {p1}, Lew;->e(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {v2}, Lfu;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_0
    const-string v3, "android.support.v4.media.description.MEDIA_URI"

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_0

    .line 27
    :cond_1
    move-object v4, v1

    .line 24
    :goto_0
    if-eqz v4, :cond_3

    .line 25
    const-string v5, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    nop

    .line 26
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 25
    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Ley;->g:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    iput-object v4, v0, Ley;->h:Landroid/net/Uri;

    goto :goto_2

    .line 28
    :cond_4
    invoke-static {p1}, Lex;->a(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Ley;->h:Landroid/net/Uri;

    .line 25
    :goto_2
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v3, v0, Ley;->a:Ljava/lang/String;

    iget-object v4, v0, Ley;->b:Ljava/lang/CharSequence;

    iget-object v5, v0, Ley;->c:Ljava/lang/CharSequence;

    iget-object v6, v0, Ley;->d:Ljava/lang/CharSequence;

    iget-object v7, v0, Ley;->e:Landroid/graphics/Bitmap;

    iget-object v8, v0, Ley;->f:Landroid/net/Uri;

    iget-object v9, v0, Ley;->g:Landroid/os/Bundle;

    iget-object v10, v0, Ley;->h:Landroid/net/Uri;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    iput-object p1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->a:Landroid/media/MediaDescription;

    goto :goto_3

    .line 27
    :cond_5
    nop

    .line 25
    :goto_3
    return-object v1

    .line 35
    :pswitch_e
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 29
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lcv;

    .line 30
    invoke-direct {v0, p1}, Lcv;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lcs;

    .line 31
    invoke-direct {v0, p1}, Lcs;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lco;

    .line 32
    invoke-direct {v0, p1}, Lco;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_12
    new-instance v0, Lav;

    .line 33
    invoke-direct {v0, p1}, Lav;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_13
    new-instance v0, Lax;

    .line 34
    invoke-direct {v0, p1}, Lax;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 21
    iget v0, p0, Law;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lse;

    return-object p1

    .line 1
    :pswitch_0
    new-array p1, p1, [Lsc;

    return-object p1

    .line 2
    :pswitch_1
    new-array p1, p1, [Lpz;

    return-object p1

    .line 3
    :pswitch_2
    new-array p1, p1, [Loi;

    return-object p1

    .line 4
    :pswitch_3
    new-array p1, p1, [Liq;

    return-object p1

    .line 5
    :pswitch_4
    new-array p1, p1, [Lgb;

    return-object p1

    .line 6
    :pswitch_5
    new-array p1, p1, [Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    return-object p1

    .line 7
    :pswitch_6
    new-array p1, p1, [Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p1

    .line 8
    :pswitch_7
    new-array p1, p1, [Landroid/support/v4/media/session/ParcelableVolumeInfo;

    return-object p1

    .line 9
    :pswitch_8
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p1

    .line 10
    :pswitch_9
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    return-object p1

    .line 11
    :pswitch_a
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    return-object p1

    .line 12
    :pswitch_b
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    return-object p1

    .line 13
    :pswitch_c
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1

    .line 14
    :pswitch_d
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p1

    .line 15
    :pswitch_e
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object p1

    .line 16
    :pswitch_f
    new-array p1, p1, [Lcv;

    return-object p1

    .line 17
    :pswitch_10
    new-array p1, p1, [Lcs;

    return-object p1

    .line 18
    :pswitch_11
    new-array p1, p1, [Lco;

    return-object p1

    .line 19
    :pswitch_12
    new-array p1, p1, [Lav;

    return-object p1

    .line 20
    :pswitch_13
    new-array p1, p1, [Lax;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
