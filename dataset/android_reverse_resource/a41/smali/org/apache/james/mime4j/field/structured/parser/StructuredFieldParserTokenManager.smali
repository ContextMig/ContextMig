.class public Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;
.super Ljava/lang/Object;
.source "StructuredFieldParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 67
    new-array v0, v3, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    .line 534
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    .line 538
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 543
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 551
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    .line 554
    new-array v0, v5, [J

    const-wide/32 v2, 0xf801

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    .line 557
    new-array v0, v5, [J

    const-wide/16 v2, 0x3fe

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    .line 560
    new-array v0, v5, [J

    const-wide/16 v2, 0x400

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoMore:[J

    return-void

    .line 67
    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 551
    :array_1
    .array-data 4
        -0x1
        0x1
        0x0
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 564
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    .line 565
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 567
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 640
    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 641
    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    .line 575
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .line 576
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 581
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    .line 582
    return-void
.end method

.method private ReInitRounds()V
    .locals 4

    .prologue
    .line 595
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    .line 596
    const/4 v0, 0x6

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 597
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 598
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 810
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 811
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 812
    return-void

    :cond_0
    move p1, v0

    .end local v0    # "start":I
    .restart local p1    # "start":I
    goto :goto_0
.end method

.method private jjCheckNAdd(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 801
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 803
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 804
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 806
    :cond_0
    return-void
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 816
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 817
    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 16
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 72
    const/4 v10, 0x0

    .line 73
    .local v10, "startsAt":I
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 74
    const/4 v3, 0x1

    .line 75
    .local v3, "i":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    .line 76
    const v5, 0x7fffffff

    .line 79
    .local v5, "kind":I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    .line 80
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 81
    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_7

    .line 83
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v6, v12, v11

    .line 86
    .local v6, "l":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    .line 116
    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    .line 154
    .end local v6    # "l":J
    :goto_2
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_3

    .line 156
    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 157
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 158
    const v5, 0x7fffffff

    .line 160
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 161
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x2

    if-ne v3, v10, :cond_d

    .line 164
    :goto_3
    return p2

    .line 89
    .restart local v6    # "l":J
    :pswitch_0
    const-wide v12, -0x10500002601L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    .line 91
    const/16 v11, 0xf

    if-le v5, v11, :cond_4

    .line 92
    const/16 v5, 0xf

    .line 93
    :cond_4
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 95
    :cond_5
    const-wide v12, 0x100002600L    # 2.122000597E-314

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 97
    const/16 v11, 0xe

    if-le v5, v11, :cond_6

    .line 98
    const/16 v5, 0xe

    .line 99
    :cond_6
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 103
    :pswitch_1
    const-wide v12, 0x100002600L    # 2.122000597E-314

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 105
    const/16 v5, 0xe

    .line 106
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 109
    :pswitch_2
    const-wide v12, -0x10500002601L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 111
    const/16 v5, 0xf

    .line 112
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 118
    .end local v6    # "l":J
    :cond_7
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_9

    .line 120
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v12, v11

    .line 123
    .restart local v6    # "l":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    .line 132
    :goto_4
    if-ne v3, v10, :cond_8

    goto/16 :goto_2

    .line 127
    :pswitch_3
    const/16 v5, 0xf

    .line 128
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 136
    .end local v6    # "l":J
    :cond_9
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    .line 137
    .local v4, "i2":I
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v8, v12, v11

    .line 140
    .local v8, "l2":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    .line 152
    :cond_b
    :goto_5
    if-ne v3, v10, :cond_a

    goto/16 :goto_2

    .line 144
    :pswitch_4
    sget-object v11, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_b

    .line 146
    const/16 v11, 0xf

    if-le v5, v11, :cond_c

    .line 147
    const/16 v5, 0xf

    .line 148
    :cond_c
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 163
    .end local v4    # "i2":I
    .end local v8    # "l2":J
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 140
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 16
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 193
    const/4 v10, 0x0

    .line 194
    .local v10, "startsAt":I
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 195
    const/4 v3, 0x1

    .line 196
    .local v3, "i":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    .line 197
    const v5, 0x7fffffff

    .line 200
    .local v5, "kind":I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    .line 201
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 202
    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_4

    .line 204
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v6, v12, v11

    .line 207
    .local v6, "l":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    .line 215
    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    .line 247
    .end local v6    # "l":J
    :goto_2
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_3

    .line 249
    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 250
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 251
    const v5, 0x7fffffff

    .line 253
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 254
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x1

    if-ne v3, v10, :cond_9

    .line 257
    :goto_3
    return p2

    .line 210
    .restart local v6    # "l":J
    :pswitch_0
    const-wide v12, -0x30000000001L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 211
    const/4 v5, 0x4

    goto :goto_1

    .line 217
    .end local v6    # "l":J
    :cond_4
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_6

    .line 219
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v12, v11

    .line 222
    .restart local v6    # "l":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    .line 229
    :goto_4
    if-ne v3, v10, :cond_5

    goto :goto_2

    .line 225
    :pswitch_1
    const/4 v5, 0x4

    .line 226
    goto :goto_4

    .line 233
    .end local v6    # "l":J
    :cond_6
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    .line 234
    .local v4, "i2":I
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v8, v12, v11

    .line 237
    .local v8, "l2":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    .line 245
    :cond_8
    :goto_5
    if-ne v3, v10, :cond_7

    goto :goto_2

    .line 240
    :pswitch_2
    sget-object v11, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_8

    const/4 v11, 0x4

    if-le v5, v11, :cond_8

    .line 241
    const/4 v5, 0x4

    goto :goto_5

    .line 256
    .end local v4    # "i2":I
    .end local v8    # "l2":J
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 257
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_3

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 222
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 237
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private jjMoveNfa_2(II)I
    .locals 16
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 443
    const/4 v10, 0x0

    .line 444
    .local v10, "startsAt":I
    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 445
    const/4 v3, 0x1

    .line 446
    .local v3, "i":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    .line 447
    const v5, 0x7fffffff

    .line 450
    .local v5, "kind":I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    .line 451
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 452
    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_5

    .line 454
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v6, v12, v11

    .line 457
    .local v6, "l":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    .line 470
    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    .line 521
    .end local v6    # "l":J
    :goto_2
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_3

    .line 523
    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 524
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 525
    const v5, 0x7fffffff

    .line 527
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 528
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x3

    if-ne v3, v10, :cond_e

    .line 531
    :goto_3
    return p2

    .line 460
    .restart local v6    # "l":J
    :pswitch_0
    const-wide v12, -0x30000000001L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    const/16 v11, 0x8

    if-le v5, v11, :cond_2

    .line 461
    const/16 v5, 0x8

    goto :goto_1

    .line 464
    :pswitch_1
    const/4 v11, 0x7

    if-le v5, v11, :cond_4

    .line 465
    const/4 v5, 0x7

    .line 466
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_1

    .line 472
    .end local v6    # "l":J
    :cond_5
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_a

    .line 474
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v12, v11

    .line 477
    .restart local v6    # "l":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    .line 496
    :cond_7
    :goto_4
    if-ne v3, v10, :cond_6

    goto :goto_2

    .line 480
    :pswitch_2
    const/16 v11, 0x8

    if-le v5, v11, :cond_8

    .line 481
    const/16 v5, 0x8

    .line 482
    :cond_8
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_7

    .line 483
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 486
    :pswitch_3
    const/4 v11, 0x7

    if-le v5, v11, :cond_9

    .line 487
    const/4 v5, 0x7

    .line 488
    :cond_9
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 491
    :pswitch_4
    const/16 v11, 0x8

    if-le v5, v11, :cond_7

    .line 492
    const/16 v5, 0x8

    goto :goto_4

    .line 500
    .end local v6    # "l":J
    :cond_a
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    .line 501
    .local v4, "i2":I
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v8, v12, v11

    .line 504
    .local v8, "l2":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    .line 519
    :cond_c
    :goto_5
    if-ne v3, v10, :cond_b

    goto/16 :goto_2

    .line 507
    :pswitch_5
    sget-object v11, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_c

    const/16 v11, 0x8

    if-le v5, v11, :cond_c

    .line 508
    const/16 v5, 0x8

    goto :goto_5

    .line 511
    :pswitch_6
    sget-object v11, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_c

    .line 513
    const/4 v11, 0x7

    if-le v5, v11, :cond_d

    .line 514
    const/4 v5, 0x7

    .line 515
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_5

    .line 530
    .end local v4    # "i2":I
    .end local v8    # "l2":J
    :cond_e
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 531
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 477
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 504
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private jjMoveNfa_3(II)I
    .locals 16
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 284
    const/4 v10, 0x0

    .line 285
    .local v10, "startsAt":I
    const/4 v11, 0x6

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 286
    const/4 v3, 0x1

    .line 287
    .local v3, "i":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    .line 288
    const v5, 0x7fffffff

    .line 291
    .local v5, "kind":I
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    .line 292
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 293
    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_a

    .line 295
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v6, v12, v11

    .line 298
    .local v6, "l":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    .line 342
    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    .line 404
    .end local v6    # "l":J
    :goto_2
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_3

    .line 406
    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 407
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 408
    const v5, 0x7fffffff

    .line 410
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 411
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x6

    if-ne v3, v10, :cond_16

    .line 414
    :goto_3
    return p2

    .line 301
    .restart local v6    # "l":J
    :pswitch_0
    const-wide v12, -0x400002001L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    .line 303
    const/16 v11, 0xb

    if-le v5, v11, :cond_4

    .line 304
    const/16 v5, 0xb

    .line 305
    :cond_4
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 307
    :cond_5
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0xd

    if-ne v11, v12, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x3

    aput v13, v11, v12

    goto :goto_1

    .line 311
    :pswitch_1
    const/16 v11, 0xa

    if-le v5, v11, :cond_6

    .line 312
    const/16 v5, 0xa

    .line 313
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_1

    .line 316
    :pswitch_2
    const-wide v12, -0x400002001L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 318
    const/16 v11, 0xb

    if-le v5, v11, :cond_7

    .line 319
    const/16 v5, 0xb

    .line 320
    :cond_7
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 323
    :pswitch_3
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0xa

    if-ne v11, v12, :cond_2

    .line 325
    const/16 v11, 0xc

    if-le v5, v11, :cond_8

    .line 326
    const/16 v5, 0xc

    .line 327
    :cond_8
    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 330
    :pswitch_4
    const-wide v12, 0x100000200L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 332
    const/16 v11, 0xc

    if-le v5, v11, :cond_9

    .line 333
    const/16 v5, 0xc

    .line 334
    :cond_9
    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 337
    :pswitch_5
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0xd

    if-ne v11, v12, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x3

    aput v13, v11, v12

    goto/16 :goto_1

    .line 344
    .end local v6    # "l":J
    :cond_a
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_11

    .line 346
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v12, v11

    .line 349
    .restart local v6    # "l":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    .line 375
    :cond_c
    :goto_4
    if-ne v3, v10, :cond_b

    goto/16 :goto_2

    .line 352
    :pswitch_6
    const-wide/32 v12, -0x10000001

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_e

    .line 354
    const/16 v11, 0xb

    if-le v5, v11, :cond_d

    .line 355
    const/16 v5, 0xb

    .line 356
    :cond_d
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 358
    :cond_e
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_c

    .line 359
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 362
    :pswitch_7
    const/16 v11, 0xa

    if-le v5, v11, :cond_f

    .line 363
    const/16 v5, 0xa

    .line 364
    :cond_f
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 367
    :pswitch_8
    const-wide/32 v12, -0x10000001

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_c

    .line 369
    const/16 v11, 0xb

    if-le v5, v11, :cond_10

    .line 370
    const/16 v5, 0xb

    .line 371
    :cond_10
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 379
    .end local v6    # "l":J
    :cond_11
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    .line 380
    .local v4, "i2":I
    const-wide/16 v12, 0x1

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v8, v12, v11

    .line 383
    .local v8, "l2":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    .line 402
    :cond_13
    :goto_5
    if-ne v3, v10, :cond_12

    goto/16 :goto_2

    .line 387
    :pswitch_9
    sget-object v11, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_13

    .line 389
    const/16 v11, 0xb

    if-le v5, v11, :cond_14

    .line 390
    const/16 v5, 0xb

    .line 391
    :cond_14
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 394
    :pswitch_a
    sget-object v11, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_13

    .line 396
    const/16 v11, 0xa

    if-le v5, v11, :cond_15

    .line 397
    const/16 v5, 0xa

    .line 398
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_5

    .line 413
    .end local v4    # "i2":I
    .end local v8    # "l2":J
    :cond_16
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 414
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 383
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 64
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 60
    :sswitch_0
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 62
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 188
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 438
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 434
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 436
    :pswitch_1
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 279
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 277
    :pswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 427
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 51
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 52
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 53
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 39
    .line 42
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 169
    .line 172
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 419
    .line 422
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 262
    .line 265
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 3

    .prologue
    .line 775
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 776
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 786
    :goto_0
    return-void

    .line 779
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 780
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 781
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .prologue
    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 588
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 589
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .line 590
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 591
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 604
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    .line 605
    return-void
.end method

.method SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .locals 5
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/structured/parser/Token;

    .prologue
    const/4 v4, 0x1

    .line 751
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 772
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 754
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 755
    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    goto :goto_0

    .line 758
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 759
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    goto :goto_0

    .line 762
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 763
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    .line 766
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 767
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .prologue
    .line 610
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 611
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 613
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 614
    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .locals 4
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/structured/parser/Token;

    .prologue
    .line 789
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 798
    :goto_0
    return-void

    .line 792
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 793
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 18

    .prologue
    .line 651
    const/4 v10, 0x0

    .line 658
    .local v10, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->BeginToken()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 672
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_0

    .line 695
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_6

    .line 697
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v10, :cond_1

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    sub-int v4, v10, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    .line 699
    :cond_1
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v8, v2, v4

    const-wide/16 v16, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v2, v2, 0x3f

    shl-long v16, v16, v2

    and-long v8, v8, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-eqz v2, :cond_3

    .line 701
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v13

    .line 702
    .local v13, "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    .line 703
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 704
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    :cond_2
    move-object v14, v13

    .line 705
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .local v14, "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :goto_3
    return-object v14

    .line 660
    .end local v14    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :catch_0
    move-exception v11

    .line 662
    .local v11, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 663
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v13

    .restart local v13    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    move-object v14, v13

    .line 664
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .restart local v14    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    goto :goto_3

    .line 675
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :pswitch_0
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 676
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 677
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v10

    .line 678
    goto :goto_2

    .line 680
    :pswitch_1
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 681
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 682
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v10

    .line 683
    goto/16 :goto_2

    .line 685
    :pswitch_2
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 686
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 687
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v10

    .line 688
    goto/16 :goto_2

    .line 690
    :pswitch_3
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 691
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 692
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v10

    goto/16 :goto_2

    .line 707
    :cond_3
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v8, v2, v4

    const-wide/16 v16, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v2, v2, 0x3f

    shl-long v16, v16, v2

    and-long v8, v8, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-eqz v2, :cond_4

    .line 709
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    .line 710
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 711
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 714
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->MoreLexicalActions()V

    .line 715
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 716
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 717
    :cond_5
    const/4 v10, 0x0

    .line 718
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 720
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 723
    :catch_1
    move-exception v2

    .line 725
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v5

    .line 726
    .local v5, "error_line":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 727
    .local v6, "error_column":I
    const/4 v7, 0x0

    .line 728
    .local v7, "error_after":Ljava/lang/String;
    const/4 v3, 0x0

    .line 729
    .local v3, "EOFSeen":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 740
    :goto_4
    if-nez v3, :cond_7

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    .line 742
    const/4 v2, 0x1

    if-gt v10, v2, :cond_b

    const-string v7, ""

    .line 744
    :cond_7
    :goto_5
    new-instance v2, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v2

    .line 730
    :catch_2
    move-exception v12

    .line 731
    .local v12, "e1":Ljava/io/IOException;
    const/4 v3, 0x1

    .line 732
    const/4 v2, 0x1

    if-gt v10, v2, :cond_9

    const-string v7, ""

    .line 733
    :goto_6
    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-ne v2, v4, :cond_a

    .line 734
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 735
    const/4 v6, 0x0

    goto :goto_4

    .line 732
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 738
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 742
    .end local v12    # "e1":Ljava/io/IOException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 9

    .prologue
    .line 624
    sget-object v7, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget-object v5, v7, v8

    .line 625
    .local v5, "im":Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "curTokenImage":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 627
    .local v1, "beginLine":I
    iget-object v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginColumn()I

    move-result v0

    .line 628
    .local v0, "beginColumn":I
    iget-object v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 629
    .local v4, "endLine":I
    iget-object v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 630
    .local v3, "endColumn":I
    iget v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    invoke-static {v7, v2}, Lorg/apache/james/mime4j/field/structured/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v6

    .line 632
    .local v6, "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    iput v1, v6, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginLine:I

    .line 633
    iput v4, v6, Lorg/apache/james/mime4j/field/structured/parser/Token;->endLine:I

    .line 634
    iput v0, v6, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginColumn:I

    .line 635
    iput v3, v6, Lorg/apache/james/mime4j/field/structured/parser/Token;->endColumn:I

    .line 637
    return-object v6

    .end local v0    # "beginColumn":I
    .end local v1    # "beginLine":I
    .end local v2    # "curTokenImage":Ljava/lang/String;
    .end local v3    # "endColumn":I
    .end local v4    # "endLine":I
    .end local v6    # "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :cond_0
    move-object v2, v5

    .line 625
    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
