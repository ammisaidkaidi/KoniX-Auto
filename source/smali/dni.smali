.class public final Ldni;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldnh;


# static fields
.field public static final a:Lcgj;

.field public static final b:Lcgj;

.field public static final c:Lcgj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcgo;

    const-string v1, "com.google.android.libraries.performance.primes"

    invoke-direct {v0, v1}, Lcgo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcgo;->d()Lcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcgo;->e()Lcgo;

    move-result-object v0

    const-string v1, "45359218"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldni;->a:Lcgj;

    .line 2
    const-string v1, "45359255"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldni;->b:Lcgj;

    .line 3
    const-string v1, "36"

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v0

    sput-object v0, Ldni;->c:Lcgj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Ldni;->a:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Ldni;->b:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Ldni;->c:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
