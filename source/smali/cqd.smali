.class final Lcqd;
.super Lcsu;
.source "PG"


# instance fields
.field private final a:Lcqh;


# direct methods
.method public constructor <init>(Lcqh;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcqh;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcsu;-><init>(II)V

    iput-object p1, p0, Lcqd;->a:Lcqh;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcqd;->a:Lcqh;

    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
