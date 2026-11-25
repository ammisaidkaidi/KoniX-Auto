.class public Landroid/car/projection/ProjectionOptions;
.super Ljava/lang/Object;
.source "ProjectionOptions.java"


# static fields
.field public static final UI_MODE_BLENDED:I = 0x1

.field public static final UI_MODE_FULL_SCREEN:I


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/car/projection/ProjectionOptions;->mBundle:Landroid/os/Bundle;

    .line 11
    return-void
.end method


# virtual methods
.method public getActivityOptions()Landroid/app/ActivityOptions;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConsentActivity()Landroid/content/ComponentName;
    .locals 2

    .line 22
    iget-object v0, p0, Landroid/car/projection/ProjectionOptions;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.car.projection.consentActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSystemUiFlags()I
    .locals 3

    .line 16
    iget-object v0, p0, Landroid/car/projection/ProjectionOptions;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.car.projection.systemUiFlags"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUiMode()I
    .locals 3

    .line 13
    iget-object v0, p0, Landroid/car/projection/ProjectionOptions;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.car.projection.uiMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 25
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/car/projection/ProjectionOptions;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectionOptions{uiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/car/projection/ProjectionOptions;->getUiMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/car/projection/ProjectionOptions;->getSystemUiFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
