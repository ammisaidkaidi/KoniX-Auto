.class public final Ldlz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field public static final a:Ldlz;


# instance fields
.field private final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldlz;

    invoke-direct {v0}, Ldlz;-><init>()V

    sput-object v0, Ldlz;->a:Ldlz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldmb;

    invoke-direct {v0}, Ldmb;-><init>()V

    invoke-static {v0}, Lex;->j(Ljava/lang/Object;)Lcol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Ldlz;->b:Lcol;

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Ldlz;->a:Ldlz;

    invoke-virtual {v0}, Ldlz;->b()Ldma;

    move-result-object v0

    invoke-interface {v0}, Ldma;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldlz;->b()Ldma;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldma;
    .locals 1

    .line 1
    iget-object v0, p0, Ldlz;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldma;

    return-object v0
.end method
