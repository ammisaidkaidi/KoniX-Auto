.class public final Laqs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/view/inputmethod/InputMethodManager;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/SurfaceControlViewHost;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/view/ViewGroup$LayoutParams;

.field public k:Laqf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laqs;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laqs;->h:Z

    invoke-static {}, Laqf;->a()Laqe;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Laqe;->a()Laqf;

    move-result-object v0

    iput-object v0, p0, Laqs;->k:Laqf;

    iput-object p1, p0, Laqs;->b:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Laqs;->c:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public static f(Landroid/graphics/Bitmap;)[B
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Laqs;->k:Laqf;

    iget-object v0, v0, Laqf;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getView()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final b()Laqd;
    .locals 10

    .line 1
    iget-object v0, p0, Laqs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100024

    invoke-static {v1, v2}, Laro;->n(Landroid/content/res/Resources;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f030000

    .line 4
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 5
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {}, Laqd;->a()Laqc;

    move-result-object v0

    iput-boolean v2, v0, Laqc;->a:Z

    iput-boolean v1, v0, Laqc;->b:Z

    invoke-virtual {v0}, Laqc;->a()Laqd;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lj$/util/function/BiConsumer;
    .locals 1

    .line 1
    new-instance v0, Laqq;

    invoke-direct {v0, p0}, Laqq;-><init>(Laqs;)V

    return-object v0
.end method

.method public final d(Laqf;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    invoke-static {}, Laqf;->a()Laqe;

    move-result-object p1

    invoke-virtual {p1}, Laqe;->a()Laqf;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Laqs;->k:Laqf;

    return-void
.end method

.method public final e(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Laqs;->d:Landroid/widget/TextView;

    if-nez v0, :cond_2

    iput-object p1, p0, Laqs;->d:Landroid/widget/TextView;

    .line 2
    new-instance p1, Laqn;

    invoke-direct {p1, p0}, Laqn;-><init>(Laqs;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Laqs;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqs;->d:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Laqs;->d:Landroid/widget/TextView;

    .line 5
    new-instance v1, Laqr;

    invoke-direct {v1, p0, p1}, Laqr;-><init>(Laqs;Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TextView already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
