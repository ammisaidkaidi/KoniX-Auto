.class public final Ltm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltd;


# instance fields
.field final synthetic a:Ltn;

.field private final b:Ltl;


# direct methods
.method public constructor <init>(Ltn;Ltl;)V
    .locals 0

    iput-object p1, p0, Ltm;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltm;->b:Ltl;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm;->a:Ltn;

    iget-object v0, v0, Ltn;->a:Ljava/util/ArrayDeque;

    iget-object v1, p0, Ltm;->b:Ltl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ltm;->b:Ltl;

    .line 2
    invoke-virtual {v0, p0}, Ltl;->b(Ltd;)V

    return-void
.end method
