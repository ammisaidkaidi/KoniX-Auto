.class public Lcwr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcwv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcwr;->c([B)V

    return-void
.end method

.method public final c([B)V
    .locals 1

    .line 1
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcwr;->d([BI)V

    return-void
.end method

.method public d([BI)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
