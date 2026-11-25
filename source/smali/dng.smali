.class public final Ldng;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field public static final a:Ldng;


# instance fields
.field private final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldng;

    invoke-direct {v0}, Ldng;-><init>()V

    sput-object v0, Ldng;->a:Ldng;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldni;

    invoke-direct {v0}, Ldni;-><init>()V

    invoke-static {v0}, Lex;->j(Ljava/lang/Object;)Lcol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Ldng;->b:Lcol;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldng;->b()Ldnh;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldnh;
    .locals 1

    .line 1
    iget-object v0, p0, Ldng;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnh;

    return-object v0
.end method
