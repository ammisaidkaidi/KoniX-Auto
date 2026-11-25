.class public final Laoe;
.super Laoj;
.source "PG"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Lamo;

.field public final c:Laob;

.field public final d:Laoc;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Laod;

.field public i:Larh;


# direct methods
.method public constructor <init>(Laob;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Laoj;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoe;->f:Z

    iput-object p1, p0, Laoe;->c:Laob;

    sget-object p1, Laoc;->b:Laoc;

    iput-object p1, p0, Laoe;->d:Laoc;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Laoe;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoe;->c:Laob;

    sget-object v1, Laob;->c:Laob;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Laoe;->c:Laob;

    sget-object v1, Laob;->b:Laob;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Laoe;->c:Laob;

    sget-object v1, Laob;->d:Laob;

    if-ne v0, v1, :cond_2

    :cond_1
    iput-boolean p1, p0, Laoe;->e:Z

    iget-object v0, p0, Laoe;->h:Laod;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0, p0, p1}, Laod;->a(Laoe;Z)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    new-instance v0, Lcqr;

    invoke-direct {v0, p1}, Lcqr;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Lamo;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lamo;-><init>(Lcqr;[B)V

    iput-object p1, p0, Laoe;->b:Lamo;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    sget-object v0, Laob;->e:Laob;

    return-void
.end method
