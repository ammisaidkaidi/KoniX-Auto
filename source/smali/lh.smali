.class public final Llh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lqi;

.field public final b:Llo;

.field public final c:I


# direct methods
.method public constructor <init>(Lqi;Llo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llh;->a:Lqi;

    iput-object p2, p0, Llh;->b:Llo;

    iput p3, p0, Llh;->c:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Llh;->a:Lqi;

    iget-object v0, v0, Lqf;->e:Lpf;

    return-object v0
.end method
