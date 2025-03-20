.class synthetic Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;
.super Ljava/lang/Object;
.source "NotesDatabaseStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x41a73327291515c2L    # 1.9461416454118162E8

    const-string v2, "com/iliakplv/notes/notes/db/NotesDatabaseStorage$2"

    const/16 v3, 0x24

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->values()[Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    aput-boolean v4, v0, v4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotes:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    aput-boolean v4, v0, v5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    aput-boolean v4, v0, v6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllLabels:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotesLabelsIds:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0xb

    aput v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0xc

    aput v3, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsIdsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0xd

    aput v3, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNotesForLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0xe

    aput v3, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    const/16 v1, 0x1b

    aput-boolean v4, v0, v1

    :goto_d
    :try_start_e
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabelToNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0xf

    aput v3, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    :goto_e
    :try_start_f
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabelFromNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0x10

    aput v3, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    :goto_f
    :try_start_10
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteAllData:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v2

    const/16 v3, 0x11

    aput v3, v1, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    :goto_10
    const/16 v1, 0x23

    aput-boolean v4, v0, v1

    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_11
    aput-boolean v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_12
    aput-boolean v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const/4 v1, 0x6

    const/4 v2, 0x1

    :try_start_13
    aput-boolean v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    const/16 v1, 0x8

    const/4 v2, 0x1

    :try_start_14
    aput-boolean v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    :try_start_15
    aput-boolean v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v1

    const/16 v1, 0xc

    const/4 v2, 0x1

    :try_start_16
    aput-boolean v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v1

    const/16 v1, 0xe

    const/4 v2, 0x1

    :try_start_17
    aput-boolean v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_6

    :catch_7
    move-exception v1

    const/16 v1, 0x10

    const/4 v2, 0x1

    :try_start_18
    aput-boolean v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_8

    goto/16 :goto_7

    :catch_8
    move-exception v1

    const/16 v1, 0x12

    const/4 v2, 0x1

    :try_start_19
    aput-boolean v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_9

    goto/16 :goto_8

    :catch_9
    move-exception v1

    const/16 v1, 0x14

    const/4 v2, 0x1

    :try_start_1a
    aput-boolean v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_a

    goto/16 :goto_9

    :catch_a
    move-exception v1

    const/16 v1, 0x16

    const/4 v2, 0x1

    :try_start_1b
    aput-boolean v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_b

    goto/16 :goto_a

    :catch_b
    move-exception v1

    const/16 v1, 0x18

    const/4 v2, 0x1

    :try_start_1c
    aput-boolean v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_c

    goto/16 :goto_b

    :catch_c
    move-exception v1

    const/16 v1, 0x1a

    const/4 v2, 0x1

    :try_start_1d
    aput-boolean v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_d

    goto/16 :goto_c

    :catch_d
    move-exception v1

    const/16 v1, 0x1c

    const/4 v2, 0x1

    :try_start_1e
    aput-boolean v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_e

    goto/16 :goto_d

    :catch_e
    move-exception v1

    const/16 v1, 0x1e

    const/4 v2, 0x1

    :try_start_1f
    aput-boolean v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_f

    goto/16 :goto_e

    :catch_f
    move-exception v1

    const/16 v1, 0x20

    const/4 v2, 0x1

    :try_start_20
    aput-boolean v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_10

    goto/16 :goto_f

    :catch_10
    move-exception v1

    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    goto/16 :goto_10
.end method
