.class public final enum Lddc;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:Lddc;

.field public static final enum B:Lddc;

.field public static final enum C:Lddc;

.field public static final enum D:Lddc;

.field public static final enum E:Lddc;

.field public static final enum F:Lddc;

.field public static final enum G:Lddc;

.field public static final enum H:Lddc;

.field public static final enum I:Lddc;

.field public static final enum J:Lddc;

.field public static final enum K:Lddc;

.field public static final enum L:Lddc;

.field public static final enum M:Lddc;

.field public static final enum N:Lddc;

.field public static final enum O:Lddc;

.field public static final enum P:Lddc;

.field public static final enum Q:Lddc;

.field public static final enum R:Lddc;

.field public static final enum S:Lddc;

.field public static final enum T:Lddc;

.field public static final enum U:Lddc;

.field public static final enum V:Lddc;

.field public static final enum W:Lddc;

.field public static final enum X:Lddc;

.field public static final enum Y:Lddc;

.field public static final enum a:Lddc;

.field private static final aa:[Lddc;

.field private static final synthetic ab:[Lddc;

.field public static final enum b:Lddc;

.field public static final enum c:Lddc;

.field public static final enum d:Lddc;

.field public static final enum e:Lddc;

.field public static final enum f:Lddc;

.field public static final enum g:Lddc;

.field public static final enum h:Lddc;

.field public static final enum i:Lddc;

.field public static final enum j:Lddc;

.field public static final enum k:Lddc;

.field public static final enum l:Lddc;

.field public static final enum m:Lddc;

.field public static final enum n:Lddc;

.field public static final enum o:Lddc;

.field public static final enum p:Lddc;

.field public static final enum q:Lddc;

.field public static final enum r:Lddc;

.field public static final enum s:Lddc;

.field public static final enum t:Lddc;

.field public static final enum u:Lddc;

.field public static final enum v:Lddc;

.field public static final enum w:Lddc;

.field public static final enum x:Lddc;

.field public static final enum y:Lddc;

.field public static final enum z:Lddc;


# instance fields
.field public final Z:I


# direct methods
.method static constructor <clinit>()V
    .locals 62

    .line 1
    new-instance v6, Lddc;

    sget-object v5, Lddw;->e:Lddw;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v6, Lddc;->a:Lddc;

    new-instance v0, Lddc;

    sget-object v12, Lddw;->d:Lddw;

    .line 2
    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v0, Lddc;->b:Lddc;

    new-instance v1, Lddc;

    sget-object v18, Lddw;->c:Lddw;

    .line 3
    const-string v14, "INT64"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v1, Lddc;->c:Lddc;

    new-instance v2, Lddc;

    sget-object v12, Lddw;->c:Lddw;

    .line 4
    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v2, Lddc;->d:Lddc;

    new-instance v3, Lddc;

    sget-object v18, Lddw;->b:Lddw;

    .line 5
    const-string v14, "INT32"

    const/4 v15, 0x4

    const/16 v16, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v3, Lddc;->e:Lddc;

    new-instance v4, Lddc;

    sget-object v12, Lddw;->c:Lddw;

    .line 6
    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v4, Lddc;->f:Lddc;

    new-instance v5, Lddc;

    sget-object v18, Lddw;->b:Lddw;

    .line 7
    const-string v14, "FIXED32"

    const/4 v15, 0x6

    const/16 v16, 0x6

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v5, Lddc;->g:Lddc;

    new-instance v13, Lddc;

    sget-object v12, Lddw;->f:Lddw;

    .line 8
    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v13, Lddc;->h:Lddc;

    new-instance v7, Lddc;

    sget-object v19, Lddw;->g:Lddw;

    .line 9
    const-string v15, "STRING"

    const/16 v16, 0x8

    const/16 v17, 0x8

    const/16 v18, 0x1

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v7, Lddc;->i:Lddc;

    new-instance v8, Lddc;

    sget-object v25, Lddw;->j:Lddw;

    .line 10
    const-string v21, "MESSAGE"

    const/16 v22, 0x9

    const/16 v23, 0x9

    const/16 v24, 0x1

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v8, Lddc;->j:Lddc;

    new-instance v9, Lddc;

    sget-object v19, Lddw;->h:Lddw;

    .line 11
    const-string v15, "BYTES"

    const/16 v16, 0xa

    const/16 v17, 0xa

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v9, Lddc;->k:Lddc;

    new-instance v10, Lddc;

    sget-object v25, Lddw;->b:Lddw;

    .line 12
    const-string v21, "UINT32"

    const/16 v22, 0xb

    const/16 v23, 0xb

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v10, Lddc;->l:Lddc;

    new-instance v11, Lddc;

    sget-object v19, Lddw;->i:Lddw;

    .line 13
    const-string v15, "ENUM"

    const/16 v16, 0xc

    const/16 v17, 0xc

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v11, Lddc;->m:Lddc;

    new-instance v12, Lddc;

    sget-object v25, Lddw;->b:Lddw;

    .line 14
    const-string v21, "SFIXED32"

    const/16 v22, 0xd

    const/16 v23, 0xd

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v12, Lddc;->n:Lddc;

    new-instance v20, Lddc;

    sget-object v19, Lddw;->c:Lddw;

    .line 15
    const-string v15, "SFIXED64"

    const/16 v16, 0xe

    const/16 v17, 0xe

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v20, Lddc;->o:Lddc;

    new-instance v14, Lddc;

    sget-object v26, Lddw;->b:Lddw;

    .line 16
    const-string v22, "SINT32"

    const/16 v23, 0xf

    const/16 v24, 0xf

    const/16 v25, 0x1

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v14, Lddc;->p:Lddc;

    new-instance v15, Lddc;

    sget-object v32, Lddw;->c:Lddw;

    .line 17
    const-string v28, "SINT64"

    const/16 v29, 0x10

    const/16 v30, 0x10

    const/16 v31, 0x1

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v15, Lddc;->q:Lddc;

    new-instance v16, Lddc;

    sget-object v26, Lddw;->j:Lddw;

    .line 18
    const-string v22, "GROUP"

    const/16 v23, 0x11

    const/16 v24, 0x11

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v16, Lddc;->r:Lddc;

    new-instance v17, Lddc;

    sget-object v32, Lddw;->e:Lddw;

    .line 19
    const-string v28, "DOUBLE_LIST"

    const/16 v29, 0x12

    const/16 v30, 0x12

    const/16 v31, 0x2

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v17, Lddc;->s:Lddc;

    new-instance v18, Lddc;

    sget-object v26, Lddw;->d:Lddw;

    .line 20
    const-string v22, "FLOAT_LIST"

    const/16 v23, 0x13

    const/16 v24, 0x13

    const/16 v25, 0x2

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v18, Lddc;->t:Lddc;

    new-instance v19, Lddc;

    sget-object v32, Lddw;->c:Lddw;

    .line 21
    const-string v28, "INT64_LIST"

    const/16 v29, 0x14

    const/16 v30, 0x14

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v19, Lddc;->u:Lddc;

    new-instance v27, Lddc;

    sget-object v26, Lddw;->c:Lddw;

    .line 22
    const-string v22, "UINT64_LIST"

    const/16 v23, 0x15

    const/16 v24, 0x15

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v27, Lddc;->v:Lddc;

    new-instance v21, Lddc;

    sget-object v33, Lddw;->b:Lddw;

    .line 23
    const-string v29, "INT32_LIST"

    const/16 v30, 0x16

    const/16 v31, 0x16

    const/16 v32, 0x2

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v21, Lddc;->w:Lddc;

    new-instance v22, Lddc;

    sget-object v39, Lddw;->c:Lddw;

    .line 24
    const-string v35, "FIXED64_LIST"

    const/16 v36, 0x17

    const/16 v37, 0x17

    const/16 v38, 0x2

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v22, Lddc;->x:Lddc;

    new-instance v23, Lddc;

    sget-object v33, Lddw;->b:Lddw;

    .line 25
    const-string v29, "FIXED32_LIST"

    const/16 v30, 0x18

    const/16 v31, 0x18

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v23, Lddc;->y:Lddc;

    new-instance v24, Lddc;

    sget-object v39, Lddw;->f:Lddw;

    .line 26
    const-string v35, "BOOL_LIST"

    const/16 v36, 0x19

    const/16 v37, 0x19

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v24, Lddc;->z:Lddc;

    new-instance v25, Lddc;

    sget-object v33, Lddw;->g:Lddw;

    .line 27
    const-string v29, "STRING_LIST"

    const/16 v30, 0x1a

    const/16 v31, 0x1a

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v25, Lddc;->A:Lddc;

    new-instance v26, Lddc;

    sget-object v39, Lddw;->j:Lddw;

    .line 28
    const-string v35, "MESSAGE_LIST"

    const/16 v36, 0x1b

    const/16 v37, 0x1b

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v26, Lddc;->B:Lddc;

    new-instance v34, Lddc;

    sget-object v33, Lddw;->h:Lddw;

    .line 29
    const-string v29, "BYTES_LIST"

    const/16 v30, 0x1c

    const/16 v31, 0x1c

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v34, Lddc;->C:Lddc;

    new-instance v28, Lddc;

    sget-object v40, Lddw;->b:Lddw;

    .line 30
    const-string v36, "UINT32_LIST"

    const/16 v37, 0x1d

    const/16 v38, 0x1d

    const/16 v39, 0x2

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v28, Lddc;->D:Lddc;

    new-instance v29, Lddc;

    sget-object v46, Lddw;->i:Lddw;

    .line 31
    const-string v42, "ENUM_LIST"

    const/16 v43, 0x1e

    const/16 v44, 0x1e

    const/16 v45, 0x2

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v29, Lddc;->E:Lddc;

    new-instance v30, Lddc;

    sget-object v40, Lddw;->b:Lddw;

    .line 32
    const-string v36, "SFIXED32_LIST"

    const/16 v37, 0x1f

    const/16 v38, 0x1f

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v30, Lddc;->F:Lddc;

    new-instance v31, Lddc;

    sget-object v46, Lddw;->c:Lddw;

    .line 33
    const-string v42, "SFIXED64_LIST"

    const/16 v43, 0x20

    const/16 v44, 0x20

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v31, Lddc;->G:Lddc;

    new-instance v32, Lddc;

    sget-object v40, Lddw;->b:Lddw;

    .line 34
    const-string v36, "SINT32_LIST"

    const/16 v37, 0x21

    const/16 v38, 0x21

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v32, Lddc;->H:Lddc;

    new-instance v33, Lddc;

    sget-object v46, Lddw;->c:Lddw;

    .line 35
    const-string v42, "SINT64_LIST"

    const/16 v43, 0x22

    const/16 v44, 0x22

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v33, Lddc;->I:Lddc;

    new-instance v41, Lddc;

    sget-object v40, Lddw;->e:Lddw;

    .line 36
    const-string v36, "DOUBLE_LIST_PACKED"

    const/16 v37, 0x23

    const/16 v38, 0x23

    const/16 v39, 0x3

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v41, Lddc;->J:Lddc;

    new-instance v35, Lddc;

    sget-object v47, Lddw;->d:Lddw;

    .line 37
    const-string v43, "FLOAT_LIST_PACKED"

    const/16 v44, 0x24

    const/16 v45, 0x24

    const/16 v46, 0x3

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v35, Lddc;->K:Lddc;

    new-instance v36, Lddc;

    sget-object v53, Lddw;->c:Lddw;

    .line 38
    const-string v49, "INT64_LIST_PACKED"

    const/16 v50, 0x25

    const/16 v51, 0x25

    const/16 v52, 0x3

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v53}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v36, Lddc;->L:Lddc;

    new-instance v37, Lddc;

    sget-object v47, Lddw;->c:Lddw;

    .line 39
    const-string v43, "UINT64_LIST_PACKED"

    const/16 v44, 0x26

    const/16 v45, 0x26

    move-object/from16 v42, v37

    invoke-direct/range {v42 .. v47}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v37, Lddc;->M:Lddc;

    new-instance v38, Lddc;

    sget-object v53, Lddw;->b:Lddw;

    .line 40
    const-string v49, "INT32_LIST_PACKED"

    const/16 v50, 0x27

    const/16 v51, 0x27

    move-object/from16 v48, v38

    invoke-direct/range {v48 .. v53}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v38, Lddc;->N:Lddc;

    new-instance v39, Lddc;

    sget-object v47, Lddw;->c:Lddw;

    .line 41
    const-string v43, "FIXED64_LIST_PACKED"

    const/16 v44, 0x28

    const/16 v45, 0x28

    move-object/from16 v42, v39

    invoke-direct/range {v42 .. v47}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v39, Lddc;->O:Lddc;

    new-instance v40, Lddc;

    sget-object v53, Lddw;->b:Lddw;

    .line 42
    const-string v49, "FIXED32_LIST_PACKED"

    const/16 v50, 0x29

    const/16 v51, 0x29

    move-object/from16 v48, v40

    invoke-direct/range {v48 .. v53}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v40, Lddc;->P:Lddc;

    new-instance v48, Lddc;

    sget-object v47, Lddw;->f:Lddw;

    .line 43
    const-string v43, "BOOL_LIST_PACKED"

    const/16 v44, 0x2a

    const/16 v45, 0x2a

    move-object/from16 v42, v48

    invoke-direct/range {v42 .. v47}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v48, Lddc;->Q:Lddc;

    new-instance v42, Lddc;

    sget-object v54, Lddw;->b:Lddw;

    .line 44
    const-string v50, "UINT32_LIST_PACKED"

    const/16 v51, 0x2b

    const/16 v52, 0x2b

    const/16 v53, 0x3

    move-object/from16 v49, v42

    invoke-direct/range {v49 .. v54}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v42, Lddc;->R:Lddc;

    new-instance v43, Lddc;

    sget-object v60, Lddw;->i:Lddw;

    .line 45
    const-string v56, "ENUM_LIST_PACKED"

    const/16 v57, 0x2c

    const/16 v58, 0x2c

    const/16 v59, 0x3

    move-object/from16 v55, v43

    invoke-direct/range {v55 .. v60}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v43, Lddc;->S:Lddc;

    new-instance v44, Lddc;

    sget-object v54, Lddw;->b:Lddw;

    .line 46
    const-string v50, "SFIXED32_LIST_PACKED"

    const/16 v51, 0x2d

    const/16 v52, 0x2d

    move-object/from16 v49, v44

    invoke-direct/range {v49 .. v54}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v44, Lddc;->T:Lddc;

    new-instance v45, Lddc;

    sget-object v60, Lddw;->c:Lddw;

    .line 47
    const-string v56, "SFIXED64_LIST_PACKED"

    const/16 v57, 0x2e

    const/16 v58, 0x2e

    move-object/from16 v55, v45

    invoke-direct/range {v55 .. v60}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v45, Lddc;->U:Lddc;

    new-instance v46, Lddc;

    sget-object v54, Lddw;->b:Lddw;

    .line 48
    const-string v50, "SINT32_LIST_PACKED"

    const/16 v51, 0x2f

    const/16 v52, 0x2f

    move-object/from16 v49, v46

    invoke-direct/range {v49 .. v54}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v46, Lddc;->V:Lddc;

    new-instance v47, Lddc;

    sget-object v60, Lddw;->c:Lddw;

    .line 49
    const-string v56, "SINT64_LIST_PACKED"

    const/16 v57, 0x30

    const/16 v58, 0x30

    move-object/from16 v55, v47

    invoke-direct/range {v55 .. v60}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v47, Lddc;->W:Lddc;

    new-instance v55, Lddc;

    sget-object v54, Lddw;->j:Lddw;

    .line 50
    const-string v50, "GROUP_LIST"

    const/16 v51, 0x31

    const/16 v52, 0x31

    const/16 v53, 0x2

    move-object/from16 v49, v55

    invoke-direct/range {v49 .. v54}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v55, Lddc;->X:Lddc;

    new-instance v49, Lddc;

    sget-object v61, Lddw;->a:Lddw;

    .line 51
    const-string v57, "MAP"

    const/16 v58, 0x32

    const/16 v59, 0x32

    const/16 v60, 0x4

    move-object/from16 v56, v49

    invoke-direct/range {v56 .. v61}, Lddc;-><init>(Ljava/lang/String;IIILddw;)V

    sput-object v49, Lddc;->Y:Lddc;

    move-object/from16 v50, v15

    const/16 v15, 0x33

    new-array v15, v15, [Lddc;

    const/16 v51, 0x0

    aput-object v6, v15, v51

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v50, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v41, v15, v0

    const/16 v0, 0x24

    aput-object v35, v15, v0

    const/16 v0, 0x25

    aput-object v36, v15, v0

    const/16 v0, 0x26

    aput-object v37, v15, v0

    const/16 v0, 0x27

    aput-object v38, v15, v0

    const/16 v0, 0x28

    aput-object v39, v15, v0

    const/16 v0, 0x29

    aput-object v40, v15, v0

    const/16 v0, 0x2a

    aput-object v48, v15, v0

    const/16 v0, 0x2b

    aput-object v42, v15, v0

    const/16 v0, 0x2c

    aput-object v43, v15, v0

    const/16 v0, 0x2d

    aput-object v44, v15, v0

    const/16 v0, 0x2e

    aput-object v45, v15, v0

    const/16 v0, 0x2f

    aput-object v46, v15, v0

    const/16 v0, 0x30

    aput-object v47, v15, v0

    const/16 v0, 0x31

    aput-object v55, v15, v0

    const/16 v0, 0x32

    aput-object v49, v15, v0

    sput-object v15, Lddc;->ab:[Lddc;

    .line 52
    invoke-static {}, Lddc;->values()[Lddc;

    move-result-object v0

    .line 53
    array-length v1, v0

    new-array v2, v1, [Lddc;

    sput-object v2, Lddc;->aa:[Lddc;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 54
    aget-object v3, v0, v2

    sget-object v4, Lddc;->aa:[Lddc;

    .line 55
    iget v5, v3, Lddc;->Z:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILddw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lddc;->Z:I

    .line 2
    sget-object p1, Lddw;->a:Lddw;

    add-int/lit8 p1, p4, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p5, Lddw;->k:Ljava/lang/Class;

    .line 2
    :goto_0
    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 3
    invoke-virtual {p5}, Lddw;->ordinal()I

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lddc;
    .locals 1

    .line 1
    sget-object v0, Lddc;->ab:[Lddc;

    invoke-virtual {v0}, [Lddc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lddc;

    return-object v0
.end method
