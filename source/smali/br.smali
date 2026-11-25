.class public Lbr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lzq;
.implements Laak;
.implements Laex;


# static fields
.field static final g:Ljava/lang/Object;


# instance fields
.field public A:Lcr;

.field B:Lcc;

.field C:Lcr;

.field public D:Lbr;

.field E:I

.field F:I

.field G:Ljava/lang/String;

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field final M:Z

.field public N:Z

.field public O:Landroid/view/ViewGroup;

.field public P:Landroid/view/View;

.field Q:Z

.field R:Z

.field public S:Lbo;

.field T:Z

.field U:Landroid/view/LayoutInflater;

.field V:Z

.field public W:Ljava/lang/String;

.field X:Lzm;

.field Y:Ldd;

.field final Z:Lzz;

.field aa:Laew;

.field public final ab:Ljava/util/ArrayList;

.field public ac:Lzn;

.field h:I

.field i:Landroid/os/Bundle;

.field j:Landroid/util/SparseArray;

.field k:Landroid/os/Bundle;

.field l:Ljava/lang/Boolean;

.field m:Ljava/lang/String;

.field public n:Landroid/os/Bundle;

.field o:Lbr;

.field p:Ljava/lang/String;

.field q:I

.field public r:Ljava/lang/Boolean;

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbr;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbr;->h:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbr;->p:Ljava/lang/String;

    iput-object v0, p0, Lbr;->r:Ljava/lang/Boolean;

    new-instance v0, Lcr;

    .line 2
    invoke-direct {v0}, Lcr;-><init>()V

    iput-object v0, p0, Lbr;->C:Lcr;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->M:Z

    iput-boolean v0, p0, Lbr;->R:Z

    .line 3
    sget-object v0, Lzm;->e:Lzm;

    iput-object v0, p0, Lbr;->X:Lzm;

    new-instance v0, Lzz;

    .line 4
    invoke-direct {v0}, Lzz;-><init>()V

    iput-object v0, p0, Lbr;->Z:Lzz;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr;->ab:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0}, Lbr;->l()V

    return-void
.end method

.method public static ad(Landroid/content/Context;Ljava/lang/String;)Lbr;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-static {p0, p1}, Lcb;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    :try_start_2
    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbr;

    .line 4
    return-object p0

    .line 5
    :catch_0
    move-exception p0

    new-instance v2, Lbp;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": make sure class is a valid subclass of Fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lbp;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 6
    :catch_1
    move-exception p0

    new-instance v2, Lbp;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": make sure class name exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lbp;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7
    :catch_2
    move-exception p0

    new-instance v0, Lbp;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lbp;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 8
    :catch_3
    move-exception p0

    new-instance v0, Lbp;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lbp;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 9
    :catch_4
    move-exception p0

    new-instance v2, Lbp;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Lbp;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 3
    :catch_5
    move-exception p0

    new-instance v2, Lbp;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Lbp;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lbr;->X:Lzm;

    sget-object v1, Lzm;->b:Lzm;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbr;->D:Lbr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lbr;->X:Lzm;

    .line 3
    invoke-virtual {v0}, Lzm;->ordinal()I

    move-result v0

    iget-object v1, p0, Lbr;->D:Lbr;

    invoke-direct {v1}, Lbr;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lbr;->X:Lzm;

    .line 2
    invoke-virtual {v0}, Lzm;->ordinal()I

    move-result v0

    return v0
.end method

.method private final l()V
    .locals 1

    .line 1
    new-instance v0, Lzn;

    invoke-direct {v0, p0}, Lzn;-><init>(Lzq;)V

    iput-object v0, p0, Lbr;->ac:Lzn;

    .line 2
    invoke-static {p0}, Laew;->a(Laex;)Laew;

    move-result-object v0

    iput-object v0, p0, Lbr;->aa:Laew;

    return-void
.end method


# virtual methods
.method public final A()Lcr;
    .locals 3

    .line 1
    iget-object v0, p0, Lbr;->A:Lcr;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lbr;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C()Lzn;
    .locals 1

    iget-object v0, p0, Lbr;->ac:Lzn;

    return-object v0
.end method

.method public final D()Laev;
    .locals 1

    iget-object v0, p0, Lbr;->aa:Laew;

    iget-object v0, v0, Laew;->a:Laev;

    return-object v0
.end method

.method public final E()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbr;->B:Lcc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lbu;

    iget-object v0, v0, Lbu;->a:Lbv;

    return-object v0
.end method

