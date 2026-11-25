.class final Lcrc;
.super Lcqj;
.source "PG"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcrd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcqj;-><init>(Lcqk;)V

    .line 2
    invoke-virtual {p1}, Lcrd;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcrc;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Lcqi;
    .locals 1

    .line 1
    new-instance p1, Lcrb;

    iget-object v0, p0, Lcrc;->a:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Lcrb;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
