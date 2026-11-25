.class public final Lbhc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic c:I

.field private static final d:Lcsz;

.field private static final e:Lcqh;


# instance fields
.field public final a:Lckz;

.field public final b:D

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/video/ScaledVideoConfiguration"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbhc;->d:Lcsz;

    const-string v0, "seahawk"

    const-string v1, "coral"

    invoke-static {v0, v1}, Lcqh;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcqh;

    move-result-object v0

    sput-object v0, Lbhc;->e:Lcqh;

    return-void
.end method

.method public constructor <init>(Lckz;DII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhc;->a:Lckz;

    iput-wide p2, p0, Lbhc;->b:D

    iput p4, p0, Lbhc;->f:I

    iput p5, p0, Lbhc;->g:I

    return-void
.end method

.method public static a(Ljava/util/List;II)D
    .locals 4

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhc;

    iget v3, v2, Lbhc;->f:I

    if-ne v3, p1, :cond_0

    iget v3, v2, Lbhc;->g:I

    if-ne v3, p2, :cond_0

    iget-wide v0, v2, Lbhc;->b:D

    :cond_1
    return-wide v0
.end method

.method public static b(IILandroid/view/Display;)Ljava/util/List;
    .locals 8

    invoke-static {p0}, Lcom/achour/tweaks/V7;->screenW(I)I

    move-result p0

    invoke-static {p1}, Lcom/achour/tweaks/V7;->screenH(I)I

    move-result p1

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/achour/tweaks/P;->fps()I

    move-result v1

    if-eqz v1, :cond_0

    move v7, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    const/high16 v2, 0x426c0000    # 59.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/16 v1, 0x3c

    const/16 v7, 0x3c

    goto :goto_0

    .line 14
    :cond_1
    const/16 v1, 0x1e

    const/16 v7, 0x1e

    .line 5
    :goto_0
    iget v5, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 6
    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 7
    invoke-static {p0, p1, v5, v6}, Lbgm;->a(IIFF)Lbgk;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v4, v1, Lbgk;->b:I

    .line 8
    move v2, p0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lbhc;->c(IIIFFI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v1, Lbhc;->e:Lcqh;

    .line 9
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lbhb;

    invoke-direct {v3, v2}, Lbhb;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->anyMatch(Lj$/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lbhc;->d:Lcsz;

    invoke-virtual {v1}, Lcsv;->c()Lctq;

    move-result-object v1

    const/16 v2, 0xc2

    .line 10
    const-string v3, "com/google/android/apps/auto/aareceiver/video/ScaledVideoConfiguration"

    const-string v4, "getConfigurations"

    const-string v5, "ScaledVideoConfiguration.java"

    invoke-interface {v1, v3, v4, v2, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Using densityDpi-based calculation for a proper screen density."

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    .line 11
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v1

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v0

    .line 13
    invoke-static {p0, p1, v5, v6}, Lbgm;->a(IIFF)Lbgk;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v4, v0, Lbgk;->b:I

    .line 15
    move v2, p0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lbhc;->c(IIIFFI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x52

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No valid screen density found, screenWidth="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", screenHeight="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static c(IIIFFI)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-le p1, p0, :cond_0

    move v1, p0

    goto :goto_0

    .line 5
    :cond_0
    move v1, p1

    .line 1
    :goto_0
    if-le p1, p0, :cond_1

    move v2, p1

    goto :goto_1

    .line 5
    :cond_1
    move v2, p0

    .line 1
    :goto_1
    const/16 v3, 0x1e0

    const/16 v4, 0x320

    const/16 v5, 0x2d0

    const/16 v6, 0x500

    if-le v1, v2, :cond_5

    if-gt v1, v6, :cond_2

    if-le v2, v5, :cond_3

    .line 2
    :cond_2
    sget-object v5, Lcky;->g:Lcky;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-gt v1, v4, :cond_4

    if-le v2, v3, :cond_9

    .line 3
    :cond_4
    sget-object v1, Lcky;->f:Lcky;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_5
    if-gt v2, v6, :cond_6

    if-le v1, v5, :cond_7

    .line 4
    :cond_6
    sget-object v5, Lcky;->c:Lcky;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-gt v2, v4, :cond_8

    if-le v1, v3, :cond_9

    .line 5
    :cond_8
    sget-object v1, Lcky;->b:Lcky;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_9
    :goto_2
    sget-object v1, Lcky;->a:Lcky;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v8, Lbha;

    move-object v1, v8

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lbha;-><init>(IIIFFI)V

    .line 8
    invoke-interface {v0, v8}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcoy;->b:Lcoy;

    .line 9
    invoke-static {p1}, Lj$/util/stream/Collectors;->toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
