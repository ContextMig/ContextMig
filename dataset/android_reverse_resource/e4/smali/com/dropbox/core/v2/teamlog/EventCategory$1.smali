.class synthetic Lcom/dropbox/core/v2/teamlog/EventCategory$1;
.super Ljava/lang/Object;
.source "EventCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/dropbox/core/v2/teamlog/EventCategory;->values()[Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->ACCOUNT_CAPTURE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1e

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->ADMINISTRATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1d

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1c

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1b

    :goto_3
    :try_start_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1a

    :goto_4
    :try_start_5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->CONTENT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_19

    :goto_5
    :try_start_6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_18

    :goto_6
    :try_start_7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICE_APPROVALS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_17

    :goto_7
    :try_start_8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_16

    :goto_8
    :try_start_9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->EMM:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_15

    :goto_9
    :try_start_a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->ERRORS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_14

    :goto_a
    :try_start_b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_13

    :goto_b
    :try_start_c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_12

    :goto_c
    :try_start_d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_11

    :goto_d
    :try_start_e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_10

    :goto_e
    :try_start_f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_e

    :goto_10
    :try_start_11
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_d

    :goto_11
    :try_start_12
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_c

    :goto_12
    :try_start_13
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_b

    :goto_13
    :try_start_14
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SESSIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_a

    :goto_14
    :try_start_15
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_9

    :goto_15
    :try_start_16
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_8

    :goto_16
    :try_start_17
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_7

    :goto_17
    :try_start_18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_6

    :goto_18
    :try_start_19
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_5

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_4

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_3

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_2

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

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

    goto :goto_15

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
