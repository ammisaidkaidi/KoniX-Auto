.class public final Ldlk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field public static final a:Ldlk;


# instance fields
.field private final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldlk;

    invoke-direct {v0}, Ldlk;-><init>()V

    sput-object v0, Ldlk;->a:Ldlk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldlm;

    invoke-direct {v0}, Ldlm;-><init>()V

    invoke-static {v0}, Lex;->j(Ljava/lang/Object;)Lcol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Ldlk;->b:Lcol;

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Ldlk;->a:Ldlk;

    invoke-virtual {v0}, Ldlk;->b()Ldll;

    move-result-object v0

    invoke-interface {v0}, Ldll;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldlk;->b()Ldll;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldll;
    .locals 1

    .line 1
    iget-object v0, p0, Ldlk;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldll;

    return-object v0
.end method
