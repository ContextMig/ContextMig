.class synthetic Lcom/fsck/k9/search/SqlQueryBuilder$1;
.super Ljava/lang/Object;
.source "SqlQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/search/SqlQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fsck$k9$Account$Searchable:[I

.field static final synthetic $SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

.field static final synthetic $SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->values()[Lcom/fsck/k9/search/SearchSpecification$Attribute;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    :try_start_0
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1e

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->CONTAINS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1d

    :goto_1
    :try_start_2
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1c

    :goto_2
    :try_start_3
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->STARTSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1b

    :goto_3
    :try_start_4
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1a

    :goto_4
    :try_start_5
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ENDSWITH:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_19

    :goto_5
    :try_start_6
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_18

    :goto_6
    :try_start_7
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$Attribute:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$Attribute;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_17

    .line 32
    :goto_7
    invoke-static {}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->values()[Lcom/fsck/k9/search/SearchSpecification$SearchField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    :try_start_8
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_16

    :goto_8
    :try_start_9
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SEARCHABLE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_15

    :goto_9
    :try_start_a
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->MESSAGE_CONTENTS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_14

    :goto_a
    :try_start_b
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ATTACHMENT_COUNT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_13

    :goto_b
    :try_start_c
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->BCC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_12

    :goto_c
    :try_start_d
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->CC:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_11

    :goto_d
    :try_start_e
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_10

    :goto_e
    :try_start_f
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DELETED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAG:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_e

    :goto_10
    :try_start_11
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_d

    :goto_11
    :try_start_12
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->REPLY_TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_c

    :goto_12
    :try_start_13
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SENDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_b

    :goto_13
    :try_start_14
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->SUBJECT:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_a

    :goto_14
    :try_start_15
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->TO:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_9

    :goto_15
    :try_start_16
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->UID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_8

    :goto_16
    :try_start_17
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->INTEGRATE:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_7

    :goto_17
    :try_start_18
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->READ:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_6

    :goto_18
    :try_start_19
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAGGED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_5

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_4

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$search$SearchSpecification$SearchField:[I

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->THREAD_ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    invoke-virtual {v1}, Lcom/fsck/k9/search/SearchSpecification$SearchField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_3

    .line 45
    :goto_1b
    invoke-static {}, Lcom/fsck/k9/Account$Searchable;->values()[Lcom/fsck/k9/Account$Searchable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    :try_start_1c
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v1}, Lcom/fsck/k9/Account$Searchable;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_2

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->DISPLAYABLE:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v1}, Lcom/fsck/k9/Account$Searchable;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/fsck/k9/search/SqlQueryBuilder$1;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->NONE:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v1}, Lcom/fsck/k9/Account$Searchable;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_0

    :goto_1e
    return-void

    :catch_0
    move-exception v0

    goto :goto_1e

    :catch_1
    move-exception v0

    goto :goto_1d

    :catch_2
    move-exception v0

    goto :goto_1c

    .line 32
    :catch_3
    move-exception v0

    goto :goto_1b

    :catch_4
    move-exception v0

    goto :goto_1a

    :catch_5
    move-exception v0

    goto :goto_19

    :catch_6
    move-exception v0

    goto :goto_18

    :catch_7
    move-exception v0

    goto :goto_17

    :catch_8
    move-exception v0

    goto :goto_16

    :catch_9
    move-exception v0

    goto/16 :goto_15

    :catch_a
    move-exception v0

    goto/16 :goto_14

    :catch_b
    move-exception v0

    goto/16 :goto_13

    :catch_c
    move-exception v0

    goto/16 :goto_12

    :catch_d
    move-exception v0

    goto/16 :goto_11

    :catch_e
    move-exception v0

    goto/16 :goto_10

    :catch_f
    move-exception v0

    goto/16 :goto_f

    :catch_10
    move-exception v0

    goto/16 :goto_e

    :catch_11
    move-exception v0

    goto/16 :goto_d

    :catch_12
    move-exception v0

    goto/16 :goto_c

    :catch_13
    move-exception v0

    goto/16 :goto_b

    :catch_14
    move-exception v0

    goto/16 :goto_a

    :catch_15
    move-exception v0

    goto/16 :goto_9

    :catch_16
    move-exception v0

    goto/16 :goto_8

    .line 215
    :catch_17
    move-exception v0

    goto/16 :goto_7

    :catch_18
    move-exception v0

    goto/16 :goto_6

    :catch_19
    move-exception v0

    goto/16 :goto_5

    :catch_1a
    move-exception v0

    goto/16 :goto_4

    :catch_1b
    move-exception v0

    goto/16 :goto_3

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_1

    :catch_1e
    move-exception v0

    goto/16 :goto_0
.end method
