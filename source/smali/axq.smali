.class public final synthetic Laxq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laxr;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[B

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Laxr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxq;->a:Laxr;

    iput-object p2, p0, Laxq;->b:Ljava/lang/String;

    iput-object p3, p0, Laxq;->c:Ljava/lang/String;

    iput-object p4, p0, Laxq;->d:Ljava/lang/String;

    iput-object p5, p0, Laxq;->e:[B

    iput p6, p0, Laxq;->f:I

    iput p7, p0, Laxq;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Laxq;->a:Laxr;

    iget-object v1, p0, Laxq;->b:Ljava/lang/String;

    iget-object v2, p0, Laxq;->c:Ljava/lang/String;

    iget-object v3, p0, Laxq;->d:Ljava/lang/String;

    iget-object v4, p0, Laxq;->e:[B

    iget v5, p0, Laxq;->f:I

    iget v6, p0, Laxq;->g:I

    iget-object v0, v0, Laxr;->a:Laxs;

    iget-object v7, v0, Laxs;->c:Lfu;

    if-eqz v7, :cond_11

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v8, "android.media.metadata.TITLE"

    invoke-static {v8, v1, v7}, Lew;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    const-string v1, "android.media.metadata.ALBUM"

    invoke-static {v1, v2, v7}, Lew;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    const-string v1, "android.media.metadata.ARTIST"

    invoke-static {v1, v3, v7}, Lew;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_2

    array-length v8, v4

    .line 5
    invoke-static {v4, v3, v8, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v8, "android.media.metadata.ART"

    .line 6
    sget-object v9, Landroid/support/v4/media/MediaMetadataCompat;->a:Lvb;

    invoke-virtual {v9, v8}, Lvi;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Landroid/support/v4/media/MediaMetadataCompat;->a:Lvb;

    .line 7
    invoke-virtual {v9, v8}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string v1, "The android.media.metadata.ART key cannot be used to put a Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v5

    .line 9
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v8, "android.media.metadata.DURATION"

    .line 10
    sget-object v9, Landroid/support/v4/media/MediaMetadataCompat;->a:Lvb;

    invoke-virtual {v9, v8}, Lvi;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Landroid/support/v4/media/MediaMetadataCompat;->a:Lvb;

    .line 11
    invoke-virtual {v9, v8}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v1, "The android.media.metadata.DURATION key cannot be used to put a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {v7, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v4, 0x5

    if-lez v6, :cond_5

    int-to-float v5, v6

    .line 13
    invoke-static {v4, v5}, Landroid/support/v4/media/RatingCompat;->a(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v4

    goto :goto_2

    .line 21
    :cond_5
    invoke-static {v4}, Landroid/support/v4/media/RatingCompat;->b(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v4

    .line 13
    :goto_2
    const-string v5, "android.media.metadata.RATING"

    sget-object v6, Landroid/support/v4/media/MediaMetadataCompat;->a:Lvb;

    .line 14
    invoke-virtual {v6, v5}, Lvi;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/support/v4/media/MediaMetadataCompat;->a:Lvb;

    .line 15
    invoke-virtual {v6, v5}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v1, "The android.media.metadata.RATING key cannot be used to put a Rating"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_7
    :goto_3
    iget-object v6, v4, Landroid/support/v4/media/RatingCompat;->c:Ljava/lang/Object;

    if-nez v6, :cond_10

    .line 16
    invoke-virtual {v4}, Landroid/support/v4/media/RatingCompat;->c()Z

    move-result v6

    if-eqz v6, :cond_f

    iget v6, v4, Landroid/support/v4/media/RatingCompat;->a:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    packed-switch v6, :pswitch_data_0

    goto :goto_9

    .line 17
    :pswitch_0
    const/4 v1, 0x6

    if-ne v6, v1, :cond_9

    .line 16
    invoke-virtual {v4}, Landroid/support/v4/media/RatingCompat;->c()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    iget v10, v4, Landroid/support/v4/media/RatingCompat;->b:F

    goto :goto_4

    :cond_9
    nop

    :goto_4
    invoke-static {v10}, Lez;->e(F)Landroid/media/Rating;

    move-result-object v1

    iput-object v1, v4, Landroid/support/v4/media/RatingCompat;->c:Ljava/lang/Object;

    goto :goto_8

    :pswitch_1
    packed-switch v6, :pswitch_data_1

    goto :goto_5

    .line 16
    :pswitch_2
    invoke-virtual {v4}, Landroid/support/v4/media/RatingCompat;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v10, v4, Landroid/support/v4/media/RatingCompat;->b:F

    .line 20
    :cond_a
    :goto_5
    invoke-static {v6, v10}, Lez;->f(IF)Landroid/media/Rating;

    move-result-object v1

    iput-object v1, v4, Landroid/support/v4/media/RatingCompat;->c:Ljava/lang/Object;

    goto :goto_8

    .line 23
    :pswitch_3
    if-eq v6, v1, :cond_b

    goto :goto_6

    .line 18
    :cond_b
    iget v1, v4, Landroid/support/v4/media/RatingCompat;->b:F

    cmpl-float v1, v1, v8

    if-nez v1, :cond_c

    const/4 v3, 0x1

    :cond_c
    :goto_6
    invoke-static {v3}, Lez;->g(Z)Landroid/media/Rating;

    move-result-object v1

    iput-object v1, v4, Landroid/support/v4/media/RatingCompat;->c:Ljava/lang/Object;

    goto :goto_8

    :pswitch_4
    if-eq v6, v9, :cond_d

    goto :goto_7

    .line 17
    :cond_d
    iget v1, v4, Landroid/support/v4/media/RatingCompat;->b:F

    cmpl-float v1, v1, v8

    if-nez v1, :cond_e

    const/4 v3, 0x1

    :cond_e
    :goto_7
    invoke-static {v3}, Lez;->d(Z)Landroid/media/Rating;

    move-result-object v1

    iput-object v1, v4, Landroid/support/v4/media/RatingCompat;->c:Ljava/lang/Object;

    goto :goto_8

    .line 16
    :cond_f
    iget v1, v4, Landroid/support/v4/media/RatingCompat;->a:I

    .line 21
    invoke-static {v1}, Lez;->h(I)Landroid/media/Rating;

    move-result-object v1

    iput-object v1, v4, Landroid/support/v4/media/RatingCompat;->c:Ljava/lang/Object;

    .line 18
    :cond_10
    :goto_8
    iget-object v2, v4, Landroid/support/v4/media/RatingCompat;->c:Ljava/lang/Object;

    .line 16
    :goto_9
    invoke-virtual {v7, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v0, Laxs;->c:Lfu;

    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat;

    .line 22
    invoke-direct {v1, v7}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {v0, v1}, Lfu;->g(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 25
    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
