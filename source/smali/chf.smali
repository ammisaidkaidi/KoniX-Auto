.class public final Lchf;
.super Lbr;
.source "PG"

# interfaces
.implements Laal;


# instance fields
.field public a:Landroid/widget/ArrayAdapter;

.field public b:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbr;-><init>()V

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 4

    .line 1
    invoke-super {p0}, Lbr;->J()V

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    .line 2
    invoke-static {v0}, Laam;->a(Lzq;)Laam;

    move-result-object v0

    iget-object v1, v0, Laam;->b:Laaq;

    iget-boolean v1, v1, Laaq;->c:Z

    if-nez v1, :cond_3

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 5
    const/4 v1, 0x2

    invoke-static {v1}, Laam;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of 54321"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, v0, Laam;->b:Laaq;

    .line 7
    invoke-virtual {v1}, Laaq;->b()Laan;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Laan;->j()V

    iget-object v0, v0, Laam;->b:Laaq;

    iget-object v0, v0, Laaq;->b:Lvj;

    iget-object v1, v0, Lvj;->c:[I

    iget v2, v0, Lvj;->e:I

    const v3, 0xd431

    .line 9
    invoke-static {v1, v2, v3}, Lve;->a([III)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lvj;->d:[Ljava/lang/Object;

    .line 10
    aget-object v2, v2, v1

    sget-object v3, Lvj;->a:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lvj;->d:[Ljava/lang/Object;

    sget-object v3, Lvj;->a:Ljava/lang/Object;

    .line 11
    aput-object v3, v2, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lvj;->b:Z

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    const-string v1, "destroyLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final M(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object p2

    new-instance v0, Landroid/widget/ArrayAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0c0054

    const v3, 0x7f09013e

    invoke-direct {v0, p2, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lchf;->a:Landroid/widget/ArrayAdapter;

    .line 2
    invoke-static {p2}, Laam;->a(Lzq;)Laam;

    move-result-object p2

    iget-object v0, p2, Laam;->b:Laaq;

    iget-boolean v0, v0, Laaq;->c:Z

    if-nez v0, :cond_7

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 5
    iget-object v0, p2, Laam;->b:Laaq;

    .line 6
    invoke-virtual {v0}, Laaq;->b()Laan;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Laam;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x3

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p2, Laam;->b:Laaq;

    const/4 v2, 0x1

    iput-boolean v2, v0, Laaq;->c:Z

    new-instance v0, Laas;

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v2

    .line 8
    invoke-direct {v0, v2}, Laas;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    new-instance v2, Laan;

    .line 11
    invoke-direct {v2, v0}, Laan;-><init>(Laau;)V

    invoke-static {v1}, Laam;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Created new loader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p2, Laam;->b:Laaq;

    iget-object v0, v0, Laaq;->b:Lvj;

    const v1, 0xd431

    .line 13
    invoke-virtual {v0, v1, v2}, Lvj;->g(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p2, Laam;->b:Laaq;

    .line 14
    invoke-virtual {v0}, Laaq;->a()V

    iget-object p2, p2, Laam;->a:Lzq;

    .line 15
    invoke-virtual {v2, p2, p0}, Laan;->k(Lzq;Laal;)V

    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    iget-object p2, p2, Laam;->b:Laaq;

    .line 14
    invoke-virtual {p2}, Laaq;->a()V

    .line 17
    throw p1

    .line 22
    :cond_4
    invoke-static {v1}, Laam;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Re-using existing loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    iget-object p2, p2, Laam;->a:Lzq;

    .line 19
    invoke-virtual {v0, p2, p0}, Laan;->k(Lzq;Laal;)V

    .line 15
    :goto_1
    const p2, 0x7f090141

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object p2, p0, Lchf;->a:Landroid/widget/ArrayAdapter;

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p2, Lche;

    invoke-direct {p2, p0}, Lche;-><init>(Lchf;)V

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 4
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    const-string p2, "initLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final aR(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbr;->aR(Landroid/content/Context;)V

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    iput-object p1, p0, Lchf;->b:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    :cond_0
    return-void
.end method

.method public final ag(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    const v0, 0x7f0c0057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbr;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lchf;->b:Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    return-void
.end method