.method public final F(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->t()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final G()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lbr;->l()V

    iget-object v0, p0, Lbr;->m:Ljava/lang/String;

    iput-object v0, p0, Lbr;->W:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr;->s:Z

    iput-boolean v0, p0, Lbr;->t:Z

    iput-boolean v0, p0, Lbr;->v:Z

    iput-boolean v0, p0, Lbr;->w:Z

    iput-boolean v0, p0, Lbr;->x:Z

    iput v0, p0, Lbr;->z:I

    const/4 v1, 0x0

    iput-object v1, p0, Lbr;->A:Lcr;

    new-instance v2, Lcr;

    .line 3
    invoke-direct {v2}, Lcr;-><init>()V

    iput-object v2, p0, Lbr;->C:Lcr;

    iput-object v1, p0, Lbr;->B:Lcc;

    iput v0, p0, Lbr;->E:I

    iput v0, p0, Lbr;->F:I

    iput-object v1, p0, Lbr;->G:Ljava/lang/String;

    iput-boolean v0, p0, Lbr;->H:Z

    iput-boolean v0, p0, Lbr;->I:Z

    return-void
.end method

.method public final H(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x2

    invoke-static {v0}, Lcr;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public I(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbr;->N:Z

    return-void
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public M(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbr;->P:Landroid/view/View;

    iget-object v1, p0, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lbr;->M(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lbr;->C:Lcr;

    .line 2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcr;->z(I)V

    return-void
.end method

.method final O(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbr;->C:Lcr;

    .line 2
    invoke-virtual {v0, p1}, Lcr;->I(Landroid/os/Parcelable;)V

    iget-object p1, p0, Lbr;->C:Lcr;

    .line 3
    invoke-virtual {p1}, Lcr;->p()V

    :cond_0
    return-void
.end method

.method public final P(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbr;->S:Lbo;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_2

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    goto :goto_0

    .line 4
    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    nop

    .line 1
    :goto_0
    invoke-virtual {p0}, Lbr;->u()Lbo;

    move-result-object v0

    iput p1, v0, Lbo;->b:I

    .line 2
    invoke-virtual {p0}, Lbr;->u()Lbo;

    move-result-object p1

    iput p2, p1, Lbo;->c:I

    .line 3
    invoke-virtual {p0}, Lbr;->u()Lbo;

    move-result-object p1

    iput p3, p1, Lbo;->d:I

    .line 4
    invoke-virtual {p0}, Lbr;->u()Lbo;

    move-result-object p1

    iput p4, p1, Lbo;->e:I

    return-void
.end method

.method public final Q(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbr;->A:Lcr;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcr;->T()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lbr;->n:Landroid/os/Bundle;

    return-void
.end method

.method final R(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->u()Lbo;

    move-result-object v0

    iput-object p1, v0, Lbo;->m:Landroid/view/View;

    return-void
.end method

.method final S(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lbr;->u()Lbo;

    iget-object v0, p0, Lbr;->S:Lbo;

    .line 2
    iput p1, v0, Lbo;->f:I

    return-void
.end method

.method final T(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lbr;->u()Lbo;

    move-result-object v0

    iput-boolean p1, v0, Lbo;->a:Z

    return-void
.end method

.method final U(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->u()Lbo;

    iget-object v0, p0, Lbr;->S:Lbo;

    .line 2
    iput-object p1, v0, Lbo;->g:Ljava/util/ArrayList;

    .line 3
    iput-object p2, v0, Lbo;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public final V(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbr;->B:Lcc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcc;->c:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lxq;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final W()Z
    .locals 1

    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lbo;->a:Z

    return v0
.end method

.method public final X()Z
    .locals 1

    iget-object v0, p0, Lbr;->B:Lcc;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbr;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final Y()Z
    .locals 1

    iget v0, p0, Lbr;->z:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z()V
    .locals 0

    return-void
.end method

.method public aL()Lby;
    .locals 1

    new-instance v0, Lbn;

    invoke-direct {v0, p0}, Lbn;-><init>(Lbr;)V

    return-object v0
.end method

.method public aR(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lbr;->N:Z

    iget-object p1, p0, Lbr;->B:Lcc;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcc;->b:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr;->N:Z

    invoke-virtual {p0, p1}, Lbr;->I(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final aa()V
    .locals 0

    return-void
.end method

.method public final ab()Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lbr;->B:Lcc;

    if-eqz v0, :cond_0

    check-cast v0, Lbu;

    iget-object v1, v0, Lbu;->a:Lbv;

    .line 2
    invoke-virtual {v1}, Lbv;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, v0, Lbu;->a:Lbv;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lbr;->C:Lcr;

    iget-object v1, v1, Lcr;->c:Lce;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ac()V
    .locals 0

    return-void
.end method

.method public final ae()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    iget-object v1, p0, Lbr;->B:Lcc;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcc;->b:Landroid/app/Activity;

    :goto_0
    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lbr;->N:Z

    :cond_1
    return-void
.end method

.method public final af(Lbr;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lza;->e(Lbr;Lbr;)V

    iget-object v0, p0, Lbr;->A:Lcr;

    iget-object v1, p1, Lbr;->A:Lcr;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    goto :goto_0

    .line 5
    :cond_2
    nop

    .line 1
    :goto_0
    move-object v0, p1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0, p0}, Lbr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    nop

    .line 3
    invoke-virtual {v0, v1}, Lbr;->w(Z)Lbr;

    move-result-object v0

    goto :goto_1

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " would create a target cycle"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_4
    iget-object v0, p0, Lbr;->A:Lcr;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lbr;->A:Lcr;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lbr;->m:Ljava/lang/String;

    iput-object p1, p0, Lbr;->p:Ljava/lang/String;

    iput-object v2, p0, Lbr;->o:Lbr;

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lbr;->p:Ljava/lang/String;

    iput-object p1, p0, Lbr;->o:Lbr;

    :goto_2
    iput v1, p0, Lbr;->q:I

    return-void
.end method

.method public ag(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method final ah()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->m()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lbr;->U:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final ai()Laed;
    .locals 3

    .line 1
    iget-object v0, p0, Lbr;->A:Lcr;

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lbr;->b()I

    move-result v0

    sget-object v1, Lzm;->b:Lzm;

    invoke-virtual {v1}, Lzm;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lbr;->A:Lcr;

    iget-object v0, v0, Lcr;->s:Lct;

    iget-object v1, v0, Lct;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lbr;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laed;

    if-nez v1, :cond_0

    new-instance v1, Laed;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, v2}, Laed;-><init>([B)V

    iget-object v0, v0, Lct;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lbr;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    invoke-virtual {p0, p1}, Lbr;->O(Landroid/os/Bundle;)V

    iget-object p1, p0, Lbr;->C:Lcr;

    iget v0, p1, Lcr;->i:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcr;->p()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbr;->N:Z

    return-void
.end method

.method public k(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lbr;->C:Lcr;

    invoke-virtual {p3}, Lcr;->G()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lbr;->y:Z

    new-instance p3, Ldd;

    .line 2
    invoke-virtual {p0}, Lbr;->ai()Laed;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Ldd;-><init>(Laed;[B)V

    iput-object p3, p0, Lbr;->Y:Ldd;

    .line 3
    invoke-virtual {p0, p1, p2}, Lbr;->ag(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lbr;->P:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr;->Y:Ldd;

    .line 4
    invoke-virtual {p1}, Ldd;->b()V

    iget-object p1, p0, Lbr;->P:Landroid/view/View;

    iget-object p2, p0, Lbr;->Y:Ldd;

    .line 5
    invoke-static {p1, p2}, Lxr;->b(Landroid/view/View;Lzq;)V

    iget-object p1, p0, Lbr;->P:Landroid/view/View;

    iget-object p2, p0, Lbr;->Y:Ldd;

    .line 6
    invoke-static {p1, p2}, Lxs;->b(Landroid/view/View;Laak;)V

    iget-object p1, p0, Lbr;->P:Landroid/view/View;

    iget-object p2, p0, Lbr;->Y:Ldd;

    .line 7
    invoke-static {p1, p2}, Lew;->r(Landroid/view/View;Laex;)V

    iget-object p1, p0, Lbr;->Z:Lzz;

    iget-object p2, p0, Lbr;->Y:Ldd;

    .line 8
    invoke-virtual {p1, p2}, Lzz;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lbr;->Y:Ldd;

    iget-object p1, p1, Ldd;->b:Lzn;

    if-nez p1, :cond_1

    .line 9
    iput-object v1, p0, Lbr;->Y:Ldd;

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->ab()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lbo;->b:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lbo;->c:I

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbr;->N:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->y()Lbv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbv;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr;->N:Z

    return-void
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lbo;->d:I

    return v0
.end method

.method public final q()I
    .locals 1

    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lbo;->e:I

    return v0
.end method

.method public r()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbr;->B:Lcc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcc;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final s()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->s()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbr;->E:I

    if-eqz v1, :cond_0

    .line 7
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbr;->E:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lbr;->G:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr;->G:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    nop

    .line 11
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lbo;
    .locals 1

    iget-object v0, p0, Lbr;->S:Lbo;

    if-nez v0, :cond_0

    new-instance v0, Lbo;

    invoke-direct {v0}, Lbo;-><init>()V

    iput-object v0, p0, Lbr;->S:Lbo;

    :cond_0
    iget-object v0, p0, Lbr;->S:Lbo;

    return-object v0
.end method

.method public final v()Lbr;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbr;->w(Z)Lbr;

    move-result-object v0

    return-object v0
.end method

.method public final w(Z)Lbr;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    invoke-static {p0}, Lza;->c(Lbr;)V

    :cond_0
    iget-object p1, p0, Lbr;->o:Lbr;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lbr;->A:Lcr;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lbr;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Lcr;->b(Ljava/lang/String;)Lbr;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x()Lbv;
    .locals 1

    iget-object v0, p0, Lbr;->B:Lcc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcc;->b:Landroid/app/Activity;

    check-cast v0, Lbv;

    return-object v0
.end method

.method public final y()Lbv;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z()Lcr;
    .locals 3

    .line 1
    iget-object v0, p0, Lbr;->B:Lcc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr;->C:Lcr;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
