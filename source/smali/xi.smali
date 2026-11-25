.class public final Lxi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[I

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:Landroid/util/SparseIntArray;


# instance fields
.field public final b:Ljava/util/HashMap;

.field private final e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lxi;->a:[I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lxi;->c:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    .line 2
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Lxi;->d:Landroid/util/SparseIntArray;

    .line 3
    sget-object v3, Lxm;->a:[I

    const/16 v3, 0x51

    const/16 v4, 0x19

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    const/16 v4, 0x52

    const/16 v5, 0x1a

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 5
    const/16 v5, 0x54

    const/16 v6, 0x1d

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 6
    const/16 v6, 0x55

    const/16 v7, 0x1e

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 7
    const/16 v6, 0x5b

    const/16 v7, 0x24

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 8
    const/16 v6, 0x5a

    const/16 v7, 0x23

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    const/16 v6, 0x3e

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 10
    const/16 v6, 0x3d

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    const/16 v6, 0x39

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 12
    const/16 v7, 0x3b

    const/16 v8, 0x5b

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    const/16 v8, 0x3a

    const/16 v9, 0x5c

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    const/16 v9, 0x64

    const/4 v10, 0x6

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    const/16 v9, 0x65

    const/4 v11, 0x7

    invoke-virtual {v1, v9, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    const/16 v9, 0x45

    const/16 v12, 0x11

    invoke-virtual {v1, v9, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 17
    const/16 v12, 0x46

    const/16 v13, 0x12

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    const/16 v13, 0x47

    const/16 v14, 0x13

    invoke-virtual {v1, v13, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 19
    const/4 v14, 0x0

    const/16 v15, 0x1b

    invoke-virtual {v1, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 20
    const/16 v14, 0x56

    const/16 v15, 0x20

    invoke-virtual {v1, v14, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    const/16 v15, 0x57

    const/16 v14, 0x21

    invoke-virtual {v1, v15, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    const/16 v14, 0x44

    const/16 v5, 0xa

    invoke-virtual {v1, v14, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    const/16 v5, 0x43

    const/16 v4, 0x9

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 24
    const/16 v4, 0x69

    const/16 v3, 0xd

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    const/16 v4, 0x6c

    const/16 v13, 0x10

    invoke-virtual {v1, v4, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 26
    const/16 v4, 0x6a

    const/16 v12, 0xe

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    const/16 v4, 0x67

    const/16 v9, 0xb

    invoke-virtual {v1, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    const/16 v4, 0x6b

    const/16 v9, 0xf

    invoke-virtual {v1, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    const/16 v4, 0x68

    const/16 v14, 0xc

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    const/16 v4, 0x5e

    const/16 v14, 0x28

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    const/16 v4, 0x4f

    const/16 v14, 0x27

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    const/16 v14, 0x4e

    const/16 v4, 0x29

    invoke-virtual {v1, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    const/16 v4, 0x5d

    const/16 v14, 0x2a

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    const/16 v4, 0x4d

    const/16 v14, 0x14

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    const/16 v4, 0x5c

    const/16 v14, 0x25

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 36
    const/16 v4, 0x42

    const/4 v14, 0x5

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    const/16 v4, 0x50

    invoke-virtual {v1, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    const/16 v4, 0x59

    invoke-virtual {v1, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    const/16 v4, 0x53

    invoke-virtual {v1, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    const/16 v4, 0x3c

    invoke-virtual {v1, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    const/16 v4, 0x38

    invoke-virtual {v1, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 42
    const/4 v4, 0x5

    const/16 v14, 0x18

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 43
    const/16 v4, 0x1c

    invoke-virtual {v1, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    const/16 v4, 0x17

    const/16 v14, 0x1f

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 45
    const/16 v4, 0x18

    const/16 v14, 0x8

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    const/16 v4, 0x22

    invoke-virtual {v1, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    const/16 v4, 0x8

    const/4 v14, 0x2

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 48
    const/16 v4, 0x17

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    const/4 v4, 0x4

    const/16 v14, 0x15

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    const/16 v4, 0x5f

    const/16 v14, 0x5f

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    const/16 v4, 0x48

    const/16 v14, 0x60

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    const/4 v4, 0x2

    const/16 v14, 0x16

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    const/16 v4, 0x2b

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    const/16 v4, 0x1a

    const/16 v14, 0x2c

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    const/16 v4, 0x15

    const/16 v14, 0x2d

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 56
    const/16 v4, 0x16

    const/16 v14, 0x2e

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 57
    const/16 v4, 0x14

    const/16 v14, 0x3c

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    const/16 v4, 0x12

    const/16 v14, 0x2f

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 59
    const/16 v4, 0x13

    const/16 v14, 0x30

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    const/16 v4, 0x31

    invoke-virtual {v1, v12, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 61
    const/16 v4, 0x32

    invoke-virtual {v1, v9, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    const/16 v4, 0x33

    invoke-virtual {v1, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    const/16 v4, 0x11

    const/16 v14, 0x34

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 64
    const/16 v4, 0x19

    const/16 v14, 0x35

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 65
    const/16 v4, 0x60

    const/16 v14, 0x36

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 66
    const/16 v4, 0x49

    const/16 v14, 0x37

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 67
    const/16 v4, 0x61

    const/16 v14, 0x38

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 68
    const/16 v4, 0x4a

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 69
    const/16 v4, 0x62

    invoke-virtual {v1, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 70
    const/16 v4, 0x4b

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    const/16 v4, 0x3f

    const/16 v14, 0x3d

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    const/16 v4, 0x41

    const/16 v14, 0x3e

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 73
    const/16 v4, 0x40

    const/16 v14, 0x3f

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 74
    const/16 v4, 0x1c

    const/16 v14, 0x40

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 75
    const/16 v4, 0x78

    const/16 v14, 0x41

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 76
    const/16 v4, 0x23

    const/16 v14, 0x42

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 77
    const/16 v4, 0x79

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 78
    const/16 v4, 0x70

    const/16 v14, 0x4f

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 79
    const/4 v4, 0x1

    const/16 v14, 0x26

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    const/16 v4, 0x6f

    const/16 v14, 0x44

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    const/16 v4, 0x63

    const/16 v14, 0x45

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 82
    const/16 v4, 0x4c

    const/16 v14, 0x46

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 83
    const/16 v4, 0x6e

    const/16 v14, 0x61

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 84
    const/16 v4, 0x20

    const/16 v14, 0x47

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 85
    const/16 v4, 0x1e

    const/16 v14, 0x48

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 86
    const/16 v4, 0x1f

    const/16 v14, 0x49

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 87
    const/16 v4, 0x21

    const/16 v14, 0x4a

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 88
    const/16 v4, 0x1d

    const/16 v14, 0x4b

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    const/16 v4, 0x71

    const/16 v14, 0x4c

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 90
    const/16 v4, 0x58

    const/16 v14, 0x4d

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 91
    const/16 v4, 0x7a

    const/16 v14, 0x4e

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 92
    const/16 v4, 0x37

    const/16 v14, 0x50

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 93
    const/16 v4, 0x36

    const/16 v14, 0x51

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 94
    const/16 v4, 0x73

    const/16 v14, 0x52

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 95
    const/16 v4, 0x77

    const/16 v14, 0x53

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 96
    const/16 v4, 0x76

    const/16 v14, 0x54

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 97
    const/16 v4, 0x75

    const/16 v5, 0x55

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    const/16 v4, 0x74

    const/16 v5, 0x56

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 100
    invoke-virtual {v2, v14, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 101
    const/4 v1, 0x0

    const/16 v4, 0x1b

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 102
    const/16 v1, 0x58

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 103
    const/16 v1, 0x5b

    invoke-virtual {v2, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 104
    const/16 v1, 0x59

    invoke-virtual {v2, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 105
    const/16 v1, 0xb

    const/16 v4, 0x56

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 106
    const/16 v1, 0x5a

    invoke-virtual {v2, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    const/16 v1, 0xc

    invoke-virtual {v2, v15, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    const/16 v1, 0x4d

    const/16 v4, 0x28

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 109
    const/16 v1, 0x27

    const/16 v4, 0x46

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 110
    const/16 v1, 0x29

    const/16 v4, 0x45

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 111
    const/16 v1, 0x4c

    const/16 v4, 0x2a

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 112
    const/16 v1, 0x14

    const/16 v4, 0x44

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 113
    const/16 v1, 0x4b

    const/16 v4, 0x25

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 114
    const/4 v1, 0x5

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 115
    const/16 v1, 0x47

    invoke-virtual {v2, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 116
    const/16 v1, 0x4a

    invoke-virtual {v2, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 117
    const/16 v1, 0x48

    invoke-virtual {v2, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 118
    const/16 v1, 0x38

    invoke-virtual {v2, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 119
    const/16 v1, 0x37

    invoke-virtual {v2, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 120
    const/4 v1, 0x5

    const/16 v4, 0x18

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 121
    const/16 v1, 0x1c

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 122
    const/16 v1, 0x17

    const/16 v4, 0x1f

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 123
    const/16 v1, 0x18

    const/16 v4, 0x8

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 124
    const/16 v1, 0x22

    invoke-virtual {v2, v10, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 125
    const/16 v1, 0x8

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 126
    const/16 v1, 0x17

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 127
    const/4 v0, 0x4

    const/16 v1, 0x15

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 128
    const/16 v0, 0x5f

    const/16 v1, 0x4e

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 129
    const/16 v0, 0x3f

    const/16 v1, 0x60

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 130
    const/4 v0, 0x2

    const/16 v1, 0x16

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 131
    const/16 v0, 0x2b

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 132
    const/16 v0, 0x1a

    const/16 v1, 0x2c

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 133
    const/16 v0, 0x15

    const/16 v1, 0x2d

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 134
    const/16 v0, 0x16

    const/16 v1, 0x2e

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 135
    const/16 v0, 0x14

    const/16 v1, 0x3c

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 136
    const/16 v0, 0x12

    const/16 v1, 0x2f

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 137
    const/16 v0, 0x13

    const/16 v1, 0x30

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 138
    const/16 v0, 0x31

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 139
    const/16 v0, 0x32

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 140
    const/16 v0, 0x33

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 141
    const/16 v0, 0x11

    const/16 v1, 0x34

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 142
    const/16 v0, 0x19

    const/16 v1, 0x35

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 143
    const/16 v0, 0x36

    const/16 v1, 0x4f

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 144
    const/16 v0, 0x40

    const/16 v1, 0x37

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 145
    const/16 v0, 0x50

    const/16 v1, 0x38

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 146
    const/16 v0, 0x41

    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 147
    const/16 v0, 0x51

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 148
    const/16 v0, 0x42

    invoke-virtual {v2, v0, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 149
    const/16 v0, 0x3e

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 150
    const/16 v0, 0x3f

    invoke-virtual {v2, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 151
    const/16 v0, 0x1c

    const/16 v1, 0x40

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 152
    const/16 v0, 0x68

    const/16 v1, 0x41

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 153
    const/16 v0, 0x22

    const/16 v1, 0x42

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 154
    const/16 v0, 0x69

    const/16 v1, 0x43

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 155
    const/16 v0, 0x5f

    const/16 v1, 0x4f

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 156
    const/4 v0, 0x1

    const/16 v1, 0x26

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 157
    const/16 v0, 0x60

    const/16 v1, 0x62

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 158
    const/16 v0, 0x5e

    const/16 v1, 0x44

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 159
    const/16 v0, 0x45

    const/16 v1, 0x52

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 160
    const/16 v0, 0x43

    const/16 v1, 0x46

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 161
    const/16 v0, 0x20

    const/16 v1, 0x47

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 162
    const/16 v0, 0x1e

    const/16 v1, 0x48

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 163
    const/16 v0, 0x1f

    const/16 v1, 0x49

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 164
    const/16 v0, 0x21

    const/16 v1, 0x4a

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 165
    const/16 v0, 0x1d

    const/16 v1, 0x4b

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 166
    const/16 v0, 0x61

    const/16 v1, 0x4c

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 167
    const/16 v0, 0x49

    const/16 v1, 0x4d

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 168
    const/16 v0, 0x6a

    const/16 v1, 0x4e

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 169
    const/16 v0, 0x36

    const/16 v1, 0x50

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 170
    const/16 v0, 0x35

    const/16 v1, 0x51

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 171
    const/16 v0, 0x63

    const/16 v1, 0x52

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 172
    const/16 v0, 0x67

    const/16 v1, 0x53

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 173
    const/16 v0, 0x66

    const/16 v1, 0x54

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 174
    const/16 v0, 0x65

    const/16 v1, 0x55

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 175
    const/16 v0, 0x64

    const/16 v1, 0x56

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 176
    const/16 v0, 0x5d

    const/16 v1, 0x61

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxi;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxi;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method static e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    const/16 v3, 0x15

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 51
    :pswitch_0
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    const/4 v1, 0x0

    goto/16 :goto_3

    .line 63
    :pswitch_1
    nop

    .line 3
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    move v4, p1

    const/4 v1, 0x0

    goto/16 :goto_3

    .line 4
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p2, 0x3d

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez p2, :cond_10

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_10

    .line 6
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v1

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_10

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string v0, "ratio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    instance-of p2, p0, Lwy;

    if-eqz p2, :cond_2

    .line 13
    check-cast p0, Lwy;

    if-nez p3, :cond_1

    .line 14
    iput v4, p0, Lwy;->width:I

    goto :goto_0

    .line 16
    :cond_1
    nop

    .line 15
    iput v4, p0, Lwy;->height:I

    .line 16
    :goto_0
    invoke-static {p0, p1}, Lxi;->f(Lwy;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    instance-of p2, p0, Lxe;

    if-eqz p2, :cond_3

    .line 18
    check-cast p0, Lxe;

    iput-object p1, p0, Lxe;->z:Ljava/lang/String;

    return-void

    .line 19
    :cond_3
    instance-of p2, p0, Lxc;

    if-eqz p2, :cond_10

    .line 20
    check-cast p0, Lxc;

    const/4 p2, 0x5

    .line 21
    invoke-virtual {p0, p2, p1}, Lxc;->c(ILjava/lang/String;)V

    return-void

    :cond_4
    nop

    .line 22
    const-string v0, "weight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 24
    instance-of p2, p0, Lwy;

    if-eqz p2, :cond_6

    .line 25
    check-cast p0, Lwy;

    if-nez p3, :cond_5

    .line 26
    iput v4, p0, Lwy;->width:I

    iput p1, p0, Lwy;->G:F

    return-void

    :cond_5
    nop

    .line 27
    iput v4, p0, Lwy;->height:I

    iput p1, p0, Lwy;->H:F

    return-void

    .line 28
    :cond_6
    instance-of p2, p0, Lxe;

    if-eqz p2, :cond_8

    .line 29
    check-cast p0, Lxe;

    if-nez p3, :cond_7

    iput v4, p0, Lxe;->d:I

    iput p1, p0, Lxe;->V:F

    return-void

    :cond_7
    iput v4, p0, Lxe;->e:I

    iput p1, p0, Lxe;->U:F

    return-void

    .line 30
    :cond_8
    instance-of p2, p0, Lxc;

    if-eqz p2, :cond_10

    .line 31
    check-cast p0, Lxc;

    if-nez p3, :cond_9

    .line 32
    invoke-virtual {p0, v2, v4}, Lxc;->b(II)V

    const/16 p2, 0x27

    .line 33
    invoke-virtual {p0, p2, p1}, Lxc;->a(IF)V

    return-void

    :cond_9
    nop

    .line 34
    invoke-virtual {p0, v3, v4}, Lxc;->b(II)V

    const/16 p2, 0x28

    .line 35
    invoke-virtual {p0, p2, p1}, Lxc;->a(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 50
    :catch_0
    move-exception p0

    return-void

    .line 35
    :cond_a
    nop

    .line 36
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 38
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 39
    instance-of p2, p0, Lwy;

    const/4 v0, 0x2

    if-eqz p2, :cond_c

    .line 40
    check-cast p0, Lwy;

    if-nez p3, :cond_b

    .line 41
    iput v4, p0, Lwy;->width:I

    iput p1, p0, Lwy;->Q:F

    iput v0, p0, Lwy;->K:I

    return-void

    :cond_b
    nop

    .line 42
    iput v4, p0, Lwy;->height:I

    iput p1, p0, Lwy;->R:F

    iput v0, p0, Lwy;->L:I

    return-void

    .line 43
    :cond_c
    instance-of p2, p0, Lxe;

    if-eqz p2, :cond_e

    .line 44
    check-cast p0, Lxe;

    if-nez p3, :cond_d

    iput v4, p0, Lxe;->d:I

    iput p1, p0, Lxe;->ae:F

    iput v0, p0, Lxe;->Y:I

    return-void

    :cond_d
    iput v4, p0, Lxe;->e:I

    iput p1, p0, Lxe;->af:F

    iput v0, p0, Lxe;->Z:I

    return-void

    .line 45
    :cond_e
    instance-of p1, p0, Lxc;

    if-eqz p1, :cond_10

    .line 46
    check-cast p0, Lxc;

    if-nez p3, :cond_f

    .line 47
    invoke-virtual {p0, v2, v4}, Lxc;->b(II)V

    const/16 p1, 0x36

    .line 48
    invoke-virtual {p0, p1, v0}, Lxc;->b(II)V

    return-void

    :cond_f
    nop

    .line 49
    invoke-virtual {p0, v3, v4}, Lxc;->b(II)V

    const/16 p1, 0x37

    .line 50
    invoke-virtual {p0, p1, v0}, Lxc;->b(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    return-void

    .line 4
    :cond_10
    :goto_1
    return-void

    .line 63
    :pswitch_3
    move v4, p1

    goto :goto_2

    :pswitch_4
    nop

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_5
    const/4 v4, -0x2

    .line 52
    :goto_3
    instance-of p1, p0, Lwy;

    if-eqz p1, :cond_12

    .line 53
    check-cast p0, Lwy;

    if-nez p3, :cond_11

    .line 54
    iput v4, p0, Lwy;->width:I

    iput-boolean v1, p0, Lwy;->V:Z

    return-void

    .line 55
    :cond_11
    iput v4, p0, Lwy;->height:I

    iput-boolean v1, p0, Lwy;->W:Z

    return-void

    .line 56
    :cond_12
    instance-of p1, p0, Lxe;

    if-eqz p1, :cond_14

    .line 57
    check-cast p0, Lxe;

    if-nez p3, :cond_13

    iput v4, p0, Lxe;->d:I

    iput-boolean v1, p0, Lxe;->am:Z

    return-void

    :cond_13
    iput v4, p0, Lxe;->e:I

    iput-boolean v1, p0, Lxe;->an:Z

    return-void

    .line 58
    :cond_14
    instance-of p1, p0, Lxc;

    if-eqz p1, :cond_16

    .line 59
    check-cast p0, Lxc;

    if-nez p3, :cond_15

    .line 60
    invoke-virtual {p0, v2, v4}, Lxc;->b(II)V

    const/16 p1, 0x50

    .line 61
    invoke-virtual {p0, p1, v1}, Lxc;->d(IZ)V

    return-void

    :cond_15
    nop

    .line 62
    invoke-virtual {p0, v3, v4}, Lxc;->b(II)V

    const/16 p1, 0x51

    .line 63
    invoke-virtual {p0, p1, v1}, Lxc;->d(IZ)V

    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static f(Lwy;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    .line 2
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3
    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    nop

    .line 4
    const-string v3, "H"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 3
    :goto_0
    add-int/2addr v1, v2

    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_1

    .line 4
    :cond_2
    const/4 v1, -0x1

    .line 3
    :goto_1
    const/16 v5, 0x3a

    .line 5
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    add-int/2addr v0, v4

    if-ge v5, v0, :cond_4

    .line 9
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v5, v2

    .line 10
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 12
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 13
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    if-ne v1, v2, :cond_3

    div-float/2addr v3, v0

    .line 14
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    goto :goto_2

    :cond_3
    div-float/2addr v0, v3

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 8
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 4
    :catch_0
    move-exception v0

    .line 14
    :cond_5
    :goto_2
    iput-object p1, p0, Lwy;->F:Ljava/lang/String;

    return-void
.end method

.method public static final g(Landroid/view/View;Ljava/lang/String;)[I
    .locals 10

    .line 1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_4

    .line 5
    aget-object v5, p1, v3

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Lxl;

    .line 7
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 19
    :catch_0
    move-exception v7

    const/4 v7, 0x0

    .line 8
    :goto_1
    if-nez v7, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 9
    const-string v9, "id"

    invoke-virtual {v7, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-nez v7, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 18
    :cond_1
    nop

    .line 15
    :goto_2
    if-eqz v6, :cond_2

    .line 16
    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 17
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    .line 18
    :cond_2
    const/4 v7, 0x0

    .line 17
    :cond_3
    :goto_3
    add-int/lit8 v5, v4, 0x1

    .line 18
    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_4
    if-eq v4, v5, :cond_5

    .line 19
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method private static final h(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lxd;
    .locals 10

    .line 1
    new-instance v0, Lxd;

    invoke-direct {v0}, Lxd;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    sget-object v1, Lxm;->c:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lxm;->a:[I

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 3
    invoke-static {v0, p0}, Lxi;->i(Lxd;Landroid/content/res/TypedArray;)V

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_8

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/16 v4, 0x17

    if-eq v2, v4, :cond_2

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    iget-object v4, v0, Lxd;->c:Lxf;

    iput-boolean v3, v4, Lxf;->b:Z

    iget-object v4, v0, Lxd;->d:Lxe;

    iput-boolean v3, v4, Lxe;->c:Z

    iget-object v4, v0, Lxd;->b:Lxg;

    iput-boolean v3, v4, Lxg;->a:Z

    iget-object v4, v0, Lxd;->e:Lxh;

    iput-boolean v3, v4, Lxh;->b:Z

    :cond_2
    sget-object v4, Lxi;->c:Landroid/util/SparseIntArray;

    .line 6
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const-string v6, "   "

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    const-string v9, "ConstraintSet"

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->ap:I

    .line 7
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxe;->ap:I

    goto/16 :goto_2

    :pswitch_2
    iget-object v4, v0, Lxd;->d:Lxe;

    .line 8
    invoke-static {v4, p0, v2, v3}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v3, v0, Lxd;->d:Lxe;

    .line 9
    invoke-static {v3, p0, v2, p2}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->T:I

    .line 10
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->T:I

    goto/16 :goto_2

    :pswitch_5
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->M:I

    .line 11
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->M:I

    goto/16 :goto_2

    :pswitch_6
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->s:I

    .line 12
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->s:I

    goto/16 :goto_2

    :pswitch_7
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->r:I

    .line 13
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->r:I

    goto/16 :goto_2

    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 16
    :pswitch_9
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 17
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ne v5, v3, :cond_3

    iget-object v3, v0, Lxd;->c:Lxf;

    .line 18
    invoke-virtual {p0, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v3, Lxf;->o:I

    iget-object v2, v0, Lxd;->c:Lxf;

    iget v3, v2, Lxf;->o:I

    if-eq v3, v7, :cond_7

    iput v6, v2, Lxf;->n:I

    goto/16 :goto_2

    .line 19
    :cond_3
    iget v3, v4, Landroid/util/TypedValue;->type:I

    if-ne v3, v8, :cond_5

    iget-object v3, v0, Lxd;->c:Lxf;

    .line 20
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lxf;->m:Ljava/lang/String;

    iget-object v3, v0, Lxd;->c:Lxf;

    iget-object v3, v3, Lxf;->m:Ljava/lang/String;

    .line 21
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v0, Lxd;->c:Lxf;

    .line 22
    invoke-virtual {p0, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v3, Lxf;->o:I

    iget-object v2, v0, Lxd;->c:Lxf;

    iput v6, v2, Lxf;->n:I

    goto/16 :goto_2

    :cond_4
    iget-object v2, v0, Lxd;->c:Lxf;

    iput v7, v2, Lxf;->n:I

    goto/16 :goto_2

    :cond_5
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->o:I

    .line 23
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v3, Lxf;->n:I

    goto/16 :goto_2

    :pswitch_a
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->k:F

    .line 24
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxf;->k:F

    goto/16 :goto_2

    :pswitch_b
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->l:I

    .line 25
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v3, Lxf;->l:I

    goto/16 :goto_2

    :pswitch_c
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->j:I

    .line 26
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxh;->j:I

    goto/16 :goto_2

    :pswitch_d
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->d:I

    .line 27
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v3, Lxf;->d:I

    goto/16 :goto_2

    :pswitch_e
    iget-object v3, v0, Lxd;->d:Lxe;

    iget-boolean v4, v3, Lxe;->an:Z

    .line 28
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Lxe;->an:Z

    goto/16 :goto_2

    :pswitch_f
    iget-object v3, v0, Lxd;->d:Lxe;

    iget-boolean v4, v3, Lxe;->am:Z

    .line 29
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Lxe;->am:Z

    goto/16 :goto_2

    :pswitch_10
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->h:F

    .line 30
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxf;->h:F

    goto/16 :goto_2

    :pswitch_11
    iget-object v3, v0, Lxd;->b:Lxg;

    iget v4, v3, Lxg;->c:I

    .line 31
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxg;->c:I

    goto/16 :goto_2

    :pswitch_12
    iget-object v3, v0, Lxd;->d:Lxe;

    .line 32
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lxe;->al:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_13
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->f:I

    .line 33
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxf;->f:I

    goto/16 :goto_2

    :pswitch_14
    iget-object v3, v0, Lxd;->d:Lxe;

    iget-boolean v4, v3, Lxe;->ao:Z

    .line 34
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Lxe;->ao:Z

    goto/16 :goto_2

    :pswitch_15
    iget-object v3, v0, Lxd;->d:Lxe;

    .line 35
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lxe;->ak:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_16
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->ah:I

    .line 36
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->ah:I

    goto/16 :goto_2

    :pswitch_17
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->ag:I

    .line 37
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxe;->ag:I

    goto/16 :goto_2

    :pswitch_18
    nop

    .line 38
    const-string v2, "CURRENTLY UNSUPPORTED"

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_19
    iget-object v3, v0, Lxd;->d:Lxe;

    .line 39
    invoke-virtual {p0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->af:F

    goto/16 :goto_2

    :pswitch_1a
    iget-object v3, v0, Lxd;->d:Lxe;

    .line 40
    invoke-virtual {p0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->ae:F

    goto/16 :goto_2

    :pswitch_1b
    iget-object v3, v0, Lxd;->b:Lxg;

    iget v4, v3, Lxg;->e:F

    .line 41
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxg;->e:F

    goto/16 :goto_2

    :pswitch_1c
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->j:F

    .line 42
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxf;->j:F

    goto/16 :goto_2

    :pswitch_1d
    iget-object v3, v0, Lxd;->c:Lxf;

    .line 43
    invoke-virtual {p0, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxf;->g:I

    goto/16 :goto_2

    .line 44
    :pswitch_1e
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 45
    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-ne v3, v8, :cond_6

    iget-object v3, v0, Lxd;->c:Lxf;

    .line 46
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lxf;->e:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    iget-object v3, v0, Lxd;->c:Lxf;

    .line 47
    sget-object v4, Lvt;->a:[Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    aget-object v2, v4, v2

    iput-object v2, v3, Lxf;->e:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_1f
    iget-object v3, v0, Lxd;->c:Lxf;

    iget v4, v3, Lxf;->c:I

    .line 48
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxf;->c:I

    goto/16 :goto_2

    :pswitch_20
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->C:F

    .line 49
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->C:F

    goto/16 :goto_2

    :pswitch_21
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->B:I

    .line 50
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->B:I

    goto/16 :goto_2

    :pswitch_22
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->A:I

    .line 51
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->A:I

    goto/16 :goto_2

    :pswitch_23
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->c:F

    .line 52
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxh;->c:F

    goto/16 :goto_2

    :pswitch_24
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->ad:I

    .line 53
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->ad:I

    goto/16 :goto_2

    :pswitch_25
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->ac:I

    .line 54
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->ac:I

    goto/16 :goto_2

    :pswitch_26
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->ab:I

    .line 55
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->ab:I

    goto/16 :goto_2

    :pswitch_27
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->aa:I

    .line 56
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->aa:I

    goto/16 :goto_2

    :pswitch_28
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->Z:I

    .line 57
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxe;->Z:I

    goto/16 :goto_2

    :pswitch_29
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->Y:I

    .line 58
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxe;->Y:I

    goto/16 :goto_2

    :pswitch_2a
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->m:F

    .line 59
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Lxh;->m:F

    goto/16 :goto_2

    :pswitch_2b
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->l:F

    .line 60
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Lxh;->l:F

    goto/16 :goto_2

    :pswitch_2c
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->k:F

    .line 61
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Lxh;->k:F

    goto/16 :goto_2

    :pswitch_2d
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->i:F

    .line 62
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Lxh;->i:F

    goto/16 :goto_2

    :pswitch_2e
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->h:F

    .line 63
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Lxh;->h:F

    goto/16 :goto_2

    :pswitch_2f
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->g:F

    .line 64
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxh;->g:F

    goto/16 :goto_2

    :pswitch_30
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->f:F

    .line 65
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxh;->f:F

    goto/16 :goto_2

    :pswitch_31
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->e:F

    .line 66
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxh;->e:F

    goto/16 :goto_2

    :pswitch_32
    iget-object v3, v0, Lxd;->e:Lxh;

    iget v4, v3, Lxh;->d:F

    .line 67
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxh;->d:F

    goto/16 :goto_2

    :pswitch_33
    iget-object v4, v0, Lxd;->e:Lxh;

    iput-boolean v3, v4, Lxh;->n:Z

    iget v3, v4, Lxh;->o:F

    .line 68
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v4, Lxh;->o:F

    goto/16 :goto_2

    :pswitch_34
    iget-object v3, v0, Lxd;->b:Lxg;

    iget v4, v3, Lxg;->d:F

    .line 69
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxg;->d:F

    goto/16 :goto_2

    :pswitch_35
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->X:I

    .line 70
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxe;->X:I

    goto/16 :goto_2

    :pswitch_36
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->W:I

    .line 71
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxe;->W:I

    goto/16 :goto_2

    :pswitch_37
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->U:F

    .line 72
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->U:F

    goto/16 :goto_2

    :pswitch_38
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->V:F

    .line 73
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->V:F

    goto/16 :goto_2

    :pswitch_39
    iget v3, v0, Lxd;->a:I

    .line 74
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lxd;->a:I

    goto/16 :goto_2

    :pswitch_3a
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->y:F

    .line 75
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->y:F

    goto/16 :goto_2

    :pswitch_3b
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->m:I

    .line 76
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->m:I

    goto/16 :goto_2

    :pswitch_3c
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->n:I

    .line 77
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->n:I

    goto/16 :goto_2

    :pswitch_3d
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->I:I

    .line 78
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->I:I

    goto/16 :goto_2

    :pswitch_3e
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->u:I

    .line 79
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->u:I

    goto/16 :goto_2

    :pswitch_3f
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->t:I

    .line 80
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->t:I

    goto/16 :goto_2

    :pswitch_40
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->L:I

    .line 81
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->L:I

    goto/16 :goto_2

    :pswitch_41
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->l:I

    .line 82
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->l:I

    goto/16 :goto_2

    :pswitch_42
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->k:I

    .line 83
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->k:I

    goto/16 :goto_2

    :pswitch_43
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->H:I

    .line 84
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->H:I

    goto/16 :goto_2

    :pswitch_44
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->F:I

    .line 85
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxe;->F:I

    goto/16 :goto_2

    :pswitch_45
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->j:I

    .line 86
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->j:I

    goto/16 :goto_2

    :pswitch_46
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->i:I

    .line 87
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->i:I

    goto/16 :goto_2

    :pswitch_47
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->G:I

    .line 88
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->G:I

    goto/16 :goto_2

    :pswitch_48
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->d:I

    .line 89
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Lxe;->d:I

    goto/16 :goto_2

    :pswitch_49
    iget-object v3, v0, Lxd;->b:Lxg;

    iget v4, v3, Lxg;->b:I

    .line 90
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lxg;->b:I

    iget-object v2, v0, Lxd;->b:Lxg;

    sget-object v3, Lxi;->a:[I

    iget-object v4, v0, Lxd;->b:Lxg;

    iget v4, v4, Lxg;->b:I

    .line 91
    aget v3, v3, v4

    iput v3, v2, Lxg;->b:I

    goto/16 :goto_2

    :pswitch_4a
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->e:I

    .line 92
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Lxe;->e:I

    goto/16 :goto_2

    :pswitch_4b
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->x:F

    .line 93
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->x:F

    goto/16 :goto_2

    :pswitch_4c
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->h:F

    .line 94
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Lxe;->h:F

    goto/16 :goto_2

    :pswitch_4d
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->g:I

    .line 95
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Lxe;->g:I

    goto/16 :goto_2

    :pswitch_4e
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->f:I

    .line 96
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Lxe;->f:I

    goto/16 :goto_2

    :pswitch_4f
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->O:I

    .line 97
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->O:I

    goto/16 :goto_2

    :pswitch_50
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->S:I

    .line 98
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->S:I

    goto/16 :goto_2

    :pswitch_51
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->P:I

    .line 99
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->P:I

    goto/16 :goto_2

    :pswitch_52
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->N:I

    .line 100
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->N:I

    goto/16 :goto_2

    :pswitch_53
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->R:I

    .line 101
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->R:I

    goto/16 :goto_2

    :pswitch_54
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->Q:I

    .line 102
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->Q:I

    goto/16 :goto_2

    :pswitch_55
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->v:I

    .line 103
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->v:I

    goto :goto_2

    :pswitch_56
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->w:I

    .line 104
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->w:I

    goto :goto_2

    :pswitch_57
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->K:I

    .line 105
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->K:I

    goto :goto_2

    :pswitch_58
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->E:I

    .line 106
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Lxe;->E:I

    goto :goto_2

    :pswitch_59
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->D:I

    .line 107
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Lxe;->D:I

    goto :goto_2

    :pswitch_5a
    iget-object v3, v0, Lxd;->d:Lxe;

    .line 108
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lxe;->z:Ljava/lang/String;

    goto :goto_2

    :pswitch_5b
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->o:I

    .line 109
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->o:I

    goto :goto_2

    :pswitch_5c
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->p:I

    .line 110
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->p:I

    goto :goto_2

    :pswitch_5d
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->J:I

    .line 111
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Lxe;->J:I

    goto :goto_2

    :pswitch_5e
    iget-object v3, v0, Lxd;->d:Lxe;

    iget v4, v3, Lxe;->q:I

    .line 112
    invoke-static {p0, v2, v4}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Lxe;->q:I

    .line 113
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 115
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static i(Lxd;Landroid/content/res/TypedArray;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    new-instance v1, Lxc;

    invoke-direct {v1}, Lxc;-><init>()V

    iput-object v1, p0, Lxd;->g:Lxc;

    iget-object v2, p0, Lxd;->c:Lxf;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lxf;->b:Z

    iget-object v2, p0, Lxd;->d:Lxe;

    iput-boolean v3, v2, Lxe;->c:Z

    iget-object v2, p0, Lxd;->b:Lxg;

    iput-boolean v3, v2, Lxg;->a:Z

    iget-object v2, p0, Lxd;->e:Lxh;

    iput-boolean v3, v2, Lxh;->b:Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget-object v5, Lxi;->d:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const-string v6, "   "

    const/high16 v7, 0x3f800000    # 1.0f

    const-string v8, "ConstraintSet"

    const/4 v9, 0x3

    const/4 v10, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown attribute 0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lxi;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    if-ne v5, v9, :cond_0

    .line 5
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    iget v5, p0, Lxd;->a:I

    .line 6
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lxd;->a:I

    goto/16 :goto_1

    :pswitch_2
    const/16 v5, 0x61

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->ap:I

    .line 7
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_3
    nop

    .line 8
    invoke-static {v1, p1, v4, v10}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_4
    nop

    .line 9
    invoke-static {v1, p1, v4, v3}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_5
    const/16 v5, 0x5e

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->T:I

    .line 10
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_6
    const/16 v5, 0x5d

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->M:I

    .line 11
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unused attribute 0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lxi;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 14
    :pswitch_8
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 15
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x59

    const/4 v8, -0x2

    const/16 v11, 0x58

    const/4 v12, -0x1

    if-ne v6, v10, :cond_1

    iget-object v5, p0, Lxd;->c:Lxf;

    .line 16
    invoke-virtual {p1, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Lxf;->o:I

    iget-object v4, p0, Lxd;->c:Lxf;

    iget v4, v4, Lxf;->o:I

    .line 17
    invoke-virtual {v1, v7, v4}, Lxc;->b(II)V

    iget-object v4, p0, Lxd;->c:Lxf;

    iget v5, v4, Lxf;->o:I

    if-eq v5, v12, :cond_5

    iput v8, v4, Lxf;->n:I

    .line 18
    invoke-virtual {v1, v11, v8}, Lxc;->b(II)V

    goto/16 :goto_1

    .line 19
    :cond_1
    iget v5, v5, Landroid/util/TypedValue;->type:I

    if-ne v5, v9, :cond_3

    iget-object v5, p0, Lxd;->c:Lxf;

    .line 20
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lxf;->m:Ljava/lang/String;

    const/16 v5, 0x5a

    iget-object v6, p0, Lxd;->c:Lxf;

    iget-object v6, v6, Lxf;->m:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v5, v6}, Lxc;->c(ILjava/lang/String;)V

    iget-object v5, p0, Lxd;->c:Lxf;

    iget-object v5, v5, Lxf;->m:Ljava/lang/String;

    .line 22
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lxd;->c:Lxf;

    .line 23
    invoke-virtual {p1, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Lxf;->o:I

    iget-object v4, p0, Lxd;->c:Lxf;

    iget v4, v4, Lxf;->o:I

    .line 24
    invoke-virtual {v1, v7, v4}, Lxc;->b(II)V

    iget-object v4, p0, Lxd;->c:Lxf;

    iput v8, v4, Lxf;->n:I

    .line 25
    invoke-virtual {v1, v11, v8}, Lxc;->b(II)V

    goto/16 :goto_1

    :cond_2
    iget-object v4, p0, Lxd;->c:Lxf;

    iput v12, v4, Lxf;->n:I

    .line 26
    invoke-virtual {v1, v11, v12}, Lxc;->b(II)V

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lxd;->c:Lxf;

    iget v6, v5, Lxf;->o:I

    .line 27
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Lxf;->n:I

    iget-object v4, p0, Lxd;->c:Lxf;

    iget v4, v4, Lxf;->n:I

    .line 28
    invoke-virtual {v1, v11, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v5, 0x55

    iget-object v6, p0, Lxd;->c:Lxf;

    iget v6, v6, Lxf;->k:F

    .line 29
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_a
    const/16 v5, 0x54

    iget-object v6, p0, Lxd;->c:Lxf;

    iget v6, v6, Lxf;->l:I

    .line 30
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v5, 0x53

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->j:I

    .line 31
    invoke-static {p1, v4, v6}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v5, 0x52

    iget-object v6, p0, Lxd;->c:Lxf;

    iget v6, v6, Lxf;->d:I

    .line 32
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_d
    const/16 v5, 0x51

    iget-object v6, p0, Lxd;->d:Lxe;

    iget-boolean v6, v6, Lxe;->an:Z

    .line 33
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->d(IZ)V

    goto/16 :goto_1

    :pswitch_e
    const/16 v5, 0x50

    iget-object v6, p0, Lxd;->d:Lxe;

    iget-boolean v6, v6, Lxe;->am:Z

    .line 34
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->d(IZ)V

    goto/16 :goto_1

    :pswitch_f
    const/16 v5, 0x4f

    iget-object v6, p0, Lxd;->c:Lxf;

    iget v6, v6, Lxf;->h:F

    .line 35
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_10
    const/16 v5, 0x4e

    iget-object v6, p0, Lxd;->b:Lxg;

    iget v6, v6, Lxg;->c:I

    .line 36
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_11
    const/16 v5, 0x4d

    .line 37
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lxc;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    const/16 v5, 0x4c

    iget-object v6, p0, Lxd;->c:Lxf;

    iget v6, v6, Lxf;->f:I

    .line 38
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_13
    const/16 v5, 0x4b

    iget-object v6, p0, Lxd;->d:Lxe;

    iget-boolean v6, v6, Lxe;->ao:Z

    .line 39
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->d(IZ)V

    goto/16 :goto_1

    :pswitch_14
    const/16 v5, 0x4a

    .line 40
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lxc;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_15
    const/16 v5, 0x49

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->ah:I

    .line 41
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_16
    const/16 v5, 0x48

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->ag:I

    .line 42
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_17
    nop

    .line 43
    const-string v4, "CURRENTLY UNSUPPORTED"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_18
    const/16 v5, 0x46

    .line 44
    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_19
    const/16 v5, 0x45

    .line 45
    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_1a
    const/16 v5, 0x44

    iget-object v6, p0, Lxd;->b:Lxg;

    iget v6, v6, Lxg;->e:F

    .line 46
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_1b
    const/16 v5, 0x43

    iget-object v6, p0, Lxd;->c:Lxf;

    iget v6, v6, Lxf;->j:F

    .line 47
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_1c
    const/16 v5, 0x42

    .line 48
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    .line 49
    :pswitch_1d
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 50
    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x41

    if-ne v5, v9, :cond_4

    .line 51
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Lxc;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    nop

    .line 52
    sget-object v5, Lvt;->a:[Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    aget-object v4, v5, v4

    invoke-virtual {v1, v6, v4}, Lxc;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1e
    const/16 v5, 0x40

    iget-object v6, p0, Lxd;->c:Lxf;

    iget v6, v6, Lxf;->c:I

    .line 53
    invoke-static {p1, v4, v6}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_1f
    const/16 v5, 0x3f

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->C:F

    .line 54
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_20
    const/16 v5, 0x3e

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->B:I

    .line 55
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_21
    const/16 v5, 0x3c

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->c:F

    .line 56
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_22
    const/16 v5, 0x3b

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->ad:I

    .line 57
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_23
    const/16 v5, 0x3a

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->ac:I

    .line 58
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_24
    const/16 v5, 0x39

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->ab:I

    .line 59
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_25
    const/16 v5, 0x38

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->aa:I

    .line 60
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_26
    const/16 v5, 0x37

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->Z:I

    .line 61
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_27
    const/16 v5, 0x36

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->Y:I

    .line 62
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_28
    const/16 v5, 0x35

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->m:F

    .line 63
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_29
    const/16 v5, 0x34

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->l:F

    .line 64
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_2a
    const/16 v5, 0x33

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->k:F

    .line 65
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_2b
    const/16 v5, 0x32

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->i:F

    .line 66
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_2c
    const/16 v5, 0x31

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->h:F

    .line 67
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_2d
    const/16 v5, 0x30

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->g:F

    .line 68
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_2e
    const/16 v5, 0x2f

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->f:F

    .line 69
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_2f
    const/16 v5, 0x2e

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->e:F

    .line 70
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_30
    const/16 v5, 0x2d

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->d:F

    .line 71
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_31
    nop

    .line 72
    const/16 v5, 0x2c

    invoke-virtual {v1, v5, v10}, Lxc;->d(IZ)V

    iget-object v6, p0, Lxd;->e:Lxh;

    iget v6, v6, Lxh;->o:F

    .line 73
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_32
    const/16 v5, 0x2b

    iget-object v6, p0, Lxd;->b:Lxg;

    iget v6, v6, Lxg;->d:F

    .line 74
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_33
    const/16 v5, 0x2a

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->X:I

    .line 75
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_34
    const/16 v5, 0x29

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->W:I

    .line 76
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_35
    const/16 v5, 0x28

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->U:F

    .line 77
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_36
    const/16 v5, 0x27

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->V:F

    .line 78
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_37
    iget v5, p0, Lxd;->a:I

    .line 79
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lxd;->a:I

    const/16 v5, 0x26

    .line 80
    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_38
    const/16 v5, 0x25

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->y:F

    .line 81
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_39
    const/16 v5, 0x22

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->I:I

    .line 82
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_3a
    const/16 v5, 0x1f

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->L:I

    .line 83
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_3b
    const/16 v5, 0x1c

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->H:I

    .line 84
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_3c
    const/16 v5, 0x1b

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->F:I

    .line 85
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_3d
    const/16 v5, 0x18

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->G:I

    .line 86
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_3e
    const/16 v5, 0x17

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->d:I

    .line 87
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_3f
    const/16 v5, 0x16

    sget-object v6, Lxi;->a:[I

    iget-object v7, p0, Lxd;->b:Lxg;

    iget v7, v7, Lxg;->b:I

    .line 88
    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aget v4, v6, v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_40
    const/16 v5, 0x15

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->e:I

    .line 89
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_41
    const/16 v5, 0x14

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->x:F

    .line 90
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_42
    const/16 v5, 0x13

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->h:F

    .line 91
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->a(IF)V

    goto/16 :goto_1

    :pswitch_43
    const/16 v5, 0x12

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->g:I

    .line 92
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_44
    const/16 v5, 0x11

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->f:I

    .line 93
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_45
    const/16 v5, 0x10

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->O:I

    .line 94
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_46
    const/16 v5, 0xf

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->S:I

    .line 95
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto/16 :goto_1

    :pswitch_47
    const/16 v5, 0xe

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->P:I

    .line 96
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto :goto_1

    :pswitch_48
    const/16 v5, 0xd

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->N:I

    .line 97
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto :goto_1

    :pswitch_49
    const/16 v5, 0xc

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->R:I

    .line 98
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto :goto_1

    :pswitch_4a
    const/16 v5, 0xb

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->Q:I

    .line 99
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto :goto_1

    :pswitch_4b
    const/16 v5, 0x8

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->K:I

    .line 100
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto :goto_1

    :pswitch_4c
    const/4 v5, 0x7

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->E:I

    .line 101
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto :goto_1

    :pswitch_4d
    const/4 v5, 0x6

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->D:I

    .line 102
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    goto :goto_1

    :pswitch_4e
    const/4 v5, 0x5

    .line 103
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lxc;->c(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_4f
    const/4 v5, 0x2

    iget-object v6, p0, Lxd;->d:Lxe;

    iget v6, v6, Lxe;->J:I

    .line 104
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Lxc;->b(II)V

    .line 105
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 104
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_0
        :pswitch_0
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final b(Landroid/content/Context;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    move/from16 v3, p2

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v3

    iget-object v0, v1, Lxi;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_9

    .line 4
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lwy;

    .line 6
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_8

    iget-object v0, v1, Lxi;->b:Ljava/util/HashMap;

    .line 7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lxi;->b:Ljava/util/HashMap;

    new-instance v10, Lxd;

    .line 8
    invoke-direct {v10}, Lxd;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, v1, Lxi;->b:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lxd;

    if-nez v9, :cond_1

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_1
    iget-object v10, v1, Lxi;->e:Ljava/util/HashMap;

    new-instance v11, Ljava/util/HashMap;

    .line 10
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 12
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lwv;

    :try_start_0
    const-string v15, "BackgroundColor"

    .line 14
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 15
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    invoke-virtual {v15}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v4, Lwv;

    .line 17
    invoke-direct {v4, v14, v15}, Lwv;-><init>(Lwv;Ljava/lang/Object;)V

    invoke-virtual {v11, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getMap"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v15, 0x0

    :try_start_1
    new-array v1, v15, [Ljava/lang/Class;

    invoke-virtual {v12, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v15, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v1, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Lwv;

    .line 20
    invoke-direct {v4, v14, v1}, Lwv;-><init>(Lwv;Ljava/lang/Object;)V

    invoke-virtual {v11, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, p0

    goto :goto_1

    .line 22
    :catch_0
    move-exception v0

    goto :goto_2

    .line 23
    :catch_1
    move-exception v0

    goto :goto_3

    .line 99
    :catch_2
    move-exception v0

    goto :goto_4

    .line 22
    :catch_3
    move-exception v0

    const/4 v15, 0x0

    .line 21
    :goto_2
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object/from16 v1, p0

    goto :goto_1

    .line 23
    :catch_4
    move-exception v0

    const/4 v15, 0x0

    .line 22
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object/from16 v1, p0

    goto :goto_1

    .line 99
    :catch_5
    move-exception v0

    const/4 v15, 0x0

    .line 23
    :goto_4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object/from16 v1, p0

    goto :goto_1

    .line 20
    :cond_3
    const/4 v15, 0x0

    iput-object v11, v9, Lxd;->f:Ljava/util/HashMap;

    iput v8, v9, Lxd;->a:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 24
    iget v1, v7, Lwy;->d:I

    iput v1, v0, Lxe;->i:I

    .line 25
    iget v1, v7, Lwy;->e:I

    iput v1, v0, Lxe;->j:I

    .line 26
    iget v1, v7, Lwy;->f:I

    iput v1, v0, Lxe;->k:I

    .line 27
    iget v1, v7, Lwy;->g:I

    iput v1, v0, Lxe;->l:I

    .line 28
    iget v1, v7, Lwy;->h:I

    iput v1, v0, Lxe;->m:I

    .line 29
    iget v1, v7, Lwy;->i:I

    iput v1, v0, Lxe;->n:I

    .line 30
    iget v1, v7, Lwy;->j:I

    iput v1, v0, Lxe;->o:I

    .line 31
    iget v1, v7, Lwy;->k:I

    iput v1, v0, Lxe;->p:I

    .line 32
    iget v1, v7, Lwy;->l:I

    iput v1, v0, Lxe;->q:I

    .line 33
    iget v1, v7, Lwy;->m:I

    iput v1, v0, Lxe;->r:I

    .line 34
    iget v1, v7, Lwy;->n:I

    iput v1, v0, Lxe;->s:I

    .line 35
    iget v1, v7, Lwy;->r:I

    iput v1, v0, Lxe;->t:I

    .line 36
    iget v1, v7, Lwy;->s:I

    iput v1, v0, Lxe;->u:I

    .line 37
    iget v1, v7, Lwy;->t:I

    iput v1, v0, Lxe;->v:I

    .line 38
    iget v1, v7, Lwy;->u:I

    iput v1, v0, Lxe;->w:I

    .line 39
    iget v1, v7, Lwy;->D:F

    iput v1, v0, Lxe;->x:F

    .line 40
    iget v1, v7, Lwy;->E:F

    iput v1, v0, Lxe;->y:F

    .line 41
    iget-object v1, v7, Lwy;->F:Ljava/lang/String;

    iput-object v1, v0, Lxe;->z:Ljava/lang/String;

    .line 42
    iget v1, v7, Lwy;->o:I

    iput v1, v0, Lxe;->A:I

    .line 43
    iget v1, v7, Lwy;->p:I

    iput v1, v0, Lxe;->B:I

    .line 44
    iget v1, v7, Lwy;->q:F

    iput v1, v0, Lxe;->C:F

    .line 45
    iget v1, v7, Lwy;->S:I

    iput v1, v0, Lxe;->D:I

    .line 46
    iget v1, v7, Lwy;->T:I

    iput v1, v0, Lxe;->E:I

    .line 47
    iget v1, v7, Lwy;->U:I

    iput v1, v0, Lxe;->F:I

    .line 48
    iget v1, v7, Lwy;->c:F

    iput v1, v0, Lxe;->h:F

    .line 49
    iget v1, v7, Lwy;->a:I

    iput v1, v0, Lxe;->f:I

    .line 50
    iget v1, v7, Lwy;->b:I

    iput v1, v0, Lxe;->g:I

    .line 51
    iget v1, v7, Lwy;->width:I

    iput v1, v0, Lxe;->d:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 52
    iget v1, v7, Lwy;->height:I

    iput v1, v0, Lxe;->e:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 53
    iget v1, v7, Lwy;->leftMargin:I

    iput v1, v0, Lxe;->G:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 54
    iget v1, v7, Lwy;->rightMargin:I

    iput v1, v0, Lxe;->H:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 55
    iget v1, v7, Lwy;->topMargin:I

    iput v1, v0, Lxe;->I:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 56
    iget v1, v7, Lwy;->bottomMargin:I

    iput v1, v0, Lxe;->J:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 57
    iget v1, v7, Lwy;->C:I

    iput v1, v0, Lxe;->M:I

    .line 58
    iget v1, v7, Lwy;->H:F

    iput v1, v0, Lxe;->U:F

    .line 59
    iget v1, v7, Lwy;->G:F

    iput v1, v0, Lxe;->V:F

    .line 60
    iget v1, v7, Lwy;->J:I

    iput v1, v0, Lxe;->X:I

    .line 61
    iget v1, v7, Lwy;->I:I

    iput v1, v0, Lxe;->W:I

    .line 62
    iget-boolean v1, v7, Lwy;->V:Z

    iput-boolean v1, v0, Lxe;->am:Z

    .line 63
    iget-boolean v1, v7, Lwy;->W:Z

    iput-boolean v1, v0, Lxe;->an:Z

    .line 64
    iget v1, v7, Lwy;->K:I

    iput v1, v0, Lxe;->Y:I

    .line 65
    iget v1, v7, Lwy;->L:I

    iput v1, v0, Lxe;->Z:I

    .line 66
    iget v1, v7, Lwy;->O:I

    iput v1, v0, Lxe;->aa:I

    .line 67
    iget v1, v7, Lwy;->P:I

    iput v1, v0, Lxe;->ab:I

    .line 68
    iget v1, v7, Lwy;->M:I

    iput v1, v0, Lxe;->ac:I

    .line 69
    iget v1, v7, Lwy;->N:I

    iput v1, v0, Lxe;->ad:I

    .line 70
    iget v1, v7, Lwy;->Q:F

    iput v1, v0, Lxe;->ae:F

    .line 71
    iget v1, v7, Lwy;->R:F

    iput v1, v0, Lxe;->af:F

    .line 72
    iget-object v1, v7, Lwy;->X:Ljava/lang/String;

    iput-object v1, v0, Lxe;->al:Ljava/lang/String;

    .line 73
    iget v1, v7, Lwy;->w:I

    iput v1, v0, Lxe;->O:I

    .line 74
    iget v1, v7, Lwy;->y:I

    iput v1, v0, Lxe;->Q:I

    .line 75
    iget v1, v7, Lwy;->v:I

    iput v1, v0, Lxe;->N:I

    .line 76
    iget v1, v7, Lwy;->x:I

    iput v1, v0, Lxe;->P:I

    .line 77
    iget v1, v7, Lwy;->z:I

    iput v1, v0, Lxe;->S:I

    .line 78
    iget v1, v7, Lwy;->A:I

    iput v1, v0, Lxe;->R:I

    .line 79
    iget v1, v7, Lwy;->B:I

    iput v1, v0, Lxe;->T:I

    .line 80
    iget v1, v7, Lwy;->Y:I

    iput v1, v0, Lxe;->ap:I

    .line 81
    invoke-virtual {v7}, Lwy;->getMarginEnd()I

    move-result v1

    iput v1, v0, Lxe;->K:I

    iget-object v0, v9, Lxd;->d:Lxe;

    .line 82
    invoke-virtual {v7}, Lwy;->getMarginStart()I

    move-result v1

    iput v1, v0, Lxe;->L:I

    iget-object v0, v9, Lxd;->b:Lxg;

    .line 83
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v0, Lxg;->b:I

    iget-object v0, v9, Lxd;->b:Lxg;

    .line 84
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v1

    iput v1, v0, Lxg;->d:F

    iget-object v0, v9, Lxd;->e:Lxh;

    .line 85
    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v1

    iput v1, v0, Lxh;->c:F

    iget-object v0, v9, Lxd;->e:Lxh;

    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v1

    iput v1, v0, Lxh;->d:F

    iget-object v0, v9, Lxd;->e:Lxh;

    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v1

    iput v1, v0, Lxh;->e:F

    iget-object v0, v9, Lxd;->e:Lxh;

    .line 88
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v1

    iput v1, v0, Lxh;->f:F

    iget-object v0, v9, Lxd;->e:Lxh;

    .line 89
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v1

    iput v1, v0, Lxh;->g:F

    .line 90
    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v0

    .line 91
    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v1

    float-to-double v7, v0

    const-wide/16 v10, 0x0

    cmpl-double v4, v7, v10

    if-nez v4, :cond_4

    float-to-double v7, v1

    cmpl-double v4, v7, v10

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, v9, Lxd;->e:Lxh;

    iput v0, v4, Lxh;->h:F

    iput v1, v4, Lxh;->i:F

    :cond_5
    iget-object v0, v9, Lxd;->e:Lxh;

    .line 92
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, v0, Lxh;->k:F

    iget-object v0, v9, Lxd;->e:Lxh;

    .line 93
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, v0, Lxh;->l:F

    iget-object v0, v9, Lxd;->e:Lxh;

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iput v1, v0, Lxh;->m:F

    iget-object v0, v9, Lxd;->e:Lxh;

    iget-boolean v1, v0, Lxh;->n:Z

    if-eqz v1, :cond_6

    .line 95
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v1

    iput v1, v0, Lxh;->o:F

    .line 96
    :cond_6
    instance-of v0, v6, Lwu;

    if-eqz v0, :cond_7

    .line 97
    check-cast v6, Lwu;

    iget-object v0, v9, Lxd;->d:Lxe;

    iget-object v1, v6, Lwu;->b:Lvu;

    iget-boolean v1, v1, Lvu;->b:Z

    iput-boolean v1, v0, Lxe;->ao:Z

    iget-object v1, v6, Lww;->c:[I

    iget v4, v6, Lww;->d:I

    .line 98
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lxe;->aj:[I

    iget-object v0, v9, Lxd;->d:Lxe;

    iget v1, v6, Lwu;->a:I

    iput v1, v0, Lxe;->ag:I

    iget-object v1, v6, Lwu;->b:Lvu;

    iget v1, v1, Lvu;->c:I

    iput v1, v0, Lxe;->ah:I

    .line 9
    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 98
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 99
    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_9
    return-void
.end method

.method public final c(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4
    :pswitch_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lxi;->h(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lxd;

    move-result-object v2

    const-string v3, "Guideline"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lxd;->d:Lxe;

    iput-boolean v1, v0, Lxe;->b:Z

    :cond_0
    iget-object v0, p0, Lxi;->b:Ljava/util/HashMap;

    iget v1, v2, Lxd;->a:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 9
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :cond_1
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 8
    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 20

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_23

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object/from16 v2, p0

    goto/16 :goto_11

    .line 2
    :pswitch_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 3
    invoke-virtual {v2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    .line 164
    :sswitch_0
    nop

    .line 3
    const-string v5, "constraintset"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v5, "constraintoverride"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_2
    const-string v6, "constraint"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :sswitch_3
    const-string v5, "guideline"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x3

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_1

    move-object/from16 v2, p0

    goto/16 :goto_11

    :pswitch_2
    move-object/from16 v2, p0

    :try_start_1
    iget-object v5, v2, Lxi;->b:Ljava/util/HashMap;

    .line 4
    iget v6, v4, Lxd;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    goto/16 :goto_11

    .line 164
    :pswitch_3
    move-object/from16 v2, p0

    return-void

    .line 5
    :pswitch_4
    move-object/from16 v2, p0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x7

    sparse-switch v11, :sswitch_data_1

    :cond_1
    goto/16 :goto_3

    .line 162
    :sswitch_4
    nop

    .line 6
    const-string v11, "Constraint"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_4

    :sswitch_5
    const-string v11, "CustomAttribute"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x8

    goto :goto_4

    :sswitch_6
    const-string v11, "Barrier"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    goto :goto_4

    :sswitch_7
    const-string v11, "CustomMethod"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x9

    goto :goto_4

    :sswitch_8
    const-string v11, "Guideline"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    goto :goto_4

    :sswitch_9
    const-string v11, "Transform"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x5

    goto :goto_4

    :sswitch_a
    const-string v11, "PropertySet"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    goto :goto_4

    :sswitch_b
    const-string v11, "ConstraintOverride"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_4

    :sswitch_c
    const-string v11, "Motion"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x7

    goto :goto_4

    :sswitch_d
    const-string v11, "Layout"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x6

    goto :goto_4

    :goto_3
    const/4 v10, -0x1

    :goto_4
    const-string v11, "XML parser error must be within a Constraint "

    packed-switch v10, :pswitch_data_2

    goto/16 :goto_11

    .line 159
    :pswitch_5
    if-eqz v4, :cond_11

    .line 165
    :try_start_2
    iget-object v10, v4, Lxd;->f:Ljava/util/HashMap;

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    .line 8
    sget-object v12, Lxm;->d:[I

    invoke-virtual {v1, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 9
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_5
    if-ge v8, v12, :cond_f

    .line 10
    invoke-virtual {v11, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    if-nez v14, :cond_3

    .line 11
    invoke-virtual {v11, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :cond_2
    move-object/from16 v16, v14

    :goto_6
    const/16 v3, 0x8

    const/4 v13, 0x5

    const/4 v15, 0x6

    goto/16 :goto_7

    :cond_3
    const/16 v13, 0xa

    if-ne v14, v13, :cond_4

    .line 13
    invoke-virtual {v11, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x8

    const/4 v13, 0x5

    const/4 v15, 0x6

    const/16 v19, 0x1

    goto/16 :goto_7

    :cond_4
    if-ne v14, v5, :cond_5

    .line 14
    invoke-virtual {v11, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v3, 0x8

    const/4 v13, 0x5

    const/4 v15, 0x6

    const/16 v18, 0x6

    goto/16 :goto_7

    :cond_5
    if-ne v14, v7, :cond_6

    .line 15
    invoke-virtual {v11, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v3, 0x8

    const/4 v13, 0x5

    const/4 v15, 0x6

    const/16 v18, 0x3

    goto/16 :goto_7

    :cond_6
    if-ne v14, v6, :cond_7

    .line 16
    invoke-virtual {v11, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v3, 0x8

    const/4 v13, 0x5

    const/4 v15, 0x6

    const/16 v18, 0x4

    goto/16 :goto_7

    :cond_7
    const/4 v13, 0x0

    if-ne v14, v3, :cond_8

    .line 17
    invoke-virtual {v11, v3, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 19
    invoke-static {v5, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v3, 0x8

    const/4 v13, 0x5

    const/4 v15, 0x6

    const/16 v18, 0x7

    goto :goto_7

    :cond_8
    const/4 v15, 0x4

    if-ne v14, v15, :cond_9

    .line 20
    invoke-virtual {v11, v15, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v3, 0x8

    const/4 v13, 0x5

    const/4 v15, 0x6

    const/16 v18, 0x7

    goto :goto_7

    :cond_9
    const/4 v13, 0x5

    if-ne v14, v13, :cond_a

    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 21
    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v3, 0x8

    const/4 v15, 0x6

    const/16 v18, 0x2

    goto :goto_7

    :cond_a
    const/4 v15, 0x6

    if-ne v14, v15, :cond_b

    .line 22
    const/4 v14, -0x1

    invoke-virtual {v11, v15, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v3, 0x8

    const/16 v18, 0x1

    goto :goto_7

    :cond_b
    const/16 v3, 0x9

    if-ne v14, v3, :cond_c

    .line 23
    invoke-virtual {v11, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v3, 0x8

    const/16 v18, 0x5

    goto :goto_7

    :cond_c
    const/16 v3, 0x8

    if-ne v14, v3, :cond_e

    .line 24
    const/4 v14, -0x1

    invoke-virtual {v11, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-ne v6, v14, :cond_d

    .line 25
    invoke-virtual {v11, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 26
    :cond_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x8

    goto :goto_7

    :cond_e
    nop

    .line 12
    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x7

    const/4 v6, 0x2

    goto/16 :goto_5

    .line 26
    :cond_f
    move-object/from16 v3, v16

    if-eqz v3, :cond_10

    move-object/from16 v5, v17

    if-eqz v5, :cond_10

    new-instance v6, Lwv;

    .line 27
    move/from16 v9, v18

    move/from16 v7, v19

    invoke-direct {v6, v3, v9, v5, v7}, Lwv;-><init>(Ljava/lang/String;ILjava/lang/Object;Z)V

    invoke-virtual {v10, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_10
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_11

    .line 159
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :pswitch_6
    if-eqz v4, :cond_18

    .line 166
    iget-object v3, v4, Lxd;->c:Lxf;

    .line 29
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 30
    sget-object v8, Lxm;->f:[I

    invoke-virtual {v1, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iput-boolean v5, v3, Lxf;->b:Z

    .line 31
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v8, :cond_17

    .line 32
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v11

    sget-object v12, Lxf;->a:Landroid/util/SparseIntArray;

    .line 33
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    packed-switch v12, :pswitch_data_3

    const/4 v12, -0x1

    goto/16 :goto_9

    .line 34
    :pswitch_7
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 35
    iget v13, v12, Landroid/util/TypedValue;->type:I

    const/4 v14, -0x2

    if-ne v13, v5, :cond_13

    .line 36
    const/4 v12, -0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v3, Lxf;->o:I

    if-eq v11, v12, :cond_12

    iput v14, v3, Lxf;->n:I

    :cond_12
    const/4 v12, -0x1

    goto/16 :goto_9

    .line 37
    :cond_13
    iget v12, v12, Landroid/util/TypedValue;->type:I

    if-ne v12, v7, :cond_15

    .line 38
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lxf;->m:Ljava/lang/String;

    iget-object v12, v3, Lxf;->m:Ljava/lang/String;

    const-string v13, "/"

    .line 39
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_14

    .line 40
    const/4 v12, -0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v3, Lxf;->o:I

    iput v14, v3, Lxf;->n:I

    const/4 v12, -0x1

    goto/16 :goto_9

    :cond_14
    const/4 v12, -0x1

    iput v12, v3, Lxf;->n:I

    goto/16 :goto_9

    :cond_15
    const/4 v12, -0x1

    iget v13, v3, Lxf;->o:I

    .line 41
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    iput v11, v3, Lxf;->n:I

    goto :goto_9

    :pswitch_8
    const/4 v12, -0x1

    iget v13, v3, Lxf;->k:F

    .line 42
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v3, Lxf;->k:F

    goto :goto_9

    :pswitch_9
    const/4 v12, -0x1

    iget v13, v3, Lxf;->l:I

    .line 43
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    iput v11, v3, Lxf;->l:I

    goto :goto_9

    :pswitch_a
    const/4 v12, -0x1

    iget v13, v3, Lxf;->h:F

    .line 44
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v3, Lxf;->h:F

    goto :goto_9

    :pswitch_b
    const/4 v12, -0x1

    iget v13, v3, Lxf;->d:I

    .line 45
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    iput v11, v3, Lxf;->d:I

    goto :goto_9

    :pswitch_c
    const/4 v12, -0x1

    iget v13, v3, Lxf;->c:I

    .line 46
    invoke-static {v6, v11, v13}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v11

    iput v11, v3, Lxf;->c:I

    goto :goto_9

    :pswitch_d
    const/4 v12, -0x1

    .line 47
    invoke-virtual {v6, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v3, Lxf;->g:I

    goto :goto_9

    .line 48
    :pswitch_e
    const/4 v12, -0x1

    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 49
    iget v13, v13, Landroid/util/TypedValue;->type:I

    if-ne v13, v7, :cond_16

    .line 50
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lxf;->e:Ljava/lang/String;

    goto :goto_9

    .line 51
    :cond_16
    sget-object v13, Lvt;->a:[Ljava/lang/String;

    invoke-virtual {v6, v11, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    aget-object v11, v13, v11

    iput-object v11, v3, Lxf;->e:Ljava/lang/String;

    goto :goto_9

    :pswitch_f
    const/4 v12, -0x1

    iget v13, v3, Lxf;->f:I

    .line 52
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v3, Lxf;->f:I

    goto :goto_9

    :pswitch_10
    const/4 v12, -0x1

    iget v13, v3, Lxf;->j:F

    .line 53
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v3, Lxf;->j:F

    .line 33
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 54
    :cond_17
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_11

    .line 28
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :pswitch_11
    if-eqz v4, :cond_1a

    .line 167
    iget-object v3, v4, Lxd;->d:Lxe;

    .line 55
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 56
    sget-object v7, Lxm;->e:[I

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iput-boolean v5, v3, Lxe;->c:Z

    .line 57
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_19

    .line 58
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    sget-object v11, Lxe;->a:Landroid/util/SparseIntArray;

    .line 59
    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v12, "   "

    const/high16 v13, 0x3f800000    # 1.0f

    const-string v14, "ConstraintSet"

    packed-switch v11, :pswitch_data_4

    :pswitch_12
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 61
    :pswitch_13
    iget v11, v3, Lxe;->ap:I

    .line 62
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v3, Lxe;->ap:I

    goto/16 :goto_c

    :pswitch_14
    iget v11, v3, Lxe;->T:I

    .line 63
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->T:I

    goto/16 :goto_c

    :pswitch_15
    iget v11, v3, Lxe;->M:I

    .line 64
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->M:I

    goto/16 :goto_c

    :pswitch_16
    iget v11, v3, Lxe;->s:I

    .line 65
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->s:I

    goto/16 :goto_c

    :pswitch_17
    iget v11, v3, Lxe;->r:I

    .line 66
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->r:I

    goto/16 :goto_c

    :pswitch_18
    iget-boolean v11, v3, Lxe;->an:Z

    .line 67
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v3, Lxe;->an:Z

    goto/16 :goto_c

    :pswitch_19
    iget-boolean v11, v3, Lxe;->am:Z

    .line 68
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v3, Lxe;->am:Z

    goto/16 :goto_c

    .line 69
    :pswitch_1a
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lxe;->al:Ljava/lang/String;

    goto/16 :goto_c

    :pswitch_1b
    new-instance v11, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unused attribute 0x"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lxe;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 70
    invoke-static {v14, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_1c
    iget-boolean v11, v3, Lxe;->ao:Z

    .line 72
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v3, Lxe;->ao:Z

    goto/16 :goto_c

    .line 73
    :pswitch_1d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lxe;->ak:Ljava/lang/String;

    goto/16 :goto_c

    :pswitch_1e
    iget v11, v3, Lxe;->ah:I

    .line 74
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->ah:I

    goto/16 :goto_c

    :pswitch_1f
    iget v11, v3, Lxe;->ag:I

    .line 75
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v3, Lxe;->ag:I

    goto/16 :goto_c

    :pswitch_20
    const-string v10, "CURRENTLY UNSUPPORTED"

    .line 76
    invoke-static {v14, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_21
    nop

    .line 77
    invoke-virtual {v6, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->af:F

    goto/16 :goto_c

    :pswitch_22
    nop

    .line 78
    invoke-virtual {v6, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->ae:F

    goto/16 :goto_c

    :pswitch_23
    iget v11, v3, Lxe;->C:F

    .line 79
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->C:F

    goto/16 :goto_c

    :pswitch_24
    iget v11, v3, Lxe;->B:I

    .line 80
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->B:I

    goto/16 :goto_c

    :pswitch_25
    iget v11, v3, Lxe;->A:I

    .line 81
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->A:I

    goto/16 :goto_c

    :pswitch_26
    iget v11, v3, Lxe;->ad:I

    .line 82
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->ad:I

    goto/16 :goto_c

    :pswitch_27
    iget v11, v3, Lxe;->ac:I

    .line 83
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->ac:I

    goto/16 :goto_c

    :pswitch_28
    iget v11, v3, Lxe;->ab:I

    .line 84
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->ab:I

    goto/16 :goto_c

    :pswitch_29
    iget v11, v3, Lxe;->aa:I

    .line 85
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->aa:I

    goto/16 :goto_c

    :pswitch_2a
    iget v11, v3, Lxe;->Z:I

    .line 86
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v3, Lxe;->Z:I

    goto/16 :goto_c

    :pswitch_2b
    iget v11, v3, Lxe;->Y:I

    .line 87
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v3, Lxe;->Y:I

    goto/16 :goto_c

    .line 60
    :pswitch_2c
    nop

    .line 61
    invoke-static {v3, v6, v10, v5}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_c

    .line 128
    :pswitch_2d
    nop

    .line 60
    invoke-static {v3, v6, v10, v9}, Lxi;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_c

    .line 87
    :pswitch_2e
    iget v11, v3, Lxe;->X:I

    .line 88
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v3, Lxe;->X:I

    goto/16 :goto_c

    :pswitch_2f
    iget v11, v3, Lxe;->W:I

    .line 89
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v3, Lxe;->W:I

    goto/16 :goto_c

    :pswitch_30
    iget v11, v3, Lxe;->U:F

    .line 90
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->U:F

    goto/16 :goto_c

    :pswitch_31
    iget v11, v3, Lxe;->V:F

    .line 91
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->V:F

    goto/16 :goto_c

    :pswitch_32
    iget v11, v3, Lxe;->y:F

    .line 92
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->y:F

    goto/16 :goto_c

    :pswitch_33
    iget v11, v3, Lxe;->m:I

    .line 93
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->m:I

    goto/16 :goto_c

    :pswitch_34
    iget v11, v3, Lxe;->n:I

    .line 94
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->n:I

    goto/16 :goto_c

    :pswitch_35
    iget v11, v3, Lxe;->I:I

    .line 95
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->I:I

    goto/16 :goto_c

    :pswitch_36
    iget v11, v3, Lxe;->u:I

    .line 96
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->u:I

    goto/16 :goto_c

    :pswitch_37
    iget v11, v3, Lxe;->t:I

    .line 97
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->t:I

    goto/16 :goto_c

    :pswitch_38
    iget v11, v3, Lxe;->L:I

    .line 98
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->L:I

    goto/16 :goto_c

    :pswitch_39
    iget v11, v3, Lxe;->l:I

    .line 99
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->l:I

    goto/16 :goto_c

    :pswitch_3a
    iget v11, v3, Lxe;->k:I

    .line 100
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->k:I

    goto/16 :goto_c

    :pswitch_3b
    iget v11, v3, Lxe;->H:I

    .line 101
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->H:I

    goto/16 :goto_c

    :pswitch_3c
    iget v11, v3, Lxe;->F:I

    .line 102
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v3, Lxe;->F:I

    goto/16 :goto_c

    :pswitch_3d
    iget v11, v3, Lxe;->j:I

    .line 103
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->j:I

    goto/16 :goto_c

    :pswitch_3e
    iget v11, v3, Lxe;->i:I

    .line 104
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->i:I

    goto/16 :goto_c

    :pswitch_3f
    iget v11, v3, Lxe;->G:I

    .line 105
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->G:I

    goto/16 :goto_c

    :pswitch_40
    iget v11, v3, Lxe;->d:I

    .line 106
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    iput v10, v3, Lxe;->d:I

    goto/16 :goto_c

    :pswitch_41
    iget v11, v3, Lxe;->e:I

    .line 107
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    iput v10, v3, Lxe;->e:I

    goto/16 :goto_c

    :pswitch_42
    iget v11, v3, Lxe;->x:F

    .line 108
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->x:F

    goto/16 :goto_c

    :pswitch_43
    iget v11, v3, Lxe;->h:F

    .line 109
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v3, Lxe;->h:F

    goto/16 :goto_c

    :pswitch_44
    iget v11, v3, Lxe;->g:I

    .line 110
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, v3, Lxe;->g:I

    goto/16 :goto_c

    :pswitch_45
    iget v11, v3, Lxe;->f:I

    .line 111
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, v3, Lxe;->f:I

    goto/16 :goto_c

    :pswitch_46
    iget v11, v3, Lxe;->O:I

    .line 112
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->O:I

    goto/16 :goto_c

    :pswitch_47
    iget v11, v3, Lxe;->S:I

    .line 113
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->S:I

    goto/16 :goto_c

    :pswitch_48
    iget v11, v3, Lxe;->P:I

    .line 114
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->P:I

    goto/16 :goto_c

    :pswitch_49
    iget v11, v3, Lxe;->N:I

    .line 115
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->N:I

    goto/16 :goto_c

    :pswitch_4a
    iget v11, v3, Lxe;->R:I

    .line 116
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->R:I

    goto/16 :goto_c

    :pswitch_4b
    iget v11, v3, Lxe;->Q:I

    .line 117
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->Q:I

    goto/16 :goto_c

    :pswitch_4c
    iget v11, v3, Lxe;->v:I

    .line 118
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->v:I

    goto/16 :goto_c

    :pswitch_4d
    iget v11, v3, Lxe;->w:I

    .line 119
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->w:I

    goto :goto_c

    :pswitch_4e
    iget v11, v3, Lxe;->K:I

    .line 120
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->K:I

    goto :goto_c

    :pswitch_4f
    iget v11, v3, Lxe;->E:I

    .line 121
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, v3, Lxe;->E:I

    goto :goto_c

    :pswitch_50
    iget v11, v3, Lxe;->D:I

    .line 122
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, v3, Lxe;->D:I

    goto :goto_c

    .line 123
    :pswitch_51
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lxe;->z:Ljava/lang/String;

    goto :goto_c

    :pswitch_52
    iget v11, v3, Lxe;->o:I

    .line 124
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->o:I

    goto :goto_c

    :pswitch_53
    iget v11, v3, Lxe;->p:I

    .line 125
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->p:I

    goto :goto_c

    :pswitch_54
    iget v11, v3, Lxe;->J:I

    .line 126
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v3, Lxe;->J:I

    goto :goto_c

    :pswitch_55
    iget v11, v3, Lxe;->q:I

    .line 127
    invoke-static {v6, v10, v11}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v10

    iput v10, v3, Lxe;->q:I

    goto :goto_c

    .line 128
    :goto_b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown attribute 0x"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lxe;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-static {v14, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    .line 130
    :cond_19
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_11

    .line 54
    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :pswitch_56
    if-eqz v4, :cond_1c

    .line 168
    iget-object v3, v4, Lxd;->e:Lxh;

    .line 131
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 132
    sget-object v7, Lxm;->i:[I

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iput-boolean v5, v3, Lxh;->b:Z

    .line 133
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    :goto_d
    if-ge v9, v7, :cond_1b

    .line 134
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    sget-object v10, Lxh;->a:Landroid/util/SparseIntArray;

    .line 135
    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    packed-switch v10, :pswitch_data_5

    goto/16 :goto_e

    :pswitch_57
    iget v10, v3, Lxh;->j:I

    .line 136
    invoke-static {v6, v8, v10}, Lxi;->a(Landroid/content/res/TypedArray;II)I

    move-result v8

    iput v8, v3, Lxh;->j:I

    goto :goto_e

    :pswitch_58
    iput-boolean v5, v3, Lxh;->n:Z

    iget v10, v3, Lxh;->o:F

    .line 137
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, v3, Lxh;->o:F

    goto :goto_e

    :pswitch_59
    iget v10, v3, Lxh;->m:F

    .line 138
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, v3, Lxh;->m:F

    goto :goto_e

    :pswitch_5a
    iget v10, v3, Lxh;->l:F

    .line 139
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, v3, Lxh;->l:F

    goto :goto_e

    :pswitch_5b
    iget v10, v3, Lxh;->k:F

    .line 140
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, v3, Lxh;->k:F

    goto :goto_e

    :pswitch_5c
    iget v10, v3, Lxh;->i:F

    .line 141
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, v3, Lxh;->i:F

    goto :goto_e

    :pswitch_5d
    iget v10, v3, Lxh;->h:F

    .line 142
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, v3, Lxh;->h:F

    goto :goto_e

    :pswitch_5e
    iget v10, v3, Lxh;->g:F

    .line 143
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v3, Lxh;->g:F

    goto :goto_e

    :pswitch_5f
    iget v10, v3, Lxh;->f:F

    .line 144
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v3, Lxh;->f:F

    goto :goto_e

    :pswitch_60
    iget v10, v3, Lxh;->e:F

    .line 145
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v3, Lxh;->e:F

    goto :goto_e

    :pswitch_61
    iget v10, v3, Lxh;->d:F

    .line 146
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v3, Lxh;->d:F

    goto :goto_e

    :pswitch_62
    iget v10, v3, Lxh;->c:F

    .line 147
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v3, Lxh;->c:F

    .line 135
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_d

    .line 148
    :cond_1b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_11

    .line 130
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :pswitch_63
    if-eqz v4, :cond_22

    .line 169
    iget-object v3, v4, Lxd;->b:Lxg;

    .line 149
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 150
    sget-object v8, Lxm;->g:[I

    invoke-virtual {v1, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    iput-boolean v5, v3, Lxg;->a:Z

    .line 151
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v8, :cond_21

    .line 152
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v11

    if-ne v11, v5, :cond_1d

    iget v11, v3, Lxg;->d:F

    .line 153
    invoke-virtual {v6, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v3, Lxg;->d:F

    const/4 v12, 0x4

    goto :goto_10

    :cond_1d
    if-nez v11, :cond_1e

    iget v11, v3, Lxg;->b:I

    .line 154
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v3, Lxg;->b:I

    sget-object v11, Lxi;->a:[I

    iget v12, v3, Lxg;->b:I

    .line 155
    aget v11, v11, v12

    iput v11, v3, Lxg;->b:I

    const/4 v12, 0x4

    goto :goto_10

    :cond_1e
    const/4 v12, 0x4

    if-ne v11, v12, :cond_1f

    iget v11, v3, Lxg;->c:I

    .line 156
    invoke-virtual {v6, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v3, Lxg;->c:I

    goto :goto_10

    :cond_1f
    if-ne v11, v7, :cond_20

    iget v11, v3, Lxg;->e:F

    .line 157
    invoke-virtual {v6, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v3, Lxg;->e:F

    .line 153
    :cond_20
    :goto_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 158
    :cond_21
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_11

    .line 148
    :cond_22
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :pswitch_64
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lxi;->h(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lxd;

    move-result-object v4

    iget-object v3, v4, Lxd;->d:Lxe;

    iput v5, v3, Lxe;->ai:I

    goto :goto_11

    .line 160
    :pswitch_65
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lxi;->h(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lxd;

    move-result-object v4

    iget-object v3, v4, Lxd;->d:Lxe;

    iput-boolean v5, v3, Lxe;->b:Z

    iput-boolean v5, v3, Lxe;->c:Z

    goto :goto_11

    .line 161
    :pswitch_66
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lxi;->h(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lxd;

    move-result-object v4

    goto :goto_11

    .line 162
    :pswitch_67
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lxi;->h(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lxd;

    move-result-object v4

    goto :goto_11

    .line 163
    :pswitch_68
    move-object/from16 v2, p0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 164
    :goto_11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move v2, v3

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_12

    .line 163
    :catch_1
    move-exception v0

    goto :goto_13

    :cond_23
    move-object/from16 v2, p0

    return-void

    .line 171
    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_12
    move-object v1, v0

    .line 170
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 163
    :catch_3
    move-exception v0

    move-object/from16 v2, p0

    :goto_13
    move-object v1, v0

    .line 171
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_68
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_56
        :pswitch_11
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_12
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_12
        :pswitch_12
        :pswitch_19
        :pswitch_18
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch
.end method
