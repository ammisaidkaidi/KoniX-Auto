.class Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laqb;


# instance fields
.field private mIndeterminate:Z

.field private mMax:I

.field private mMin:I

.field private final mOemProgressbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

.field private mProgress:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mVisible:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mIndeterminate:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mMax:I

    iput v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mMin:I

    iput v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mProgress:I

    iput-object p1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mOemProgressbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mMin:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mProgress:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mIndeterminate:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mVisible:Z

    return v0
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mOemProgressbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;->setIndeterminate(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mIndeterminate:Z

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mOemProgressbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;->setMax(I)V

    :cond_0
    iput p1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mMax:I

    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mOemProgressbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;->setMin(I)V

    :cond_0
    iput p1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mMin:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mOemProgressbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;->setProgress(I)V

    :cond_0
    iput p1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mProgress:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mOemProgressbar:Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/toolbar/ProgressBarControllerOEMV1;->setVisible(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/ProgressBarControllerAdapterV1;->mVisible:Z

    return-void
.end method
