.class final Lcql;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcqk;


# direct methods
.method public constructor <init>(Lcqk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcql;->a:Lcqk;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcql;->a:Lcqk;

    invoke-virtual {v0}, Lcqk;->k()Lcqw;

    move-result-object v0

    return-object v0
.end method
