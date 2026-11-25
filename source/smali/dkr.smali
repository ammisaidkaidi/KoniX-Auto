.class public final Ldkr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldkq;


# static fields
.field public static final a:Lcgj;

.field public static final b:Lcgj;

.field public static final c:Lcgj;

.field public static final d:Lcgj;

.field public static final e:Lcgj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcgo;

    const-string v1, "com.google.android.apps.auto.aareceiver"

    invoke-direct {v0, v1}, Lcgo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcgo;->d()Lcgo;

    move-result-object v0

    const-string v1, "45350358"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldkr;->a:Lcgj;

    .line 2
    const-string v1, "45350495"

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldkr;->b:Lcgj;

    .line 3
    const-string v1, "45351725"

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldkr;->c:Lcgj;

    .line 4
    const-string v1, "45351678"

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldkr;->d:Lcgj;

    .line 5
    const-string v1, "45350297"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v0

    sput-object v0, Ldkr;->e:Lcgj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Ldkr;->a:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Ldkr;->b:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-object v0, Ldkr;->c:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    sget-object v0, Ldkr;->d:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    sget-object v0, Ldkr;->e:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
