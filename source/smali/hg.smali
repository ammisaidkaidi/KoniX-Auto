.class public final Lhg;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p0

    return p0
.end method

.method static b(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method static c(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method static d(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    return p0
.end method

.method static e(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method static f(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static g(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static i(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method static j(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    return p0
.end method

.method public static k(Landroid/widget/EdgeEffect;)F
    .locals 1

    .line 1
    invoke-static {}, Lre;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lio;->a(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Landroid/widget/EdgeEffect;FF)F
    .locals 1

    .line 1
    invoke-static {}, Lre;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lio;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return p1
.end method

.method public static m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .locals 1

    .line 1
    invoke-static {}, Lre;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lio;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Landroid/widget/EdgeEffect;

    invoke-direct {p1, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static n(Lauj;)Lclk;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    sget-object p0, Lbaz;->a:Lbaz;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lauj;->f:Lcom/google/android/projection/protocol/AudioSink;

    :goto_0
    return-object p0
.end method

.method static o(ZLjava/lang/String;JJ)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "overflow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(JI)I
    .locals 4

    int-to-long v0, p2

    rem-long/2addr p0, v0

    const-wide/16 v2, 0x0

    cmp-long p2, p0, v2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p0, v0

    :goto_0
    long-to-int p1, p0

    return p1
.end method

.method public static r(JJ)J
    .locals 11

    .line 1
    add-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int v5, v2, v4

    const-string v6, "checkedAdd"

    move-wide v7, p0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lhg;->o(ZLjava/lang/String;JJ)V

    return-wide v0
.end method

.method public static s(JJLjava/math/RoundingMode;)J
    .locals 8

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    xor-long/2addr p0, p2

    const/16 v6, 0x3f

    shr-long/2addr p0, v6

    long-to-int p1, p0

    const/4 p0, 0x1

    or-int/2addr p1, p0

    .line 2
    sget-object v6, Lcxw;->a:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    .line 5
    new-instance p0, Ljava/lang/AssertionError;

    .line 6
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sub-long/2addr p2, v2

    sub-long/2addr v2, p2

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long p4, v2, v4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    and-int/2addr p0, p3

    or-int/2addr p0, p2

    goto :goto_4

    :cond_4
    cmp-long p2, v2, v4

    if-lez p2, :cond_6

    goto :goto_3

    :pswitch_1
    if-lez p1, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    const/4 p0, 0x0

    goto :goto_4

    .line 5
    :pswitch_2
    if-gez p1, :cond_6

    :goto_3
    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    :goto_4
    if-eqz p0, :cond_7

    :pswitch_3
    int-to-long p0, p1

    add-long/2addr v0, p0

    return-wide v0

    .line 3
    :pswitch_4
    invoke-static {v7}, Lhg;->p(Z)V

    :cond_7
    :pswitch_5
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static t(J)J
    .locals 12

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v1, -0x1

    xor-long/2addr v1, p0

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    const-wide/32 v6, 0x3b9aca00

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    const-wide/32 v1, -0x3b9aca01

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    mul-long v0, p0, v6

    return-wide v0

    :cond_0
    const/16 v1, 0x40

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    const-wide/32 v4, 0x3b9aca00

    .line 5
    const-string v1, "checkedMultiply"

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lhg;->o(ZLjava/lang/String;JJ)V

    const/4 v0, 0x1

    .line 6
    const-string v1, "checkedMultiply"

    invoke-static/range {v0 .. v5}, Lhg;->o(ZLjava/lang/String;JJ)V

    mul-long v10, p0, v6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_3

    .line 7
    div-long v0, v10, p0

    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-wide/32 v4, 0x3b9aca00

    const-string v1, "checkedMultiply"

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lhg;->o(ZLjava/lang/String;JJ)V

    return-wide v10
.end method

.method public static u(Ljava/lang/Throwable;)Lddf;
    .locals 9

    .line 1
    sget-object v0, Lcxt;->f:Lcxt;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_0
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 4
    check-cast v2, Lcxt;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcxt;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcxt;->a:I

    iput-object v1, v2, Lcxt;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_1
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 8
    check-cast v2, Lcxt;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcxt;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcxt;->a:I

    iput-object v1, v2, Lcxt;->c:Ljava/lang/String;

    .line 10
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    const/4 p0, 0x0

    .line 10
    :goto_0
    if-eqz p0, :cond_a

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_a

    .line 11
    aget-object v4, p0, v2

    .line 12
    sget-object v5, Lcxs;->f:Lcxs;

    .line 13
    invoke-virtual {v5}, Lddk;->n()Lddf;

    move-result-object v5

    if-eqz v4, :cond_7

    .line 14
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v3, v5, Lddf;->c:Z

    :cond_3
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 15
    check-cast v7, Lcxs;

    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Lcxs;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcxs;->a:I

    iput-object v6, v7, Lcxs;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_4

    .line 18
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v3, v5, Lddf;->c:Z

    :cond_4
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 19
    check-cast v7, Lcxs;

    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Lcxs;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcxs;->a:I

    iput-object v6, v7, Lcxs;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_5

    .line 22
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v3, v5, Lddf;->c:Z

    :cond_5
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 23
    check-cast v7, Lcxs;

    iget v8, v7, Lcxs;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lcxs;->a:I

    iput v6, v7, Lcxs;->e:I

    .line 24
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 25
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, v5, Lddf;->c:Z

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v3, v5, Lddf;->c:Z

    :cond_6
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 26
    check-cast v6, Lcxs;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v6, Lcxs;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lcxs;->a:I

    iput-object v4, v6, Lcxs;->d:Ljava/lang/String;

    :cond_7
    iget-boolean v4, v0, Lddf;->c:Z

    if-eqz v4, :cond_8

    .line 28
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v3, v0, Lddf;->c:Z

    :cond_8
    iget-object v4, v0, Lddf;->b:Lddk;

    .line 29
    check-cast v4, Lcxt;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Lcxs;

    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcxt;->e:Lddr;

    .line 31
    invoke-interface {v6}, Lddr;->c()Z

    move-result v7

    if-nez v7, :cond_9

    .line 32
    invoke-static {v6}, Lddk;->z(Lddr;)Lddr;

    move-result-object v6

    iput-object v6, v4, Lcxt;->e:Lddr;

    :cond_9
    iget-object v4, v4, Lcxt;->e:Lddr;

    .line 33
    invoke-interface {v4, v5}, Lddr;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    return-object v0
.end method

.method public static v(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to create parent directories of "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
