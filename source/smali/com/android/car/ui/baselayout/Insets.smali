.class public final Lcom/android/car/ui/baselayout/Insets;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final mBottom:I

.field private final mLeft:I

.field private final mRight:I

.field private final mTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    iput v0, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    iput p3, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    iput p2, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    iput p4, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/car/ui/baselayout/Insets;

    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    iget v3, p1, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    iget v3, p1, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    iget v3, p1, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    iget p1, p1, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBottom()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/car/ui/baselayout/Insets;->mLeft:I

    iget v1, p0, Lcom/android/car/ui/baselayout/Insets;->mRight:I

    iget v2, p0, Lcom/android/car/ui/baselayout/Insets;->mTop:I

    iget v3, p0, Lcom/android/car/ui/baselayout/Insets;->mBottom:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "{ left: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bottom: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
