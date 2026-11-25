.class public final Lcbd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Float;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcbe;
    .locals 4

    .line 1
    iget v0, p0, Lcbd;->b:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcbd;->a:Ljava/lang/Float;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Lcbe;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v2, v0, v1}, Lcbe;-><init>(IF)V

    iget v0, v2, Lcbe;->a:F

    const/4 v1, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    nop

    .line 5
    :goto_0
    nop

    .line 6
    const-string v0, "Probability shall be between 0 and 1."

    invoke-static {v3, v0}, Lex;->s(ZLjava/lang/Object;)V

    return-object v2

    .line 1
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcbd;->b:I

    if-nez v1, :cond_3

    .line 2
    const-string v1, " enablement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcbd;->a:Ljava/lang/Float;

    if-nez v1, :cond_4

    .line 3
    const-string v1, " samplingProbability"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcbd;->b:I

    return-void
.end method

.method public final c()Lbxf;
    .locals 4

    .line 1
    iget v0, p0, Lcbd;->b:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcbd;->a:Ljava/lang/Float;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Lbxf;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v2, v0, v1}, Lbxf;-><init>(IF)V

    iget v0, v2, Lbxf;->a:F

    const/4 v1, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    nop

    .line 5
    :goto_0
    nop

    .line 6
    const-string v0, "StartupSamplePercentage should be a floating number > 0 and <= 100."

    invoke-static {v3, v0}, Lex;->m(ZLjava/lang/Object;)V

    return-object v2

    .line 1
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcbd;->b:I

    if-nez v1, :cond_3

    .line 2
    const-string v1, " enablement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcbd;->a:Ljava/lang/Float;

    if-nez v1, :cond_4

    .line 3
    const-string v1, " startupSamplePercentage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcbd;->b:I

    return-void
.end method
