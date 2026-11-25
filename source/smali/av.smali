.class final Lav;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:[I

.field final b:Ljava/util/ArrayList;

.field final c:[I

.field final d:[I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:I

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:I

.field final k:Ljava/lang/CharSequence;

.field final l:Ljava/util/ArrayList;

.field final m:Ljava/util/ArrayList;

.field final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Law;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Law;-><init>(I)V

    sput-object v0, Lav;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lav;->a:[I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lav;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lav;->c:[I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lav;->d:[I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lav;->e:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lav;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lav;->g:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lav;->h:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lav;->i:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lav;->j:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lav;->k:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lav;->l:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lav;->m:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lav;->n:Z

    return-void
.end method

.method public constructor <init>(Lau;)V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    .line 16
    new-array v1, v1, [I

    iput-object v1, p0, Lav;->a:[I

    .line 17
    iget-boolean v1, p1, Lau;->j:Z

    if-eqz v1, :cond_2

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lav;->b:Ljava/util/ArrayList;

    .line 20
    new-array v1, v0, [I

    iput-object v1, p0, Lav;->c:[I

    .line 21
    new-array v1, v0, [I

    iput-object v1, p0, Lav;->d:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    iget-object v3, p1, Lau;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lav;->a:[I

    .line 23
    iget v6, v3, Lcz;->a:I

    aput v6, v5, v2

    iget-object v2, p0, Lav;->b:Ljava/util/ArrayList;

    .line 24
    iget-object v5, v3, Lcz;->b:Lbr;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lbr;->m:Ljava/lang/String;

    goto :goto_1

    .line 31
    :cond_0
    const/4 v5, 0x0

    .line 24
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lav;->a:[I

    add-int/lit8 v5, v4, 0x1

    .line 25
    iget-boolean v6, v3, Lcz;->c:Z

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .line 26
    iget v6, v3, Lcz;->d:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .line 27
    iget v6, v3, Lcz;->e:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .line 28
    iget v6, v3, Lcz;->f:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .line 29
    iget v6, v3, Lcz;->g:I

    aput v6, v2, v4

    iget-object v2, p0, Lav;->c:[I

    .line 30
    iget-object v4, v3, Lcz;->h:Lzm;

    invoke-virtual {v4}, Lzm;->ordinal()I

    move-result v4

    aput v4, v2, v1

    iget-object v2, p0, Lav;->d:[I

    .line 31
    iget-object v3, v3, Lcz;->i:Lzm;

    invoke-virtual {v3}, Lzm;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 32
    :cond_1
    iget v0, p1, Lau;->i:I

    iput v0, p0, Lav;->e:I

    .line 33
    iget-object v0, p1, Lau;->l:Ljava/lang/String;

    iput-object v0, p0, Lav;->f:Ljava/lang/String;

    .line 34
    iget v0, p1, Lau;->c:I

    iput v0, p0, Lav;->g:I

    .line 35
    iget v0, p1, Lau;->m:I

    iput v0, p0, Lav;->h:I

    .line 36
    iget-object v0, p1, Lau;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Lav;->i:Ljava/lang/CharSequence;

    .line 37
    iget v0, p1, Lau;->o:I

    iput v0, p0, Lav;->j:I

    .line 38
    iget-object v0, p1, Lau;->p:Ljava/lang/CharSequence;

    iput-object v0, p0, Lav;->k:Ljava/lang/CharSequence;

    .line 39
    iget-object v0, p1, Lau;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Lav;->l:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p1, Lau;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Lav;->m:Ljava/util/ArrayList;

    .line 41
    iget-boolean p1, p1, Lau;->s:Z

    iput-boolean p1, p0, Lav;->n:Z

    return-void

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lav;->a:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Lav;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lav;->c:[I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Lav;->d:[I

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lav;->e:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lav;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lav;->g:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lav;->h:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lav;->i:Ljava/lang/CharSequence;

    .line 9
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Lav;->j:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lav;->k:Ljava/lang/CharSequence;

    .line 11
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lav;->l:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lav;->m:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lav;->n:Z

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
