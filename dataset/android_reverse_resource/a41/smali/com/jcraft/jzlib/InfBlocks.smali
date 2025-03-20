.class final Lcom/jcraft/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field private static final BAD:I = 0x9

.field private static final BTREE:I = 0x4

.field private static final CODES:I = 0x6

.field private static final DONE:I = 0x8

.field private static final DRY:I = 0x7

.field private static final DTREE:I = 0x5

.field private static final LENS:I = 0x1

.field private static final MANY:I = 0x5a0

.field private static final STORED:I = 0x2

.field private static final TABLE:I = 0x3

.field private static final TYPE:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field static final border:[I

.field private static final inflate_mask:[I


# instance fields
.field bb:[I

.field bitb:I

.field bitk:I

.field blens:[I

.field check:J

.field checkfn:Ljava/lang/Object;

.field codes:Lcom/jcraft/jzlib/InfCodes;

.field end:I

.field hufts:[I

.field index:I

.field inftree:Lcom/jcraft/jzlib/InfTree;

.field last:I

.field left:I

.field mode:I

.field read:I

.field table:I

.field tb:[I

.field window:[B

.field write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    .line 49
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jcraft/jzlib/InfBlocks;->border:[I

    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data

    .line 49
    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Lcom/jcraft/jzlib/ZStream;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;
    .param p2, "checkfn"    # Ljava/lang/Object;
    .param p3, "w"    # I

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->bb:[I

    .line 82
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    .line 84
    new-instance v0, Lcom/jcraft/jzlib/InfCodes;

    invoke-direct {v0}, Lcom/jcraft/jzlib/InfCodes;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    .line 99
    new-instance v0, Lcom/jcraft/jzlib/InfTree;

    invoke-direct {v0}, Lcom/jcraft/jzlib/InfTree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->inftree:Lcom/jcraft/jzlib/InfTree;

    .line 102
    const/16 v0, 0x10e0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    .line 103
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 104
    iput p3, p0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    .line 105
    iput-object p2, p0, Lcom/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jzlib/InfBlocks;->reset(Lcom/jcraft/jzlib/ZStream;[J)V

    .line 108
    return-void
.end method


# virtual methods
.method free(Lcom/jcraft/jzlib/ZStream;)V
    .locals 1
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;

    .prologue
    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jzlib/InfBlocks;->reset(Lcom/jcraft/jzlib/ZStream;[J)V

    .line 537
    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 538
    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    .line 540
    return-void
.end method

.method inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 10
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;
    .param p2, "r"    # I

    .prologue
    const/4 v7, -0x5

    .line 560
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 561
    .local v0, "p":I
    iget v5, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 564
    .local v5, "q":I
    iget v1, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    if-gt v5, v1, :cond_8

    iget v1, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    :goto_0
    sub-int v6, v1, v5

    .line 565
    .local v6, "n":I
    iget v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-le v6, v1, :cond_0

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 566
    :cond_0
    if-eqz v6, :cond_1

    if-ne p2, v7, :cond_1

    const/4 p2, 0x0

    .line 569
    :cond_1
    iget v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v6

    iput v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 570
    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    int-to-long v8, v6

    add-long/2addr v2, v8

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 573
    iget-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    iget-wide v2, p0, Lcom/jcraft/jzlib/InfBlocks;->check:J

    iget-object v4, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    invoke-virtual/range {v1 .. v6}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jcraft/jzlib/InfBlocks;->check:J

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 577
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    invoke-static {v1, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    add-int/2addr v0, v6

    .line 579
    add-int/2addr v5, v6

    .line 582
    iget v1, p0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v5, v1, :cond_7

    .line 584
    const/4 v5, 0x0

    .line 585
    iget v1, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v2, p0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v1, v2, :cond_3

    .line 586
    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 589
    :cond_3
    iget v1, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    sub-int v6, v1, v5

    .line 590
    iget v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-le v6, v1, :cond_4

    iget v6, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 591
    :cond_4
    if-eqz v6, :cond_5

    if-ne p2, v7, :cond_5

    const/4 p2, 0x0

    .line 594
    :cond_5
    iget v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v6

    iput v1, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 595
    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    int-to-long v8, v6

    add-long/2addr v2, v8

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 598
    iget-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 599
    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    iget-wide v2, p0, Lcom/jcraft/jzlib/InfBlocks;->check:J

    iget-object v4, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    invoke-virtual/range {v1 .. v6}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jcraft/jzlib/InfBlocks;->check:J

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 602
    :cond_6
    iget-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    invoke-static {v1, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    add-int/2addr v0, v6

    .line 604
    add-int/2addr v5, v6

    .line 608
    :cond_7
    iput v0, p1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 609
    iput v5, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 612
    return p2

    .line 564
    .end local v6    # "n":I
    :cond_8
    iget v1, p0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    goto :goto_0
.end method

.method proc(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 32
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;
    .param p2, "r"    # I

    .prologue
    .line 136
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v28, v0

    .local v28, "p":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v27, v0

    .local v27, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v20, v0

    .local v20, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v25, v0

    .line 137
    .local v25, "k":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v30, v0

    .local v30, "q":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v30

    add-int/lit8 v26, v4, -0x1

    .line 141
    .local v26, "m":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    packed-switch v4, :pswitch_data_0

    .line 525
    const/16 p2, -0x2

    .line 527
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 528
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 529
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 530
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    :goto_1
    return v4

    .line 137
    .end local v26    # "m":I
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v26, v4, v30

    goto :goto_0

    .line 144
    .end local v28    # "p":I
    .restart local v26    # "m":I
    .local v29, "p":I
    :goto_2
    const/4 v4, 0x3

    move/from16 v0, v25

    if-ge v0, v4, :cond_3

    .line 145
    if-eqz v27, :cond_2

    .line 146
    const/16 p2, 0x0

    .line 155
    add-int/lit8 v27, v27, -0x1

    .line 156
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "p":I
    .restart local v28    # "p":I
    aget-byte v4, v4, v29

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v25

    or-int v20, v20, v4

    .line 157
    add-int/lit8 v25, v25, 0x8

    move/from16 v29, v28

    .line 158
    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto :goto_2

    .line 149
    :cond_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 150
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 151
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 152
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 153
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto :goto_1

    .line 159
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_3
    and-int/lit8 v31, v20, 0x7

    .line 160
    .local v31, "t":I
    and-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    .line 162
    ushr-int/lit8 v4, v31, 0x1

    packed-switch v4, :pswitch_data_1

    :goto_3
    move/from16 v28, v29

    .line 203
    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_0

    .line 164
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :pswitch_0
    ushr-int/lit8 v20, v20, 0x3

    add-int/lit8 v25, v25, -0x3

    .line 165
    and-int/lit8 v31, v25, 0x7

    .line 167
    ushr-int v20, v20, v31

    sub-int v25, v25, v31

    .line 168
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    goto :goto_3

    .line 172
    :pswitch_1
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 173
    .local v8, "bl":[I
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 174
    .local v9, "bd":[I
    const/4 v4, 0x1

    new-array v10, v4, [[I

    .line 175
    .local v10, "tl":[[I
    const/4 v4, 0x1

    new-array v11, v4, [[I

    .line 177
    .local v11, "td":[[I
    move-object/from16 v0, p1

    invoke-static {v8, v9, v10, v11, v0}, Lcom/jcraft/jzlib/InfTree;->inflate_trees_fixed([I[I[[I[[ILcom/jcraft/jzlib/ZStream;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    const/4 v5, 0x0

    aget v5, v8, v5

    const/4 v6, 0x0

    aget v6, v9, v6

    const/4 v7, 0x0

    aget-object v7, v10, v7

    const/4 v8, 0x0

    const/4 v12, 0x0

    aget-object v9, v11, v12

    .end local v8    # "bl":[I
    .end local v9    # "bd":[I
    const/4 v10, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/jcraft/jzlib/InfCodes;->init(II[II[IILcom/jcraft/jzlib/ZStream;)V

    .line 181
    .end local v10    # "tl":[[I
    .end local v11    # "td":[[I
    ushr-int/lit8 v20, v20, 0x3

    add-int/lit8 v25, v25, -0x3

    .line 183
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    goto :goto_3

    .line 187
    :pswitch_2
    ushr-int/lit8 v20, v20, 0x3

    add-int/lit8 v25, v25, -0x3

    .line 189
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    goto :goto_3

    .line 193
    :pswitch_3
    ushr-int/lit8 v20, v20, 0x3

    add-int/lit8 v25, v25, -0x3

    .line 194
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 195
    const-string v4, "invalid block type"

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 196
    const/16 p2, -0x3

    .line 198
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 199
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 200
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 201
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 206
    .end local v28    # "p":I
    .end local v31    # "t":I
    .restart local v29    # "p":I
    :goto_4
    const/16 v4, 0x20

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    .line 207
    if-eqz v27, :cond_4

    .line 208
    const/16 p2, 0x0

    .line 217
    add-int/lit8 v27, v27, -0x1

    .line 218
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "p":I
    .restart local v28    # "p":I
    aget-byte v4, v4, v29

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v25

    or-int v20, v20, v4

    .line 219
    add-int/lit8 v25, v25, 0x8

    move/from16 v29, v28

    .line 220
    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto :goto_4

    .line 211
    :cond_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 212
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 213
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 214
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 215
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 222
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_5
    xor-int/lit8 v4, v20, -0x1

    ushr-int/lit8 v4, v4, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    const v5, 0xffff

    and-int v5, v5, v20

    if-eq v4, v5, :cond_6

    .line 223
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 224
    const-string v4, "invalid stored block lengths"

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 225
    const/16 p2, -0x3

    .line 227
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 228
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 229
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 230
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 232
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_6
    const v4, 0xffff

    and-int v4, v4, v20

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    .line 233
    const/16 v25, 0x0

    move/from16 v20, v25

    .line 234
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    move/from16 v28, v29

    .line 235
    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_0

    .line 234
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    if-eqz v4, :cond_8

    const/4 v4, 0x7

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 237
    .end local v29    # "p":I
    .restart local v28    # "p":I
    :pswitch_4
    if-nez v27, :cond_9

    .line 238
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 239
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 240
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 241
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 244
    :cond_9
    if-nez v26, :cond_f

    .line 245
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v0, v30

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v4, :cond_a

    .line 246
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v30

    add-int/lit8 v26, v4, -0x1

    .line 248
    :cond_a
    :goto_6
    if-nez v26, :cond_f

    .line 249
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 250
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p2

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v30

    add-int/lit8 v26, v4, -0x1

    .line 252
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v0, v30

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v4, :cond_b

    .line 253
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v30

    add-int/lit8 v26, v4, -0x1

    .line 255
    :cond_b
    :goto_8
    if-nez v26, :cond_f

    .line 256
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 257
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 258
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 259
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 246
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v26, v4, v30

    goto :goto_6

    .line 251
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v26, v4, v30

    goto :goto_7

    .line 253
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v26, v4, v30

    goto :goto_8

    .line 263
    :cond_f
    const/16 p2, 0x0

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    move/from16 v31, v0

    .line 266
    .restart local v31    # "t":I
    move/from16 v0, v31

    move/from16 v1, v27

    if-le v0, v1, :cond_10

    move/from16 v31, v27

    .line 267
    :cond_10
    move/from16 v0, v31

    move/from16 v1, v26

    if-le v0, v1, :cond_11

    move/from16 v31, v26

    .line 268
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v4, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    add-int v28, v28, v31

    sub-int v27, v27, v31

    .line 270
    add-int v30, v30, v31

    sub-int v26, v26, v31

    .line 271
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    sub-int v4, v4, v31

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    if-nez v4, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    if-eqz v4, :cond_12

    const/4 v4, 0x7

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x0

    goto :goto_9

    .line 277
    .end local v28    # "p":I
    .end local v31    # "t":I
    .restart local v29    # "p":I
    :goto_a
    const/16 v4, 0xe

    move/from16 v0, v25

    if-ge v0, v4, :cond_14

    .line 278
    if-eqz v27, :cond_13

    .line 279
    const/16 p2, 0x0

    .line 288
    add-int/lit8 v27, v27, -0x1

    .line 289
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "p":I
    .restart local v28    # "p":I
    aget-byte v4, v4, v29

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v25

    or-int v20, v20, v4

    .line 290
    add-int/lit8 v25, v25, 0x8

    move/from16 v29, v28

    .line 291
    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto :goto_a

    .line 282
    :cond_13
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 283
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 284
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 285
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 286
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 293
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_14
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x3fff

    move/from16 v31, v0

    .restart local v31    # "t":I
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->table:I

    .line 294
    and-int/lit8 v4, v31, 0x1f

    const/16 v5, 0x1d

    if-gt v4, v5, :cond_15

    shr-int/lit8 v4, v31, 0x5

    and-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x1d

    if-le v4, v5, :cond_16

    .line 296
    :cond_15
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 297
    const-string v4, "too many length or distance symbols"

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 298
    const/16 p2, -0x3

    .line 300
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 301
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 302
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 303
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 305
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_16
    and-int/lit8 v4, v31, 0x1f

    add-int/lit16 v4, v4, 0x102

    shr-int/lit8 v5, v31, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int v31, v4, v5

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    array-length v4, v4

    move/from16 v0, v31

    if-ge v4, v0, :cond_19

    .line 307
    :cond_17
    move/from16 v0, v31

    new-array v4, v0, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    .line 313
    :cond_18
    ushr-int/lit8 v20, v20, 0xe

    add-int/lit8 v25, v25, -0xe

    .line 315
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    .line 316
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    move/from16 v28, v29

    .line 318
    .end local v29    # "p":I
    .end local v31    # "t":I
    .restart local v28    # "p":I
    :goto_b
    :pswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    ushr-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_1c

    move/from16 v29, v28

    .line 319
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :goto_c
    const/4 v4, 0x3

    move/from16 v0, v25

    if-ge v0, v4, :cond_1b

    .line 320
    if-eqz v27, :cond_1a

    .line 321
    const/16 p2, 0x0

    .line 330
    add-int/lit8 v27, v27, -0x1

    .line 331
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "p":I
    .restart local v28    # "p":I
    aget-byte v4, v4, v29

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v25

    or-int v20, v20, v4

    .line 332
    add-int/lit8 v25, v25, 0x8

    move/from16 v29, v28

    .line 333
    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto :goto_c

    .line 310
    .restart local v31    # "t":I
    :cond_19
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_d
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    const/4 v5, 0x0

    aput v5, v4, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 324
    .end local v22    # "i":I
    .end local v31    # "t":I
    :cond_1a
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 325
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 326
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 327
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 328
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 335
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    sget-object v5, Lcom/jcraft/jzlib/InfBlocks;->border:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    aget v5, v5, v6

    and-int/lit8 v6, v20, 0x7

    aput v6, v4, v5

    .line 337
    ushr-int/lit8 v20, v20, 0x3

    add-int/lit8 v25, v25, -0x3

    move/from16 v28, v29

    .line 338
    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_b

    .line 340
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1d

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    sget-object v5, Lcom/jcraft/jzlib/InfBlocks;->border:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    aget v5, v5, v6

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_e

    .line 344
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bb:[I

    const/4 v5, 0x0

    const/4 v6, 0x7

    aput v6, v4, v5

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->inftree:Lcom/jcraft/jzlib/InfTree;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bb:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/jcraft/jzlib/InfTree;->inflate_trees_bits([I[I[I[ILcom/jcraft/jzlib/ZStream;)I

    move-result v31

    .line 346
    .restart local v31    # "t":I
    if-eqz v31, :cond_1f

    .line 347
    move/from16 p2, v31

    .line 348
    const/4 v4, -0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_1e

    .line 349
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    .line 350
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 353
    :cond_1e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 354
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 355
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 356
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 359
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    .line 360
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 363
    .end local v31    # "t":I
    :goto_f
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    move/from16 v31, v0

    .line 364
    .restart local v31    # "t":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    and-int/lit8 v5, v31, 0x1f

    add-int/lit16 v5, v5, 0x102

    shr-int/lit8 v6, v31, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_21

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 452
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 453
    .restart local v8    # "bl":[I
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 454
    .restart local v9    # "bd":[I
    const/4 v4, 0x1

    new-array v10, v4, [I

    .line 455
    .local v10, "tl":[I
    const/4 v4, 0x1

    new-array v11, v4, [I

    .line 456
    .local v11, "td":[I
    const/4 v4, 0x0

    const/16 v5, 0x9

    aput v5, v8, v4

    .line 457
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput v5, v9, v4

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    move/from16 v31, v0

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->inftree:Lcom/jcraft/jzlib/InfTree;

    and-int/lit8 v5, v31, 0x1f

    add-int/lit16 v5, v5, 0x101

    shr-int/lit8 v6, v31, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v13, p1

    invoke-virtual/range {v4 .. v13}, Lcom/jcraft/jzlib/InfTree;->inflate_trees_dynamic(II[I[I[I[I[I[ILcom/jcraft/jzlib/ZStream;)I

    move-result v31

    .line 464
    if-eqz v31, :cond_2d

    .line 465
    const/4 v4, -0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_20

    .line 466
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    .line 467
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 469
    :cond_20
    move/from16 p2, v31

    .line 471
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 472
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 473
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 474
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 371
    .end local v8    # "bl":[I
    .end local v9    # "bd":[I
    .end local v10    # "tl":[I
    .end local v11    # "td":[I
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bb:[I

    const/4 v5, 0x0

    aget v31, v4, v5

    move/from16 v29, v28

    .line 373
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :goto_10
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_23

    .line 374
    if-eqz v27, :cond_22

    .line 375
    const/16 p2, 0x0

    .line 384
    add-int/lit8 v27, v27, -0x1

    .line 385
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "p":I
    .restart local v28    # "p":I
    aget-byte v4, v4, v29

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v25

    or-int v20, v20, v4

    .line 386
    add-int/lit8 v25, v25, 0x8

    move/from16 v29, v28

    .line 387
    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto :goto_10

    .line 378
    :cond_22
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 379
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 380
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 381
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 382
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 389
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 393
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lcom/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    aget v6, v6, v31

    and-int v6, v6, v20

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v31, v4, v5

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lcom/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    aget v6, v6, v31

    and-int v6, v6, v20

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aget v21, v4, v5

    .line 396
    .local v21, "c":I
    const/16 v4, 0x10

    move/from16 v0, v21

    if-ge v0, v4, :cond_25

    .line 397
    ushr-int v20, v20, v31

    sub-int v25, v25, v31

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    aput v21, v4, v5

    move/from16 v28, v29

    .line 399
    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_f

    .line 401
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_25
    const/16 v4, 0x12

    move/from16 v0, v21

    if-ne v0, v4, :cond_26

    const/16 v22, 0x7

    .line 402
    .restart local v22    # "i":I
    :goto_11
    const/16 v4, 0x12

    move/from16 v0, v21

    if-ne v0, v4, :cond_27

    const/16 v24, 0xb

    .line 404
    .local v24, "j":I
    :goto_12
    add-int v4, v31, v22

    move/from16 v0, v25

    if-ge v0, v4, :cond_29

    .line 405
    if-eqz v27, :cond_28

    .line 406
    const/16 p2, 0x0

    .line 415
    add-int/lit8 v27, v27, -0x1

    .line 416
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v28, v29, 0x1

    .end local v29    # "p":I
    .restart local v28    # "p":I
    aget-byte v4, v4, v29

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v25

    or-int v20, v20, v4

    .line 417
    add-int/lit8 v25, v25, 0x8

    move/from16 v29, v28

    .line 418
    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto :goto_12

    .line 401
    .end local v22    # "i":I
    .end local v24    # "j":I
    :cond_26
    add-int/lit8 v22, v21, -0xe

    goto :goto_11

    .line 402
    .restart local v22    # "i":I
    :cond_27
    const/16 v24, 0x3

    goto :goto_12

    .line 409
    .restart local v24    # "j":I
    :cond_28
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 410
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 411
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 412
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 413
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 420
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_29
    ushr-int v20, v20, v31

    sub-int v25, v25, v31

    .line 422
    sget-object v4, Lcom/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    aget v4, v4, v22

    and-int v4, v4, v20

    add-int v24, v24, v4

    .line 424
    ushr-int v20, v20, v22

    sub-int v25, v25, v22

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    move/from16 v22, v0

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    move/from16 v31, v0

    .line 428
    add-int v4, v22, v24

    and-int/lit8 v5, v31, 0x1f

    add-int/lit16 v5, v5, 0x102

    shr-int/lit8 v6, v31, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_2a

    const/16 v4, 0x10

    move/from16 v0, v21

    if-ne v0, v4, :cond_2b

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ge v0, v4, :cond_2b

    .line 430
    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    .line 431
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 432
    const-string v4, "invalid bit length repeat"

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 433
    const/16 p2, -0x3

    .line 435
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 436
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v29, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 437
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 438
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_1

    .line 441
    .end local v28    # "p":I
    .restart local v29    # "p":I
    :cond_2b
    const/16 v4, 0x10

    move/from16 v0, v21

    if-ne v0, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v5, v22, -0x1

    aget v21, v4, v5

    .line 443
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v23, v22, 0x1

    .end local v22    # "i":I
    .local v23, "i":I
    aput v21, v4, v22

    .line 445
    add-int/lit8 v24, v24, -0x1

    if-nez v24, :cond_33

    .line 446
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->index:I

    move/from16 v28, v29

    .end local v29    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_f

    .line 441
    .end local v23    # "i":I
    .end local v28    # "p":I
    .restart local v22    # "i":I
    .restart local v29    # "p":I
    :cond_2c
    const/16 v21, 0x0

    goto :goto_13

    .line 476
    .end local v21    # "c":I
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v29    # "p":I
    .restart local v8    # "bl":[I
    .restart local v9    # "bd":[I
    .restart local v10    # "tl":[I
    .restart local v11    # "td":[I
    .restart local v28    # "p":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    const/4 v4, 0x0

    aget v13, v8, v4

    const/4 v4, 0x0

    aget v14, v9, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    const/4 v4, 0x0

    aget v16, v10, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v17, v0

    const/4 v4, 0x0

    aget v18, v11, v4

    move-object/from16 v19, p1

    invoke-virtual/range {v12 .. v19}, Lcom/jcraft/jzlib/InfCodes;->init(II[II[IILcom/jcraft/jzlib/ZStream;)V

    .line 478
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 480
    .end local v8    # "bl":[I
    .end local v9    # "bd":[I
    .end local v10    # "tl":[I
    .end local v11    # "td":[I
    .end local v31    # "t":I
    :pswitch_7
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 481
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 482
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2}, Lcom/jcraft/jzlib/InfCodes;->proc(Lcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;I)I

    move-result p2

    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_2e

    .line 485
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 487
    :cond_2e
    const/16 p2, 0x0

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/jcraft/jzlib/InfCodes;->free(Lcom/jcraft/jzlib/ZStream;)V

    .line 490
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v25, v0

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v30

    add-int/lit8 v26, v4, -0x1

    .line 493
    :goto_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    if-nez v4, :cond_30

    .line 494
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    goto/16 :goto_0

    .line 491
    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v26, v4, v30

    goto :goto_14

    .line 497
    :cond_30
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 499
    :pswitch_8
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 500
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p2

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    sub-int v4, v4, v30

    add-int/lit8 v26, v4, -0x1

    .line 502
    :goto_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    if-eq v4, v5, :cond_32

    .line 503
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 504
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 505
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 506
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 501
    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v26, v4, v30

    goto :goto_15

    .line 508
    :cond_32
    const/16 v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 510
    :pswitch_9
    const/16 p2, 0x1

    .line 512
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 513
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 514
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 515
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .line 517
    :pswitch_a
    const/16 p2, -0x3

    .line 519
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 520
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v6, v28, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 521
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 522
    invoke-virtual/range {p0 .. p2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_1

    .end local v28    # "p":I
    .restart local v21    # "c":I
    .restart local v23    # "i":I
    .restart local v24    # "j":I
    .restart local v29    # "p":I
    .restart local v31    # "t":I
    :cond_33
    move/from16 v22, v23

    .end local v23    # "i":I
    .restart local v22    # "i":I
    goto/16 :goto_13

    .end local v21    # "c":I
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v29    # "p":I
    .end local v31    # "t":I
    .restart local v28    # "p":I
    :pswitch_b
    move/from16 v29, v28

    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto/16 :goto_a

    .end local v29    # "p":I
    .restart local v28    # "p":I
    :pswitch_c
    move/from16 v29, v28

    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto/16 :goto_4

    .end local v29    # "p":I
    .restart local v28    # "p":I
    :pswitch_d
    move/from16 v29, v28

    .end local v28    # "p":I
    .restart local v29    # "p":I
    goto/16 :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 162
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method reset(Lcom/jcraft/jzlib/ZStream;[J)V
    .locals 7
    .param p1, "z"    # Lcom/jcraft/jzlib/ZStream;
    .param p2, "c"    # [J

    .prologue
    const/4 v5, 0x0

    .line 111
    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/jcraft/jzlib/InfBlocks;->check:J

    aput-wide v0, p2, v5

    .line 112
    :cond_0
    iget v0, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 114
    :cond_1
    iget v0, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/InfCodes;->free(Lcom/jcraft/jzlib/ZStream;)V

    .line 117
    :cond_2
    iput v5, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 118
    iput v5, p0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 119
    iput v5, p0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    .line 120
    iput v5, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iput v5, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 122
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 123
    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jcraft/jzlib/InfBlocks;->check:J

    iput-wide v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 124
    :cond_3
    return-void
.end method

.method set_dictionary([BII)V
    .locals 2
    .param p1, "d"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iput p3, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iput p3, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 545
    return-void
.end method

.method sync_point()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 550
    iget v1, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
