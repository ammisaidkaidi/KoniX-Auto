.class public Lcqq;
.super Lcov;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient b:Lcqk;

.field final transient c:I


# direct methods
.method public constructor <init>(Lcqk;I)V
    .locals 0

    invoke-direct {p0}, Lcov;-><init>()V

    iput-object p1, p0, Lcqq;->b:Lcqk;

    iput p2, p0, Lcqq;->c:I

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcqq;->b:Lcqk;

    return-object v0
.end method
