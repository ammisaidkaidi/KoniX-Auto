.class public final Ldlq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field public static final a:Ldlq;


# instance fields
.field private final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldlq;

    invoke-direct {v0}, Ldlq;-><init>()V

    sput-object v0, Ldlq;->a:Ldlq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldls;

    invoke-direct {v0}, Ldls;-><init>()V

    invoke-static {v0}, Lex;->j(Ljava/lang/Object;)Lcol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Ldlq;->b:Lcol;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldlq;->b()Ldlr;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldlr;
    .locals 1

    .line 1
    iget-object v0, p0, Ldlq;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlr;

    return-object v0
.end method
