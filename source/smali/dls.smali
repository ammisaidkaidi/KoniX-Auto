.class public final Ldls;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldlr;


# static fields
.field public static final a:Lcei;

.field public static final b:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v1, Lceg;

    invoke-direct {v1}, Lceg;-><init>()V

    const-string v2, "gms:phenotype:"

    invoke-virtual {v1, v2}, Lceg;->c(Ljava/lang/String;)Lceg;

    move-result-object v1

    :try_start_0
    const-string v2, "DirectBoot__direct_boot_aware_packages"

    const/16 v3, 0xf9

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0xa

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    const/16 v6, 0x20

    aput-byte v6, v3, v4

    const/4 v4, 0x2

    const/16 v7, 0x63

    aput-byte v7, v3, v4

    const/4 v4, 0x3

    const/16 v8, 0x6f

    aput-byte v8, v3, v4

    const/4 v4, 0x4

    const/16 v9, 0x6d

    aput-byte v9, v3, v4

    const/4 v4, 0x5

    const/16 v10, 0x2e

    aput-byte v10, v3, v4

    const/4 v4, 0x6

    const/16 v11, 0x67

    aput-byte v11, v3, v4

    const/4 v4, 0x7

    aput-byte v8, v3, v4

    const/16 v4, 0x8

    aput-byte v8, v3, v4

    const/16 v4, 0x9

    aput-byte v11, v3, v4

    const/16 v4, 0x6c

    aput-byte v4, v3, v5

    const/16 v12, 0xb

    const/16 v13, 0x65

    aput-byte v13, v3, v12

    const/16 v12, 0xc

    aput-byte v10, v3, v12

    const/16 v12, 0xd

    const/16 v14, 0x61

    aput-byte v14, v3, v12

    const/16 v12, 0xe

    const/16 v15, 0x6e

    aput-byte v15, v3, v12

    const/16 v12, 0xf

    const/16 v16, 0x64

    aput-byte v16, v3, v12

    const/16 v12, 0x10

    const/16 v17, 0x72

    aput-byte v17, v3, v12

    const/16 v12, 0x11

    aput-byte v8, v3, v12

    const/16 v12, 0x12

    const/16 v18, 0x69

    aput-byte v18, v3, v12

    const/16 v12, 0x13

    aput-byte v16, v3, v12

    const/16 v12, 0x14

    aput-byte v10, v3, v12

    const/16 v12, 0x15

    aput-byte v11, v3, v12

    const/16 v12, 0x16

    aput-byte v9, v3, v12

    const/16 v12, 0x17

    const/16 v19, 0x73

    aput-byte v19, v3, v12

    const/16 v12, 0x18

    aput-byte v10, v3, v12

    const/16 v12, 0x19

    const/16 v20, 0x70

    aput-byte v20, v3, v12

    const/16 v12, 0x1a

    const/16 v21, 0x68

    aput-byte v21, v3, v12

    const/16 v12, 0x1b

    aput-byte v13, v3, v12

    const/16 v12, 0x1c

    aput-byte v15, v3, v12

    const/16 v12, 0x1d

    aput-byte v8, v3, v12

    const/16 v12, 0x1e

    const/16 v22, 0x74

    aput-byte v22, v3, v12

    const/16 v12, 0x1f

    const/16 v23, 0x79

    aput-byte v23, v3, v12

    aput-byte v20, v3, v6

    const/16 v12, 0x21

    aput-byte v13, v3, v12

    const/16 v12, 0x22

    aput-byte v5, v3, v12

    const/16 v12, 0x23

    const/16 v24, 0x1a

    aput-byte v24, v3, v12

    const/16 v12, 0x24

    aput-byte v7, v3, v12

    const/16 v12, 0x25

    aput-byte v8, v3, v12

    const/16 v12, 0x26

    aput-byte v9, v3, v12

    const/16 v12, 0x27

    aput-byte v10, v3, v12

    const/16 v12, 0x28

    aput-byte v11, v3, v12

    const/16 v12, 0x29

    aput-byte v8, v3, v12

    const/16 v12, 0x2a

    aput-byte v8, v3, v12

    const/16 v12, 0x2b

    aput-byte v11, v3, v12

    const/16 v12, 0x2c

    aput-byte v4, v3, v12

    const/16 v12, 0x2d

    aput-byte v13, v3, v12

    aput-byte v10, v3, v10

    const/16 v12, 0x2f

    aput-byte v14, v3, v12

    const/16 v12, 0x30

    aput-byte v15, v3, v12

    const/16 v12, 0x31

    aput-byte v16, v3, v12

    const/16 v12, 0x32

    aput-byte v17, v3, v12

    const/16 v12, 0x33

    aput-byte v8, v3, v12

    const/16 v12, 0x34

    aput-byte v18, v3, v12

    const/16 v12, 0x35

    aput-byte v16, v3, v12

    const/16 v12, 0x36

    aput-byte v10, v3, v12

    const/16 v12, 0x37

    aput-byte v11, v3, v12

    const/16 v12, 0x38

    aput-byte v9, v3, v12

    const/16 v12, 0x39

    aput-byte v19, v3, v12

    const/16 v12, 0x3a

    aput-byte v10, v3, v12

    const/16 v12, 0x3b

    aput-byte v11, v3, v12

    const/16 v12, 0x3c

    aput-byte v7, v3, v12

    const/16 v12, 0x3d

    aput-byte v9, v3, v12

    const/16 v12, 0x3e

    aput-byte v5, v3, v12

    const/16 v12, 0x3f

    const/16 v24, 0x1d

    aput-byte v24, v3, v12

    const/16 v12, 0x40

    aput-byte v7, v3, v12

    const/16 v12, 0x41

    aput-byte v8, v3, v12

    const/16 v12, 0x42

    aput-byte v9, v3, v12

    const/16 v12, 0x43

    aput-byte v10, v3, v12

    const/16 v12, 0x44

    aput-byte v11, v3, v12

    const/16 v12, 0x45

    aput-byte v8, v3, v12

    const/16 v12, 0x46

    aput-byte v8, v3, v12

    const/16 v12, 0x47

    aput-byte v11, v3, v12

    const/16 v12, 0x48

    aput-byte v4, v3, v12

    const/16 v12, 0x49

    aput-byte v13, v3, v12

    const/16 v12, 0x4a

    aput-byte v10, v3, v12

    const/16 v12, 0x4b

    aput-byte v14, v3, v12

    const/16 v12, 0x4c

    aput-byte v15, v3, v12

    const/16 v12, 0x4d

    aput-byte v16, v3, v12

    const/16 v12, 0x4e

    aput-byte v17, v3, v12

    const/16 v12, 0x4f

    aput-byte v8, v3, v12

    const/16 v12, 0x50

    aput-byte v18, v3, v12

    const/16 v12, 0x51

    aput-byte v16, v3, v12

    const/16 v12, 0x52

    aput-byte v10, v3, v12

    const/16 v12, 0x53

    aput-byte v14, v3, v12

    const/16 v12, 0x54

    aput-byte v20, v3, v12

    const/16 v12, 0x55

    aput-byte v20, v3, v12

    const/16 v12, 0x56

    aput-byte v19, v3, v12

    const/16 v12, 0x57

    aput-byte v10, v3, v12

    const/16 v12, 0x58

    aput-byte v19, v3, v12

    const/16 v12, 0x59

    aput-byte v7, v3, v12

    const/16 v12, 0x5a

    aput-byte v8, v3, v12

    const/16 v12, 0x5b

    aput-byte v15, v3, v12

    const/16 v12, 0x5c

    aput-byte v13, v3, v12

    const/16 v12, 0x5d

    aput-byte v5, v3, v12

    const/16 v12, 0x5e

    const/16 v24, 0x26

    aput-byte v24, v3, v12

    const/16 v12, 0x5f

    aput-byte v7, v3, v12

    const/16 v12, 0x60

    aput-byte v8, v3, v12

    aput-byte v9, v3, v14

    const/16 v12, 0x62

    aput-byte v10, v3, v12

    aput-byte v11, v3, v7

    aput-byte v8, v3, v16

    aput-byte v8, v3, v13

    const/16 v24, 0x66

    aput-byte v11, v3, v24

    aput-byte v4, v3, v11

    aput-byte v13, v3, v21

    aput-byte v10, v3, v18

    const/16 v25, 0x6a

    aput-byte v14, v3, v25

    const/16 v25, 0x6b

    aput-byte v15, v3, v25

    aput-byte v16, v3, v4

    aput-byte v17, v3, v9

    aput-byte v8, v3, v15

    aput-byte v18, v3, v8

    aput-byte v16, v3, v20

    const/16 v25, 0x71

    aput-byte v10, v3, v25

    aput-byte v11, v3, v17

    aput-byte v9, v3, v19

    aput-byte v19, v3, v22

    const/16 v25, 0x75

    aput-byte v10, v3, v25

    const/16 v26, 0x76

    aput-byte v7, v3, v26

    const/16 v26, 0x77

    aput-byte v4, v3, v26

    const/16 v26, 0x78

    aput-byte v13, v3, v26

    aput-byte v14, v3, v23

    const/16 v26, 0x7a

    aput-byte v17, v3, v26

    const/16 v26, 0x7b

    aput-byte v7, v3, v26

    const/16 v26, 0x7c

    aput-byte v25, v3, v26

    const/16 v26, 0x7d

    aput-byte v22, v3, v26

    const/16 v26, 0x7e

    aput-byte v10, v3, v26

    const/16 v26, 0x7f

    aput-byte v20, v3, v26

    const/16 v26, 0x80

    aput-byte v25, v3, v26

    const/16 v26, 0x81

    aput-byte v12, v3, v26

    const/16 v26, 0x82

    aput-byte v4, v3, v26

    const/16 v26, 0x83

    aput-byte v18, v3, v26

    const/16 v26, 0x84

    aput-byte v7, v3, v26

    const/16 v26, 0x85

    aput-byte v5, v3, v26

    const/16 v26, 0x86

    const/16 v27, 0x27

    aput-byte v27, v3, v26

    const/16 v26, 0x87

    aput-byte v7, v3, v26

    const/16 v26, 0x88

    aput-byte v8, v3, v26

    const/16 v26, 0x89

    aput-byte v9, v3, v26

    const/16 v26, 0x8a

    aput-byte v10, v3, v26

    const/16 v26, 0x8b

    aput-byte v11, v3, v26

    const/16 v26, 0x8c

    aput-byte v8, v3, v26

    const/16 v26, 0x8d

    aput-byte v8, v3, v26

    const/16 v26, 0x8e

    aput-byte v11, v3, v26

    const/16 v26, 0x8f

    aput-byte v4, v3, v26

    const/16 v26, 0x90

    aput-byte v13, v3, v26

    const/16 v26, 0x91

    aput-byte v10, v3, v26

    const/16 v26, 0x92

    aput-byte v14, v3, v26

    const/16 v26, 0x93

    aput-byte v15, v3, v26

    const/16 v26, 0x94

    aput-byte v16, v3, v26

    const/16 v26, 0x95

    aput-byte v17, v3, v26

    const/16 v26, 0x96

    aput-byte v8, v3, v26

    const/16 v26, 0x97

    aput-byte v18, v3, v26

    const/16 v26, 0x98

    aput-byte v16, v3, v26

    const/16 v26, 0x99

    aput-byte v10, v3, v26

    const/16 v26, 0x9a

    aput-byte v11, v3, v26

    const/16 v26, 0x9b

    aput-byte v9, v3, v26

    const/16 v26, 0x9c

    aput-byte v19, v3, v26

    const/16 v26, 0x9d

    aput-byte v10, v3, v26

    const/16 v26, 0x9e

    aput-byte v20, v3, v26

    const/16 v26, 0x9f

    aput-byte v4, v3, v26

    const/16 v26, 0xa0

    aput-byte v14, v3, v26

    const/16 v26, 0xa1

    aput-byte v23, v3, v26

    const/16 v26, 0xa2

    aput-byte v4, v3, v26

    const/16 v26, 0xa3

    aput-byte v8, v3, v26

    const/16 v26, 0xa4

    aput-byte v11, v3, v26

    const/16 v26, 0xa5

    aput-byte v10, v3, v26

    const/16 v26, 0xa6

    aput-byte v25, v3, v26

    const/16 v26, 0xa7

    aput-byte v20, v3, v26

    const/16 v26, 0xa8

    aput-byte v4, v3, v26

    const/16 v26, 0xa9

    aput-byte v8, v3, v26

    const/16 v26, 0xaa

    aput-byte v14, v3, v26

    const/16 v26, 0xab

    aput-byte v16, v3, v26

    const/16 v26, 0xac

    aput-byte v13, v3, v26

    const/16 v26, 0xad

    aput-byte v17, v3, v26

    const/16 v26, 0xae

    aput-byte v5, v3, v26

    const/16 v26, 0xaf

    const/16 v27, 0x25

    aput-byte v27, v3, v26

    const/16 v26, 0xb0

    aput-byte v7, v3, v26

    const/16 v26, 0xb1

    aput-byte v8, v3, v26

    const/16 v26, 0xb2

    aput-byte v9, v3, v26

    const/16 v26, 0xb3

    aput-byte v10, v3, v26

    const/16 v26, 0xb4

    aput-byte v11, v3, v26

    const/16 v26, 0xb5

    aput-byte v8, v3, v26

    const/16 v26, 0xb6

    aput-byte v8, v3, v26

    const/16 v26, 0xb7

    aput-byte v11, v3, v26

    const/16 v26, 0xb8

    aput-byte v4, v3, v26

    const/16 v26, 0xb9

    aput-byte v13, v3, v26

    const/16 v26, 0xba

    aput-byte v10, v3, v26

    const/16 v26, 0xbb

    aput-byte v14, v3, v26

    const/16 v26, 0xbc

    aput-byte v15, v3, v26

    const/16 v26, 0xbd

    aput-byte v16, v3, v26

    const/16 v26, 0xbe

    aput-byte v17, v3, v26

    const/16 v26, 0xbf

    aput-byte v8, v3, v26

    const/16 v26, 0xc0

    aput-byte v18, v3, v26

    const/16 v26, 0xc1

    aput-byte v16, v3, v26

    const/16 v26, 0xc2

    aput-byte v10, v3, v26

    const/16 v26, 0xc3

    aput-byte v11, v3, v26

    const/16 v26, 0xc4

    aput-byte v9, v3, v26

    const/16 v26, 0xc5

    aput-byte v19, v3, v26

    const/16 v26, 0xc6

    aput-byte v10, v3, v26

    const/16 v26, 0xc7

    aput-byte v25, v3, v26

    const/16 v26, 0xc8

    aput-byte v19, v3, v26

    const/16 v26, 0xc9

    aput-byte v14, v3, v26

    const/16 v26, 0xca

    aput-byte v11, v3, v26

    const/16 v26, 0xcb

    aput-byte v13, v3, v26

    const/16 v26, 0xcc

    aput-byte v17, v3, v26

    const/16 v26, 0xcd

    aput-byte v13, v3, v26

    const/16 v26, 0xce

    aput-byte v20, v3, v26

    const/16 v26, 0xcf

    aput-byte v8, v3, v26

    const/16 v26, 0xd0

    aput-byte v17, v3, v26

    const/16 v26, 0xd1

    aput-byte v22, v3, v26

    const/16 v26, 0xd2

    aput-byte v18, v3, v26

    const/16 v26, 0xd3

    aput-byte v15, v3, v26

    const/16 v26, 0xd4

    aput-byte v11, v3, v26

    const/16 v26, 0xd5

    aput-byte v5, v3, v26

    const/16 v26, 0xd6

    const/16 v27, 0x22

    aput-byte v27, v3, v26

    const/16 v26, 0xd7

    aput-byte v7, v3, v26

    const/16 v26, 0xd8

    aput-byte v8, v3, v26

    const/16 v26, 0xd9

    aput-byte v9, v3, v26

    const/16 v26, 0xda

    aput-byte v10, v3, v26

    const/16 v26, 0xdb

    aput-byte v11, v3, v26

    const/16 v26, 0xdc

    aput-byte v8, v3, v26

    const/16 v26, 0xdd

    aput-byte v8, v3, v26

    const/16 v26, 0xde

    aput-byte v11, v3, v26

    const/16 v26, 0xdf

    aput-byte v4, v3, v26

    const/16 v26, 0xe0

    aput-byte v13, v3, v26

    const/16 v26, 0xe1

    aput-byte v10, v3, v26

    const/16 v26, 0xe2

    aput-byte v14, v3, v26

    const/16 v26, 0xe3

    aput-byte v15, v3, v26

    const/16 v26, 0xe4

    aput-byte v16, v3, v26

    const/16 v26, 0xe5

    aput-byte v17, v3, v26

    const/16 v26, 0xe6

    aput-byte v8, v3, v26

    const/16 v26, 0xe7

    aput-byte v18, v3, v26

    const/16 v26, 0xe8

    aput-byte v16, v3, v26

    const/16 v26, 0xe9

    aput-byte v10, v3, v26

    const/16 v26, 0xea

    aput-byte v11, v3, v26

    const/16 v26, 0xeb

    aput-byte v9, v3, v26

    const/16 v26, 0xec

    aput-byte v19, v3, v26

    const/16 v26, 0xed

    aput-byte v10, v3, v26

    const/16 v26, 0xee

    aput-byte v20, v3, v26

    const/16 v26, 0xef

    aput-byte v13, v3, v26

    const/16 v26, 0xf0

    aput-byte v17, v3, v26

    const/16 v26, 0xf1

    aput-byte v9, v3, v26

    const/16 v26, 0xf2

    aput-byte v18, v3, v26

    const/16 v26, 0xf3

    aput-byte v19, v3, v26

    const/16 v26, 0xf4

    aput-byte v19, v3, v26

    const/16 v26, 0xf5

    aput-byte v18, v3, v26

    const/16 v26, 0xf6

    aput-byte v8, v3, v26

    const/16 v26, 0xf7

    aput-byte v15, v3, v26

    const/16 v26, 0xf8

    aput-byte v19, v3, v26

    .line 2
    sget-object v12, Ldgp;->b:Ldgp;

    .line 3
    invoke-static {v12, v3}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v3

    check-cast v3, Ldgp;

    sget-object v12, Lbpu;->d:Lbpu;

    .line 4
    invoke-virtual {v1, v2, v3, v12}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;

    move-result-object v2

    sput-object v2, Ldls;->a:Lcei;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    .line 6
    const-string v3, "DirectBoot__enable_direct_boot"

    invoke-virtual {v1, v3, v2}, Lceg;->f(Ljava/lang/String;Z)Lcei;

    move-result-object v2

    sput-object v2, Ldls;->b:Lcei;

    :try_start_1
    const-string v2, "DirectBoot__non_content_provider_direct_boot_aware_packages"

    const/16 v3, 0x160

    new-array v3, v3, [B

    const/4 v12, 0x0

    aput-byte v5, v3, v12

    const/4 v12, 0x1

    const/16 v27, 0x16

    aput-byte v27, v3, v12

    const/4 v12, 0x2

    aput-byte v7, v3, v12

    const/4 v12, 0x3

    aput-byte v8, v3, v12

    const/4 v12, 0x4

    aput-byte v9, v3, v12

    const/4 v12, 0x5

    aput-byte v10, v3, v12

    const/4 v12, 0x6

    aput-byte v11, v3, v12

    const/4 v12, 0x7

    aput-byte v8, v3, v12

    const/16 v12, 0x8

    aput-byte v8, v3, v12

    const/16 v12, 0x9

    aput-byte v11, v3, v12

    aput-byte v4, v3, v5

    const/16 v12, 0xb

    aput-byte v13, v3, v12

    const/16 v12, 0xc

    aput-byte v10, v3, v12

    const/16 v12, 0xd

    aput-byte v14, v3, v12

    const/16 v12, 0xe

    aput-byte v15, v3, v12

    const/16 v12, 0xf

    aput-byte v16, v3, v12

    const/16 v12, 0x10

    aput-byte v17, v3, v12

    const/16 v12, 0x11

    aput-byte v8, v3, v12

    const/16 v12, 0x12

    aput-byte v18, v3, v12

    const/16 v12, 0x13

    aput-byte v16, v3, v12

    const/16 v12, 0x14

    aput-byte v10, v3, v12

    const/16 v12, 0x15

    aput-byte v11, v3, v12

    const/16 v12, 0x16

    aput-byte v9, v3, v12

    const/16 v12, 0x17

    aput-byte v19, v3, v12

    const/16 v12, 0x18

    aput-byte v5, v3, v12

    const/16 v12, 0x19

    const/16 v27, 0x27

    aput-byte v27, v3, v12

    const/16 v12, 0x1a

    aput-byte v7, v3, v12

    const/16 v12, 0x1b

    aput-byte v8, v3, v12

    const/16 v12, 0x1c

    aput-byte v9, v3, v12

    const/16 v12, 0x1d

    aput-byte v10, v3, v12

    const/16 v12, 0x1e

    aput-byte v11, v3, v12

    const/16 v12, 0x1f

    aput-byte v8, v3, v12

    aput-byte v8, v3, v6

    const/16 v12, 0x21

    aput-byte v11, v3, v12

    const/16 v12, 0x22

    aput-byte v4, v3, v12

    const/16 v12, 0x23

    aput-byte v13, v3, v12

    const/16 v12, 0x24

    aput-byte v10, v3, v12

    const/16 v12, 0x25

    aput-byte v14, v3, v12

    const/16 v12, 0x26

    aput-byte v15, v3, v12

    const/16 v12, 0x27

    aput-byte v16, v3, v12

    const/16 v12, 0x28

    aput-byte v17, v3, v12

    const/16 v12, 0x29

    aput-byte v8, v3, v12

    const/16 v12, 0x2a

    aput-byte v18, v3, v12

    const/16 v12, 0x2b

    aput-byte v16, v3, v12

    const/16 v12, 0x2c

    aput-byte v10, v3, v12

    const/16 v12, 0x2d

    aput-byte v11, v3, v12

    aput-byte v9, v3, v10

    const/16 v12, 0x2f

    aput-byte v19, v3, v12

    const/16 v12, 0x30

    aput-byte v10, v3, v12

    const/16 v12, 0x31

    aput-byte v20, v3, v12

    const/16 v12, 0x32

    aput-byte v4, v3, v12

    const/16 v12, 0x33

    aput-byte v14, v3, v12

    const/16 v12, 0x34

    aput-byte v23, v3, v12

    const/16 v12, 0x35

    aput-byte v4, v3, v12

    const/16 v12, 0x36

    aput-byte v8, v3, v12

    const/16 v12, 0x37

    aput-byte v11, v3, v12

    const/16 v12, 0x38

    aput-byte v10, v3, v12

    const/16 v12, 0x39

    aput-byte v25, v3, v12

    const/16 v12, 0x3a

    aput-byte v20, v3, v12

    const/16 v12, 0x3b

    aput-byte v4, v3, v12

    const/16 v12, 0x3c

    aput-byte v8, v3, v12

    const/16 v12, 0x3d

    aput-byte v14, v3, v12

    const/16 v12, 0x3e

    aput-byte v16, v3, v12

    const/16 v12, 0x3f

    aput-byte v13, v3, v12

    const/16 v12, 0x40

    aput-byte v17, v3, v12

    const/16 v12, 0x41

    aput-byte v5, v3, v12

    const/16 v12, 0x42

    aput-byte v6, v3, v12

    const/16 v6, 0x43

    aput-byte v7, v3, v6

    const/16 v6, 0x44

    aput-byte v8, v3, v6

    const/16 v6, 0x45

    aput-byte v9, v3, v6

    const/16 v6, 0x46

    aput-byte v10, v3, v6

    const/16 v6, 0x47

    aput-byte v11, v3, v6

    const/16 v6, 0x48

    aput-byte v8, v3, v6

    const/16 v6, 0x49

    aput-byte v8, v3, v6

    const/16 v6, 0x4a

    aput-byte v11, v3, v6

    const/16 v6, 0x4b

    aput-byte v4, v3, v6

    const/16 v6, 0x4c

    aput-byte v13, v3, v6

    const/16 v6, 0x4d

    aput-byte v10, v3, v6

    const/16 v6, 0x4e

    aput-byte v14, v3, v6

    const/16 v6, 0x4f

    aput-byte v15, v3, v6

    const/16 v6, 0x50

    aput-byte v16, v3, v6

    const/16 v6, 0x51

    aput-byte v17, v3, v6

    const/16 v6, 0x52

    aput-byte v8, v3, v6

    const/16 v6, 0x53

    aput-byte v18, v3, v6

    const/16 v6, 0x54

    aput-byte v16, v3, v6

    const/16 v6, 0x55

    aput-byte v10, v3, v6

    const/16 v6, 0x56

    aput-byte v11, v3, v6

    const/16 v6, 0x57

    aput-byte v9, v3, v6

    const/16 v6, 0x58

    aput-byte v19, v3, v6

    const/16 v6, 0x59

    aput-byte v10, v3, v6

    const/16 v6, 0x5a

    aput-byte v20, v3, v6

    const/16 v6, 0x5b

    aput-byte v21, v3, v6

    const/16 v6, 0x5c

    aput-byte v13, v3, v6

    const/16 v6, 0x5d

    aput-byte v15, v3, v6

    const/16 v6, 0x5e

    aput-byte v8, v3, v6

    const/16 v6, 0x5f

    aput-byte v22, v3, v6

    const/16 v6, 0x60

    aput-byte v23, v3, v6

    aput-byte v20, v3, v14

    const/16 v6, 0x62

    aput-byte v13, v3, v6

    aput-byte v5, v3, v7

    const/16 v6, 0x1d

    aput-byte v6, v3, v16

    aput-byte v7, v3, v13

    aput-byte v8, v3, v24

    aput-byte v9, v3, v11

    aput-byte v10, v3, v21

    aput-byte v11, v3, v18

    const/16 v6, 0x6a

    aput-byte v8, v3, v6

    const/16 v6, 0x6b

    aput-byte v8, v3, v6

    aput-byte v11, v3, v4

    aput-byte v4, v3, v9

    aput-byte v13, v3, v15

    aput-byte v10, v3, v8

    aput-byte v20, v3, v20

    const/16 v6, 0x71

    aput-byte v17, v3, v6

    aput-byte v8, v3, v17

    aput-byte v7, v3, v19

    aput-byte v13, v3, v22

    aput-byte v19, v3, v25

    const/16 v6, 0x76

    aput-byte v19, v3, v6

    const/16 v6, 0x77

    aput-byte v10, v3, v6

    const/16 v6, 0x78

    aput-byte v19, v3, v6

    aput-byte v22, v3, v23

    const/16 v6, 0x7a

    aput-byte v14, v3, v6

    const/16 v6, 0x7b

    const/16 v12, 0x62

    aput-byte v12, v3, v6

    const/16 v6, 0x7c

    aput-byte v4, v3, v6

    const/16 v6, 0x7d

    aput-byte v13, v3, v6

    const/16 v6, 0x7e

    aput-byte v10, v3, v6

    const/16 v6, 0x7f

    aput-byte v20, v3, v6

    const/16 v6, 0x80

    aput-byte v16, v3, v6

    const/16 v6, 0x81

    aput-byte v19, v3, v6

    const/16 v6, 0x82

    aput-byte v5, v3, v6

    const/16 v6, 0x83

    const/16 v12, 0x16

    aput-byte v12, v3, v6

    const/16 v6, 0x84

    aput-byte v7, v3, v6

    const/16 v6, 0x85

    aput-byte v8, v3, v6

    const/16 v6, 0x86

    aput-byte v9, v3, v6

    const/16 v6, 0x87

    aput-byte v10, v3, v6

    const/16 v6, 0x88

    aput-byte v11, v3, v6

    const/16 v6, 0x89

    aput-byte v8, v3, v6

    const/16 v6, 0x8a

    aput-byte v8, v3, v6

    const/16 v6, 0x8b

    aput-byte v11, v3, v6

    const/16 v6, 0x8c

    aput-byte v4, v3, v6

    const/16 v6, 0x8d

    aput-byte v13, v3, v6

    const/16 v6, 0x8e

    aput-byte v10, v3, v6

    const/16 v6, 0x8f

    aput-byte v22, v3, v6

    const/16 v6, 0x90

    aput-byte v18, v3, v6

    const/16 v6, 0x91

    const/16 v12, 0x6b

    aput-byte v12, v3, v6

    const/16 v6, 0x92

    aput-byte v22, v3, v6

    const/16 v6, 0x93

    aput-byte v8, v3, v6

    const/16 v6, 0x94

    const/16 v12, 0x6b

    aput-byte v12, v3, v6

    const/16 v6, 0x95

    aput-byte v10, v3, v6

    const/16 v6, 0x96

    aput-byte v22, v3, v6

    const/16 v6, 0x97

    aput-byte v13, v3, v6

    const/16 v6, 0x98

    aput-byte v19, v3, v6

    const/16 v6, 0x99

    aput-byte v22, v3, v6

    const/16 v6, 0x9a

    aput-byte v5, v3, v6

    const/16 v6, 0x9b

    const/16 v12, 0x28

    aput-byte v12, v3, v6

    const/16 v6, 0x9c

    aput-byte v7, v3, v6

    const/16 v6, 0x9d

    aput-byte v8, v3, v6

    const/16 v6, 0x9e

    aput-byte v9, v3, v6

    const/16 v6, 0x9f

    aput-byte v10, v3, v6

    const/16 v6, 0xa0

    aput-byte v11, v3, v6

    const/16 v6, 0xa1

    aput-byte v8, v3, v6

    const/16 v6, 0xa2

    aput-byte v8, v3, v6

    const/16 v6, 0xa3

    aput-byte v11, v3, v6

    const/16 v6, 0xa4

    aput-byte v4, v3, v6

    const/16 v6, 0xa5

    aput-byte v13, v3, v6

    const/16 v6, 0xa6

    aput-byte v10, v3, v6

    const/16 v6, 0xa7

    aput-byte v14, v3, v6

    const/16 v6, 0xa8

    aput-byte v15, v3, v6

    const/16 v6, 0xa9

    aput-byte v16, v3, v6

    const/16 v6, 0xaa

    aput-byte v17, v3, v6

    const/16 v6, 0xab

    aput-byte v8, v3, v6

    const/16 v6, 0xac

    aput-byte v18, v3, v6

    const/16 v6, 0xad

    aput-byte v16, v3, v6

    const/16 v6, 0xae

    aput-byte v10, v3, v6

    const/16 v6, 0xaf

    aput-byte v14, v3, v6

    const/16 v6, 0xb0

    aput-byte v20, v3, v6

    const/16 v6, 0xb1

    aput-byte v20, v3, v6

    const/16 v6, 0xb2

    aput-byte v19, v3, v6

    const/16 v6, 0xb3

    aput-byte v10, v3, v6

    const/16 v6, 0xb4

    const/16 v12, 0x77

    aput-byte v12, v3, v6

    const/16 v6, 0xb5

    aput-byte v13, v3, v6

    const/16 v6, 0xb6

    aput-byte v4, v3, v6

    const/16 v6, 0xb7

    aput-byte v4, v3, v6

    const/16 v6, 0xb8

    const/16 v12, 0x62

    aput-byte v12, v3, v6

    const/16 v6, 0xb9

    aput-byte v13, v3, v6

    const/16 v6, 0xba

    aput-byte v18, v3, v6

    const/16 v6, 0xbb

    aput-byte v15, v3, v6

    const/16 v6, 0xbc

    aput-byte v11, v3, v6

    const/16 v6, 0xbd

    aput-byte v10, v3, v6

    const/16 v6, 0xbe

    aput-byte v16, v3, v6

    const/16 v6, 0xbf

    aput-byte v13, v3, v6

    const/16 v6, 0xc0

    const/16 v12, 0x76

    aput-byte v12, v3, v6

    const/16 v6, 0xc1

    aput-byte v18, v3, v6

    const/16 v6, 0xc2

    aput-byte v7, v3, v6

    const/16 v6, 0xc3

    aput-byte v13, v3, v6

    const/16 v6, 0xc4

    aput-byte v5, v3, v6

    const/16 v6, 0xc5

    const/16 v12, 0x21

    aput-byte v12, v3, v6

    const/16 v6, 0xc6

    aput-byte v7, v3, v6

    const/16 v6, 0xc7

    aput-byte v8, v3, v6

    const/16 v6, 0xc8

    aput-byte v9, v3, v6

    const/16 v6, 0xc9

    aput-byte v10, v3, v6

    const/16 v6, 0xca

    aput-byte v11, v3, v6

    const/16 v6, 0xcb

    aput-byte v8, v3, v6

    const/16 v6, 0xcc

    aput-byte v8, v3, v6

    const/16 v6, 0xcd

    aput-byte v11, v3, v6

    const/16 v6, 0xce

    aput-byte v4, v3, v6

    const/16 v6, 0xcf

    aput-byte v13, v3, v6

    const/16 v6, 0xd0

    aput-byte v10, v3, v6

    const/16 v6, 0xd1

    aput-byte v14, v3, v6

    const/16 v6, 0xd2

    aput-byte v15, v3, v6

    const/16 v6, 0xd3

    aput-byte v16, v3, v6

    const/16 v6, 0xd4

    aput-byte v17, v3, v6

    const/16 v6, 0xd5

    aput-byte v8, v3, v6

    const/16 v6, 0xd6

    aput-byte v18, v3, v6

    const/16 v6, 0xd7

    aput-byte v16, v3, v6

    const/16 v6, 0xd8

    aput-byte v10, v3, v6

    const/16 v6, 0xd9

    aput-byte v14, v3, v6

    const/16 v6, 0xda

    aput-byte v20, v3, v6

    const/16 v6, 0xdb

    aput-byte v20, v3, v6

    const/16 v6, 0xdc

    aput-byte v19, v3, v6

    const/16 v6, 0xdd

    aput-byte v10, v3, v6

    const/16 v6, 0xde

    aput-byte v19, v3, v6

    const/16 v6, 0xdf

    aput-byte v14, v3, v6

    const/16 v6, 0xe0

    aput-byte v24, v3, v6

    const/16 v6, 0xe1

    aput-byte v13, v3, v6

    const/16 v6, 0xe2

    aput-byte v22, v3, v6

    const/16 v6, 0xe3

    aput-byte v23, v3, v6

    const/16 v6, 0xe4

    aput-byte v21, v3, v6

    const/16 v6, 0xe5

    aput-byte v25, v3, v6

    const/16 v6, 0xe6

    const/16 v12, 0x62

    aput-byte v12, v3, v6

    const/16 v6, 0xe7

    aput-byte v5, v3, v6

    const/16 v6, 0xe8

    const/16 v12, 0x2a

    aput-byte v12, v3, v6

    const/16 v6, 0xe9

    aput-byte v7, v3, v6

    const/16 v6, 0xea

    aput-byte v8, v3, v6

    const/16 v6, 0xeb

    aput-byte v9, v3, v6

    const/16 v6, 0xec

    aput-byte v10, v3, v6

    const/16 v6, 0xed

    aput-byte v11, v3, v6

    const/16 v6, 0xee

    aput-byte v8, v3, v6

    const/16 v6, 0xef

    aput-byte v8, v3, v6

    const/16 v6, 0xf0

    aput-byte v11, v3, v6

    const/16 v6, 0xf1

    aput-byte v4, v3, v6

    const/16 v6, 0xf2

    aput-byte v13, v3, v6

    const/16 v6, 0xf3

    aput-byte v10, v3, v6

    const/16 v6, 0xf4

    aput-byte v14, v3, v6

    const/16 v6, 0xf5

    aput-byte v15, v3, v6

    const/16 v6, 0xf6

    aput-byte v16, v3, v6

    const/16 v6, 0xf7

    aput-byte v17, v3, v6

    const/16 v6, 0xf8

    aput-byte v8, v3, v6

    const/16 v6, 0xf9

    aput-byte v18, v3, v6

    const/16 v6, 0xfa

    aput-byte v16, v3, v6

    const/16 v6, 0xfb

    aput-byte v10, v3, v6

    const/16 v6, 0xfc

    aput-byte v14, v3, v6

    const/16 v6, 0xfd

    aput-byte v20, v3, v6

    const/16 v6, 0xfe

    aput-byte v20, v3, v6

    const/16 v6, 0xff

    aput-byte v19, v3, v6

    const/16 v6, 0x100

    aput-byte v10, v3, v6

    const/16 v6, 0x101

    aput-byte v19, v3, v6

    const/16 v6, 0x102

    aput-byte v14, v3, v6

    const/16 v6, 0x103

    aput-byte v24, v3, v6

    const/16 v6, 0x104

    aput-byte v13, v3, v6

    const/16 v6, 0x105

    aput-byte v22, v3, v6

    const/16 v6, 0x106

    aput-byte v23, v3, v6

    const/16 v6, 0x107

    aput-byte v21, v3, v6

    const/16 v6, 0x108

    aput-byte v25, v3, v6

    const/16 v6, 0x109

    const/16 v12, 0x62

    aput-byte v12, v3, v6

    const/16 v6, 0x10a

    aput-byte v10, v3, v6

    const/16 v6, 0x10b

    aput-byte v25, v3, v6

    const/16 v6, 0x10c

    aput-byte v18, v3, v6

    const/16 v6, 0x10d

    aput-byte v16, v3, v6

    const/16 v6, 0x10e

    aput-byte v13, v3, v6

    const/16 v6, 0x10f

    const/16 v12, 0x76

    aput-byte v12, v3, v6

    const/16 v6, 0x110

    aput-byte v18, v3, v6

    const/16 v6, 0x111

    aput-byte v7, v3, v6

    const/16 v6, 0x112

    aput-byte v13, v3, v6

    const/16 v6, 0x113

    aput-byte v5, v3, v6

    const/16 v6, 0x114

    const/16 v12, 0x2f

    aput-byte v12, v3, v6

    const/16 v6, 0x115

    aput-byte v7, v3, v6

    const/16 v6, 0x116

    aput-byte v8, v3, v6

    const/16 v6, 0x117

    aput-byte v9, v3, v6

    const/16 v6, 0x118

    aput-byte v10, v3, v6

    const/16 v6, 0x119

    aput-byte v11, v3, v6

    const/16 v6, 0x11a

    aput-byte v8, v3, v6

    const/16 v6, 0x11b

    aput-byte v8, v3, v6

    const/16 v6, 0x11c

    aput-byte v11, v3, v6

    const/16 v6, 0x11d

    aput-byte v4, v3, v6

    const/16 v6, 0x11e

    aput-byte v13, v3, v6

    const/16 v6, 0x11f

    aput-byte v10, v3, v6

    const/16 v6, 0x120

    aput-byte v14, v3, v6

    const/16 v6, 0x121

    aput-byte v15, v3, v6

    const/16 v6, 0x122

    aput-byte v16, v3, v6

    const/16 v6, 0x123

    aput-byte v17, v3, v6

    const/16 v6, 0x124

    aput-byte v8, v3, v6

    const/16 v6, 0x125

    aput-byte v18, v3, v6

    const/16 v6, 0x126

    aput-byte v16, v3, v6

    const/16 v6, 0x127

    aput-byte v10, v3, v6

    const/16 v6, 0x128

    aput-byte v4, v3, v6

    const/16 v6, 0x129

    aput-byte v18, v3, v6

    const/16 v6, 0x12a

    const/16 v12, 0x62

    aput-byte v12, v3, v6

    const/16 v6, 0x12b

    aput-byte v17, v3, v6

    const/16 v6, 0x12c

    aput-byte v14, v3, v6

    const/16 v6, 0x12d

    aput-byte v17, v3, v6

    const/16 v6, 0x12e

    aput-byte v18, v3, v6

    const/16 v6, 0x12f

    aput-byte v13, v3, v6

    const/16 v6, 0x130

    aput-byte v19, v3, v6

    const/16 v6, 0x131

    aput-byte v10, v3, v6

    const/16 v6, 0x132

    aput-byte v20, v3, v6

    const/16 v6, 0x133

    aput-byte v13, v3, v6

    const/16 v6, 0x134

    aput-byte v17, v3, v6

    const/16 v6, 0x135

    aput-byte v24, v3, v6

    const/16 v6, 0x136

    aput-byte v8, v3, v6

    const/16 v6, 0x137

    aput-byte v17, v3, v6

    const/16 v6, 0x138

    aput-byte v9, v3, v6

    const/16 v6, 0x139

    aput-byte v14, v3, v6

    const/16 v6, 0x13a

    aput-byte v15, v3, v6

    const/16 v6, 0x13b

    aput-byte v7, v3, v6

    const/16 v6, 0x13c

    aput-byte v13, v3, v6

    const/16 v6, 0x13d

    aput-byte v10, v3, v6

    const/16 v6, 0x13e

    aput-byte v20, v3, v6

    const/16 v6, 0x13f

    aput-byte v17, v3, v6

    const/16 v6, 0x140

    aput-byte v18, v3, v6

    const/16 v6, 0x141

    aput-byte v9, v3, v6

    const/16 v6, 0x142

    aput-byte v13, v3, v6

    const/16 v6, 0x143

    aput-byte v19, v3, v6

    const/16 v6, 0x144

    aput-byte v5, v3, v6

    const/16 v5, 0x145

    const/16 v6, 0x1a

    aput-byte v6, v3, v5

    const/16 v5, 0x146

    aput-byte v7, v3, v5

    const/16 v5, 0x147

    aput-byte v8, v3, v5

    const/16 v5, 0x148

    aput-byte v9, v3, v5

    const/16 v5, 0x149

    aput-byte v10, v3, v5

    const/16 v5, 0x14a

    aput-byte v11, v3, v5

    const/16 v5, 0x14b

    aput-byte v8, v3, v5

    const/16 v5, 0x14c

    aput-byte v8, v3, v5

    const/16 v5, 0x14d

    aput-byte v11, v3, v5

    const/16 v5, 0x14e

    aput-byte v4, v3, v5

    const/16 v4, 0x14f

    aput-byte v13, v3, v4

    const/16 v4, 0x150

    aput-byte v10, v3, v4

    const/16 v4, 0x151

    aput-byte v14, v3, v4

    const/16 v4, 0x152

    aput-byte v15, v3, v4

    const/16 v4, 0x153

    aput-byte v16, v3, v4

    const/16 v4, 0x154

    aput-byte v17, v3, v4

    const/16 v4, 0x155

    aput-byte v8, v3, v4

    const/16 v4, 0x156

    aput-byte v18, v3, v4

    const/16 v4, 0x157

    aput-byte v16, v3, v4

    const/16 v4, 0x158

    aput-byte v10, v3, v4

    const/16 v4, 0x159

    aput-byte v7, v3, v4

    const/16 v4, 0x15a

    aput-byte v14, v3, v4

    const/16 v4, 0x15b

    aput-byte v17, v3, v4

    const/16 v4, 0x15c

    aput-byte v17, v3, v4

    const/16 v4, 0x15d

    aput-byte v18, v3, v4

    const/16 v4, 0x15e

    aput-byte v13, v3, v4

    const/16 v4, 0x15f

    aput-byte v17, v3, v4

    sget-object v4, Ldgp;->b:Ldgp;

    .line 7
    invoke-static {v4, v3}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v3

    check-cast v3, Ldgp;

    .line 5
    sget-object v4, Lbpu;->d:Lbpu;

    .line 8
    invoke-virtual {v1, v2, v3, v4}, Lceg;->g(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 7
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    const-string v2, "Could not parse proto flag \"DirectBoot__non_content_provider_direct_boot_aware_packages\""

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    .line 5
    const-string v2, "Could not parse proto flag \"DirectBoot__direct_boot_aware_packages\""

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldgp;
    .locals 1

    .line 1
    sget-object v0, Ldls;->a:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgp;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Ldls;->b:Lcei;

    invoke-virtual {v0}, Lcei;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
