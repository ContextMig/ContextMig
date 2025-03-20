.class public final Lcom/appflood/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/f/c$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:[B

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:I

.field private H:[S

.field private I:[B

.field private J:[B

.field private K:[B

.field private L:I

.field a:I

.field b:Ljava/util/Vector;

.field private c:Ljava/io/InputStream;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:[I

.field private j:[I

.field private k:[I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/appflood/f/c;->a:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/appflood/f/c;->B:[B

    iput v1, p0, Lcom/appflood/f/c;->C:I

    iput v1, p0, Lcom/appflood/f/c;->D:I

    iput v1, p0, Lcom/appflood/f/c;->E:I

    iput-boolean v1, p0, Lcom/appflood/f/c;->F:Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget v0, p0, Lcom/appflood/f/c;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appflood/f/c;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/appflood/f/c;->d:I

    goto :goto_0
.end method

.method private b(I)[I
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v3, p1, 0x3

    const/4 v0, 0x0

    new-array v4, v3, [B

    :try_start_0
    iget-object v1, p0, Lcom/appflood/f/c;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ge v1, v3, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/appflood/f/c;->d:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v5, v2, 0xff

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v7, v2, 0xff

    add-int/lit8 v2, v1, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v7

    aput v5, v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method private c()I
    .locals 4

    invoke-direct {p0}, Lcom/appflood/f/c;->b()I

    move-result v0

    iput v0, p0, Lcom/appflood/f/c;->C:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/appflood/f/c;->C:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/appflood/f/c;->C:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/appflood/f/c;->c:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/appflood/f/c;->B:[B

    iget v3, p0, Lcom/appflood/f/c;->C:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    iget v1, p0, Lcom/appflood/f/c;->C:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/appflood/f/c;->d:I

    :cond_1
    return v0
.end method

.method private d()V
    .locals 24

    const/4 v1, 0x0

    move/from16 v16, v1

    :cond_0
    :goto_0
    :sswitch_0
    if-nez v16, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->a()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->d:I

    goto :goto_0

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->r:I

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->s:I

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->t:I

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->u:I

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    move-result v2

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/appflood/f/c;->o:Z

    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/appflood/f/c;->p:Z

    const/4 v1, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->q:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/appflood/f/c;->o:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->q:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/appflood/f/c;->b(I)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->j:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->j:[I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->k:[I

    :cond_1
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/appflood/f/c;->F:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->k:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appflood/f/c;->G:I

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appflood/f/c;->k:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/appflood/f/c;->G:I

    const/4 v4, 0x0

    aput v4, v2, v3

    :cond_2
    move v9, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->k:[I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->d:I

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->t:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appflood/f/c;->u:I

    mul-int v17, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->K:[B

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->K:[B

    array-length v1, v1

    move/from16 v0, v17

    if-ge v1, v0, :cond_5

    :cond_4
    move/from16 v0, v17

    new-array v1, v0, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->K:[B

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->H:[S

    if-nez v1, :cond_6

    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->H:[S

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->I:[B

    if-nez v1, :cond_7

    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->I:[B

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->J:[B

    if-nez v1, :cond_8

    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->J:[B

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    move-result v18

    const/4 v1, 0x1

    shl-int v19, v1, v18

    add-int/lit8 v20, v19, 0x1

    add-int/lit8 v12, v19, 0x2

    const/4 v11, -0x1

    add-int/lit8 v3, v18, 0x1

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v1, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appflood/f/c;->H:[S

    const/4 v5, 0x0

    aput-short v5, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appflood/f/c;->I:[B

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->i:[I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->k:[I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->l:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appflood/f/c;->G:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->m:I

    goto/16 :goto_3

    :cond_c
    const/4 v13, 0x0

    const/4 v1, 0x0

    move v5, v13

    move v6, v13

    move v7, v13

    move v2, v13

    move v8, v13

    move v15, v1

    move v1, v13

    :goto_5
    move/from16 v0, v17

    if-ge v15, v0, :cond_13

    if-nez v5, :cond_27

    if-ge v8, v3, :cond_e

    if-nez v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->c()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v1, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/appflood/f/c;->B:[B

    aget-byte v10, v10, v1

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v8

    add-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_e
    and-int v10, v7, v4

    shr-int/2addr v7, v3

    sub-int/2addr v8, v3

    if-gt v10, v12, :cond_13

    move/from16 v0, v20

    if-eq v10, v0, :cond_13

    move/from16 v0, v19

    if-ne v10, v0, :cond_f

    add-int/lit8 v3, v18, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v12, v19, 0x2

    const/4 v11, -0x1

    goto :goto_5

    :cond_f
    const/4 v14, -0x1

    if-ne v11, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/appflood/f/c;->J:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/appflood/f/c;->I:[B

    aget-byte v14, v14, v10

    aput-byte v14, v11, v5

    move v5, v6

    move v11, v10

    move v6, v10

    goto :goto_5

    :cond_10
    if-ne v10, v12, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appflood/f/c;->J:[B

    move-object/from16 v21, v0

    add-int/lit8 v14, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v21, v5

    move v6, v11

    :goto_6
    move/from16 v0, v19

    if-le v6, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appflood/f/c;->J:[B

    move-object/from16 v21, v0

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appflood/f/c;->I:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v6

    aput-byte v22, v21, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/appflood/f/c;->H:[S

    aget-short v6, v14, v6

    move v14, v5

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/appflood/f/c;->I:[B

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xff

    const/16 v5, 0x1000

    if-ge v12, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appflood/f/c;->J:[B

    move-object/from16 v21, v0

    add-int/lit8 v5, v14, 0x1

    int-to-byte v0, v6

    move/from16 v22, v0

    aput-byte v22, v21, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/appflood/f/c;->H:[S

    int-to-short v11, v11

    aput-short v11, v14, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/appflood/f/c;->I:[B

    int-to-byte v14, v6

    aput-byte v14, v11, v12

    add-int/lit8 v11, v12, 0x1

    and-int v12, v11, v4

    if-nez v12, :cond_12

    const/16 v12, 0x1000

    if-ge v11, v12, :cond_12

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v11

    :cond_12
    move/from16 v23, v5

    move v5, v7

    move v7, v10

    move v10, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move/from16 v3, v23

    :goto_7
    add-int/lit8 v12, v3, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/appflood/f/c;->K:[B

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appflood/f/c;->J:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v12

    aput-byte v21, v14, v13

    add-int/lit8 v13, v15, 0x1

    move v15, v13

    move v13, v3

    move v3, v8

    move v8, v6

    move v6, v4

    move v4, v10

    move/from16 v23, v5

    move v5, v12

    move v12, v11

    move v11, v7

    move/from16 v7, v23

    goto/16 :goto_5

    :cond_13
    move v1, v13

    :goto_8
    move/from16 v0, v17

    if-ge v1, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appflood/f/c;->K:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->h()V

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->L:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->L:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->e:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appflood/f/c;->f:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->z:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->e:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appflood/f/c;->f:I

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->E:I

    if-lez v1, :cond_19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->E:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->L:I

    add-int/lit8 v1, v1, -0x2

    if-lez v1, :cond_17

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/appflood/f/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->A:Landroid/graphics/Bitmap;

    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->A:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->A:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/appflood/f/c;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/appflood/f/c;->e:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/appflood/f/c;->f:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->E:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/appflood/f/c;->F:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->n:I

    :cond_16
    const/4 v3, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/appflood/f/c;->y:I

    if-ge v3, v4, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/appflood/f/c;->w:I

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/appflood/f/c;->e:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/appflood/f/c;->v:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/appflood/f/c;->x:I

    add-int/2addr v5, v4

    :goto_b
    if-ge v4, v5, :cond_18

    aput v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->A:Landroid/graphics/Bitmap;

    goto :goto_9

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/appflood/f/c;->u:I

    if-ge v1, v6, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/appflood/f/c;->p:Z

    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    iget v6, v0, Lcom/appflood/f/c;->u:I

    if-lt v3, v6, :cond_1a

    add-int/lit8 v5, v5, 0x1

    packed-switch v5, :pswitch_data_0

    :cond_1a
    :goto_d
    add-int v6, v3, v4

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :goto_e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/appflood/f/c;->s:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/appflood/f/c;->f:I

    if-ge v6, v7, :cond_1d

    move-object/from16 v0, p0

    iget v7, v0, Lcom/appflood/f/c;->e:I

    mul-int/2addr v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/appflood/f/c;->r:I

    add-int v8, v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/appflood/f/c;->t:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/appflood/f/c;->e:I

    add-int/2addr v10, v7

    if-ge v10, v6, :cond_1b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/appflood/f/c;->e:I

    add-int/2addr v6, v7

    :cond_1b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/appflood/f/c;->t:I

    mul-int/2addr v7, v1

    move v10, v8

    :goto_f
    if-ge v10, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/appflood/f/c;->K:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v11, v7

    and-int/lit16 v7, v7, 0xff

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/appflood/f/c;->k:[I

    aget v7, v11, v7

    if-eqz v7, :cond_1c

    aput v7, v2, v10

    :cond_1c
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v8

    goto :goto_f

    :pswitch_0
    const/4 v3, 0x4

    goto :goto_d

    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x4

    goto :goto_d

    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_d

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->e:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/appflood/f/c;->f:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->z:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->b:Ljava/util/Vector;

    new-instance v2, Lcom/appflood/f/c$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appflood/f/c;->z:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lcom/appflood/f/c$a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/appflood/f/c;->F:Z

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->k:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appflood/f/c;->G:I

    aput v9, v1, v2

    :cond_1f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->D:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->E:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->r:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->v:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->s:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->w:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->t:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->x:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->u:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->y:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appflood/f/c;->z:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->A:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appflood/f/c;->m:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->n:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->D:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/appflood/f/c;->F:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/appflood/f/c;->j:[I

    goto/16 :goto_0

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->h()V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    move-result v1

    and-int/lit8 v2, v1, 0x1c

    shr-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/appflood/f/c;->D:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/appflood/f/c;->D:I

    if-nez v2, :cond_20

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/appflood/f/c;->D:I

    :cond_20
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/appflood/f/c;->F:Z

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->g()I

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appflood/f/c;->G:I

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->b()I

    goto/16 :goto_0

    :cond_21
    const/4 v1, 0x0

    goto :goto_10

    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->c()I

    const-string v2, ""

    const/4 v1, 0x0

    :goto_11
    const/16 v3, 0xb

    if-ge v1, v3, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appflood/f/c;->B:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    const-string v1, "NETSCAPE2.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->f()V

    goto/16 :goto_0

    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/appflood/f/c;->h()V

    goto/16 :goto_0

    :sswitch_5
    const/4 v1, 0x1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_24
    return-void

    :cond_25
    move v6, v1

    goto/16 :goto_e

    :cond_26
    move v14, v5

    move v6, v10

    goto/16 :goto_6

    :cond_27
    move v10, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v11

    move v11, v12

    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    move v2, v1

    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/appflood/f/c;->b()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput v0, p0, Lcom/appflood/f/c;->d:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/appflood/f/c;->g()I

    move-result v2

    iput v2, p0, Lcom/appflood/f/c;->e:I

    invoke-direct {p0}, Lcom/appflood/f/c;->g()I

    move-result v2

    iput v2, p0, Lcom/appflood/f/c;->f:I

    invoke-direct {p0}, Lcom/appflood/f/c;->b()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/appflood/f/c;->g:Z

    const/4 v0, 0x2

    and-int/lit8 v1, v2, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/appflood/f/c;->h:I

    invoke-direct {p0}, Lcom/appflood/f/c;->b()I

    move-result v0

    iput v0, p0, Lcom/appflood/f/c;->l:I

    invoke-direct {p0}, Lcom/appflood/f/c;->b()I

    iget-boolean v0, p0, Lcom/appflood/f/c;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appflood/f/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/appflood/f/c;->h:I

    invoke-direct {p0, v0}, Lcom/appflood/f/c;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/f/c;->i:[I

    iget-object v0, p0, Lcom/appflood/f/c;->i:[I

    iget v1, p0, Lcom/appflood/f/c;->l:I

    aget v0, v0, v1

    iput v0, p0, Lcom/appflood/f/c;->m:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private f()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/appflood/f/c;->c()I

    iget v0, p0, Lcom/appflood/f/c;->C:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/appflood/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private g()I
    .locals 2

    invoke-direct {p0}, Lcom/appflood/f/c;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/appflood/f/c;->b()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private h()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/appflood/f/c;->c()I

    iget v0, p0, Lcom/appflood/f/c;->C:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/appflood/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/appflood/f/c;->d:I

    iput v0, p0, Lcom/appflood/f/c;->L:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/c;->b:Ljava/util/Vector;

    iput-object v1, p0, Lcom/appflood/f/c;->i:[I

    iput-object v1, p0, Lcom/appflood/f/c;->j:[I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/appflood/f/c;->c:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/appflood/f/c;->e()V

    invoke-direct {p0}, Lcom/appflood/f/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/appflood/f/c;->d()V

    iget v0, p0, Lcom/appflood/f/c;->L:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/appflood/f/c;->d:I

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/appflood/f/c;->d:I

    return v0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/appflood/f/c;->d:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/appflood/f/c;->L:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/appflood/f/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appflood/f/c$a;

    iget-object v0, v0, Lcom/appflood/f/c$a;->a:Landroid/graphics/Bitmap;

    :cond_0
    return-object v0
.end method
