.class synthetic Lcom/dropbox/core/v2/teamlog/EventType$1;
.super Ljava/lang/Object;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1219
    invoke-static {}, Lcom/dropbox/core/v2/teamlog/EventType;->values()[Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_MEMBERSHIP_TYPE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_TRANSFER_ACCOUNT_CONTENTS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_10a

    :goto_3
    :try_start_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_ADMIN_EXPORT_START:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_109

    :goto_4
    :try_start_5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_ENABLED_USERS_GROUP_ADDITION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_108

    :goto_5
    :try_start_6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_ENABLED_USERS_GROUP_REMOVAL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_107

    :goto_6
    :try_start_7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_EXTERNAL_VIEW_ALLOW:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_106

    :goto_7
    :try_start_8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_EXTERNAL_VIEW_DEFAULT_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_105

    :goto_8
    :try_start_9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_EXTERNAL_VIEW_FORBID:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_104

    :goto_9
    :try_start_a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_EXTERNAL_INVITE_WARN:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_103

    :goto_a
    :try_start_b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_MERGE_FROM:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_102

    :goto_b
    :try_start_c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_MERGE_TO:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_101

    :goto_c
    :try_start_d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->APP_LINK_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_100

    :goto_d
    :try_start_e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->APP_LINK_USER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_ff

    :goto_e
    :try_start_f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->APP_UNLINK_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_fe

    :goto_f
    :try_start_10
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->APP_UNLINK_USER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_fd

    :goto_10
    :try_start_11
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_ADD_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_fc

    :goto_11
    :try_start_12
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_CHANGE_COMMENT_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_fb

    :goto_12
    :try_start_13
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_DELETE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_fa

    :goto_13
    :try_start_14
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_LIKE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_f9

    :goto_14
    :try_start_15
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_RESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_f8

    :goto_15
    :try_start_16
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_UNLIKE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_f7

    :goto_16
    :try_start_17
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_UNRESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_f6

    :goto_17
    :try_start_18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_CHANGE_IP_DESKTOP:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_f5

    :goto_18
    :try_start_19
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_CHANGE_IP_MOBILE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_f4

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_CHANGE_IP_WEB:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_f3

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_DELETE_ON_UNLINK_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_f2

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_DELETE_ON_UNLINK_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_f1

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_LINK_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_f0

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_LINK_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_ef

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_MANAGEMENT_DISABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_ee

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_MANAGEMENT_ENABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_ed

    :goto_20
    :try_start_21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_UNLINK:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_ec

    :goto_21
    :try_start_22
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_REFRESH_AUTH_TOKEN:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_eb

    :goto_22
    :try_start_23
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_CHANGE_AVAILABILITY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_ea

    :goto_23
    :try_start_24
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_MIGRATE_ACCOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_e9

    :goto_24
    :try_start_25
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_e8

    :goto_25
    :try_start_26
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DISABLED_DOMAIN_INVITES:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_e7

    :goto_26
    :try_start_27
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_e6

    :goto_27
    :try_start_28
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_e5

    :goto_28
    :try_start_29
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_EMAIL_EXISTING_USERS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_e4

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_e3

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_e2

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_e1

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_e0

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_df

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_VERIFICATION_REMOVE_DOMAIN:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_de

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->ENABLED_DOMAIN_INVITES:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_dd

    :goto_30
    :try_start_31
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->CREATE_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_dc

    :goto_31
    :try_start_32
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_ADD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_db

    :goto_32
    :try_start_33
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_COPY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_da

    :goto_33
    :try_start_34
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_d9

    :goto_34
    :try_start_35
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_d8

    :goto_35
    :try_start_36
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_EDIT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_d7

    :goto_36
    :try_start_37
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_GET_COPY_REFERENCE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_d6

    :goto_37
    :try_start_38
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_MOVE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_d5

    :goto_38
    :try_start_39
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_d4

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_PREVIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_d3

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_d2

    :goto_3b
    :try_start_3c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_RESTORE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_d1

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REVERT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_d0

    :goto_3d
    :try_start_3e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_ROLLBACK_CHANGES:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_cf

    :goto_3e
    :try_start_3f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_SAVE_COPY_REFERENCE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_ce

    :goto_3f
    :try_start_40
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_ADD_DEADLINE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_cd

    :goto_40
    :try_start_41
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CHANGE_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_cc

    :goto_41
    :try_start_42
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CHANGE_TITLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_cb

    :goto_42
    :try_start_43
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CLOSE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_ca

    :goto_43
    :try_start_44
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_c9

    :goto_44
    :try_start_45
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_RECEIVE_FILE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_c8

    :goto_45
    :try_start_46
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_REMOVE_DEADLINE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_c7

    :goto_46
    :try_start_47
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_SEND:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_c6

    :goto_47
    :try_start_48
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_ADD_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_c5

    :goto_48
    :try_start_49
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_c4

    :goto_49
    :try_start_4a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CHANGE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_c3

    :goto_4a
    :try_start_4b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CHANGE_MANAGEMENT_TYPE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_c2

    :goto_4b
    :try_start_4c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_c1

    :goto_4c
    :try_start_4d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_c0

    :goto_4d
    :try_start_4e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_bf

    :goto_4e
    :try_start_4f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_MOVED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_be

    :goto_4f
    :try_start_50
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_REMOVE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_bd

    :goto_50
    :try_start_51
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_bc

    :goto_51
    :try_start_52
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_bb

    :goto_52
    :try_start_53
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_LOGIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_ba

    :goto_53
    :try_start_54
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->LOGOUT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_b9

    :goto_54
    :try_start_55
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_LOGIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_b8

    :goto_55
    :try_start_56
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_LOGIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_b7

    :goto_56
    :try_start_57
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->RESELLER_SUPPORT_SESSION_END:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_b6

    :goto_57
    :try_start_58
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->RESELLER_SUPPORT_SESSION_START:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_b5

    :goto_58
    :try_start_59
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SIGN_IN_AS_SESSION_END:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_b4

    :goto_59
    :try_start_5a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SIGN_IN_AS_SESSION_START:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_b3

    :goto_5a
    :try_start_5b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_LOGIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_b2

    :goto_5b
    :try_start_5c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_ADD_NAME:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_b1

    :goto_5c
    :try_start_5d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_ADMIN_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_b0

    :goto_5d
    :try_start_5e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_EMAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_af

    :goto_5e
    :try_start_5f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_NAME:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_ae

    :goto_5f
    :try_start_60
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_ad

    :goto_60
    :try_start_61
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SUGGEST:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_ac

    :goto_61
    :try_start_62
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_ab

    :goto_62
    :try_start_63
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_ADD_TO_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_aa

    :goto_63
    :try_start_64
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_ARCHIVE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_a9

    :goto_64
    :try_start_65
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_a8

    :goto_65
    :try_start_66
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_a7

    :goto_66
    :try_start_67
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_REMOVE_FROM_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_a6

    :goto_67
    :try_start_68
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_a5

    :goto_68
    :try_start_69
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_a4

    :goto_69
    :try_start_6a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_RESTORE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_a3

    :goto_6a
    :try_start_6b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_ADD_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_a2

    :goto_6b
    :try_start_6c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_a1

    :goto_6c
    :try_start_6d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_CHANGE_SHARING_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_a0

    :goto_6d
    :try_start_6e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_CHANGE_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x6f

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_9f

    :goto_6e
    :try_start_6f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_DELETED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x70

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_9e

    :goto_6f
    :try_start_70
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_DELETE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x71

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_9d

    :goto_70
    :try_start_71
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x72

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_9c

    :goto_71
    :try_start_72
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_EDIT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x73

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_9b

    :goto_72
    :try_start_73
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_EDIT_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x74

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_9a

    :goto_73
    :try_start_74
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_FOLLOWED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x75

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_99

    :goto_74
    :try_start_75
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_MENTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x76

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_98

    :goto_75
    :try_start_76
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_REQUEST_ACCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x77

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_97

    :goto_76
    :try_start_77
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_RESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x78

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_96

    :goto_77
    :try_start_78
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_REVERT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x79

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_95

    :goto_78
    :try_start_79
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_SLACK_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x7a

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_94

    :goto_79
    :try_start_7a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x7b

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_93

    :goto_7a
    :try_start_7b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_TRASHED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x7c

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_92

    :goto_7b
    :try_start_7c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_UNRESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x7d

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_91

    :goto_7c
    :try_start_7d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_UNTRASHED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x7e

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_90

    :goto_7d
    :try_start_7e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_VIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x7f

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_8f

    :goto_7e
    :try_start_7f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_CHANGE_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x80

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_8e

    :goto_7f
    :try_start_80
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_DELETED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x81

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_8d

    :goto_80
    :try_start_81
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_FOLLOWED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x82

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_8c

    :goto_81
    :try_start_82
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x83

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_8b

    :goto_82
    :try_start_83
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_CHANGE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x84

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_8a

    :goto_83
    :try_start_84
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_RESET:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x85

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_89

    :goto_84
    :try_start_85
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_RESET_ALL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x86

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_88

    :goto_85
    :try_start_86
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_CREATE_EXCEPTIONS_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x87

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_87

    :goto_86
    :try_start_87
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_CREATE_USAGE_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x88

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_86

    :goto_87
    :try_start_88
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x89

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_85

    :goto_88
    :try_start_89
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_ACTIVITY_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8a

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_84

    :goto_89
    :try_start_8a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->COLLECTION_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8b

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_83

    :goto_8a
    :try_start_8b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_ACL_INVITE_ONLY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8c

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_82

    :goto_8b
    :try_start_8c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_ACL_LINK:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8d

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_81

    :goto_8c
    :try_start_8d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_ACL_TEAM_LINK:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8e

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_80

    :goto_8d
    :try_start_8e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_SHARED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8f

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_7f

    :goto_8e
    :try_start_8f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_SHARE_RECEIVE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x90

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_7e

    :goto_8f
    :try_start_90
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->OPEN_NOTE_SHARED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x91

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_7d

    :goto_90
    :try_start_91
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_ADD_GROUP:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x92

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_7c

    :goto_91
    :try_start_92
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x93

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_7b

    :goto_92
    :try_start_93
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_INVITE_GROUP:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x94

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_7a

    :goto_93
    :try_start_94
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_NEST:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x95

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_79

    :goto_94
    :try_start_95
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_DECLINE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x96

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_78

    :goto_95
    :try_start_96
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_GRANT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x97

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_77

    :goto_96
    :try_start_97
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x98

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_76

    :goto_97
    :try_start_98
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_INVITE_CHANGE_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x99

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_75

    :goto_98
    :try_start_99
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_JOIN:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9a

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_74

    :goto_99
    :try_start_9a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_JOIN_FROM_OOB_LINK:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9b

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_73

    :goto_9a
    :try_start_9b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_UNINVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9c

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_72

    :goto_9b
    :try_start_9c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_INVITEES:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9d

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_71

    :goto_9c
    :try_start_9d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9e

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_70

    :goto_9d
    :try_start_9e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9f

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_6f

    :goto_9e
    :try_start_9f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa0

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_6e

    :goto_9f
    :try_start_a0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa1

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_6d

    :goto_a0
    :try_start_a1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_INVITEE_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa2

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_6c

    :goto_a1
    :try_start_a2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_LINK_AUDIENCE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa3

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_6b

    :goto_a2
    :try_start_a3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa4

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_6a

    :goto_a3
    :try_start_a4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa5

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_69

    :goto_a4
    :try_start_a5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa6

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_68

    :goto_a5
    :try_start_a6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa7

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_67

    :goto_a6
    :try_start_a7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CLAIM_INVITATION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa8

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_a7} :catch_66

    :goto_a7
    :try_start_a8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_COPY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa9

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_a8} :catch_65

    :goto_a8
    :try_start_a9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xaa

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_a9} :catch_64

    :goto_a9
    :try_start_aa
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xab

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_aa} :catch_63

    :goto_aa
    :try_start_ab
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_INVITEE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xac

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_ab} :catch_62

    :goto_ab
    :try_start_ac
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xad

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_ac} :catch_61

    :goto_ac
    :try_start_ad
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xae

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_ad} :catch_60

    :goto_ad
    :try_start_ae
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xaf

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ae} :catch_5f

    :goto_ae
    :try_start_af
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REQUEST_ACCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb0

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_af} :catch_5e

    :goto_af
    :try_start_b0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_UNSHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb1

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b0} :catch_5d

    :goto_b0
    :try_start_b1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_VIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb2

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b1} :catch_5c

    :goto_b1
    :try_start_b2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_CONFIDENTIALITY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb3

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_b2} :catch_5b

    :goto_b2
    :try_start_b3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb4

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_b3} :catch_5a

    :goto_b3
    :try_start_b4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb5

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_b4} :catch_59

    :goto_b4
    :try_start_b5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb6

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_b5} :catch_58

    :goto_b5
    :try_start_b6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb7

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_b6} :catch_57

    :goto_b6
    :try_start_b7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_MOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb8

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_b7} :catch_56

    :goto_b7
    :try_start_b8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb9

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_b8} :catch_55

    :goto_b8
    :try_start_b9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_UNMOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xba

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_b9} :catch_54

    :goto_b9
    :try_start_ba
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_NOTE_OPENED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xbb

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_ba} :catch_53

    :goto_ba
    :try_start_bb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_APP_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xbc

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_bb} :catch_52

    :goto_bb
    :try_start_bc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xbd

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_bc} :catch_51

    :goto_bc
    :try_start_bd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_DISABLE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xbe

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_bd} :catch_50

    :goto_bd
    :try_start_be
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_FB_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xbf

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_be} :catch_4f

    :goto_be
    :try_start_bf
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_GROUP_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc0

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_bf} :catch_4e

    :goto_bf
    :try_start_c0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_REMOVE_EXPIRATION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc1

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c0} :catch_4d

    :goto_c0
    :try_start_c1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_SET_EXPIRATION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc2

    aput v2, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_c1} :catch_4c

    :goto_c1
    :try_start_c2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_COPY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc3

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_c2} :catch_4b

    :goto_c2
    :try_start_c3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc4

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_c3} :catch_4a

    :goto_c3
    :try_start_c4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc5

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_c4} :catch_49

    :goto_c4
    :try_start_c5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_VIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc6

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_c5} :catch_48

    :goto_c5
    :try_start_c6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_VISIBILITY_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc7

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_c6} :catch_47

    :goto_c6
    :try_start_c7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_VISIBILITY_PUBLIC:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc8

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_c7} :catch_46

    :goto_c7
    :try_start_c8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_VISIBILITY_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc9

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_c8} :catch_45

    :goto_c8
    :try_start_c9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_ADD_CERT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xca

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_c9} :catch_44

    :goto_c9
    :try_start_ca
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_ADD_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xcb

    aput v2, v0, v1
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_ca} :catch_43

    :goto_ca
    :try_start_cb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_ADD_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xcc

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_cb} :catch_42

    :goto_cb
    :try_start_cc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_CERT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xcd

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_cc} :catch_41

    :goto_cc
    :try_start_cd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xce

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_cd} :catch_40

    :goto_cd
    :try_start_ce
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xcf

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_ce} :catch_3f

    :goto_ce
    :try_start_cf
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_SAML_IDENTITY_MODE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd0

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_cf} :catch_3e

    :goto_cf
    :try_start_d0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_REMOVE_CERT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd1

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_d0} :catch_3d

    :goto_d0
    :try_start_d1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_REMOVE_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd2

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_d1} :catch_3c

    :goto_d1
    :try_start_d2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_REMOVE_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd3

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_d2} :catch_3b

    :goto_d2
    :try_start_d3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd4

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_d3} :catch_3a

    :goto_d3
    :try_start_d4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd5

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_d4} :catch_39

    :goto_d4
    :try_start_d5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_DOWNGRADE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd6

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_d5} :catch_38

    :goto_d5
    :try_start_d6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd7

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_d6} :catch_37

    :goto_d6
    :try_start_d7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd8

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_d7} :catch_36

    :goto_d7
    :try_start_d8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd9

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_d8} :catch_35

    :goto_d8
    :try_start_d9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->ALLOW_DOWNLOAD_DISABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xda

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_d9} :catch_34

    :goto_d9
    :try_start_da
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->ALLOW_DOWNLOAD_ENABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xdb

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_da} :catch_33

    :goto_da
    :try_start_db
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xdc

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_db} :catch_32

    :goto_db
    :try_start_dc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xdd

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_dc} :catch_31

    :goto_dc
    :try_start_dd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xde

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_dd} :catch_30

    :goto_dd
    :try_start_de
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_MOBILE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xdf

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_de} :catch_2f

    :goto_de
    :try_start_df
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe0

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_df} :catch_2e

    :goto_df
    :try_start_e0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_UNLINK_ACTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe1

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_e0} :catch_2d

    :goto_e0
    :try_start_e1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe2

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e1} :catch_2c

    :goto_e1
    :try_start_e2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe3

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_e2} :catch_2b

    :goto_e2
    :try_start_e3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe4

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_e3} :catch_2a

    :goto_e3
    :try_start_e4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->EXTENDED_VERSION_HISTORY_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe5

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_e4} :catch_29

    :goto_e4
    :try_start_e5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_COMMENTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe6

    aput v2, v0, v1
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_e5} :catch_28

    :goto_e5
    :try_start_e6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUESTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe7

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_e6} :catch_27

    :goto_e6
    :try_start_e7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUESTS_EMAILS_ENABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe8

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_e7} :catch_26

    :goto_e7
    :try_start_e8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe9

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_e8} :catch_25

    :goto_e8
    :try_start_e9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GOOGLE_SSO_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xea

    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_e9} :catch_24

    :goto_e9
    :try_start_ea
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_USER_MANAGEMENT_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xeb

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_ea} :catch_23

    :goto_ea
    :try_start_eb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_REQUESTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xec

    aput v2, v0, v1
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_eb} :catch_22

    :goto_eb
    :try_start_ec
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xed

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_ec} :catch_21

    :goto_ec
    :try_start_ed
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xee

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_ed} :catch_20

    :goto_ed
    :try_start_ee
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xef

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_ee} :catch_1f

    :goto_ee
    :try_start_ef
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SUGGESTIONS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf0

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_ef} :catch_1e

    :goto_ef
    :try_start_f0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf1

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_f0} :catch_1d

    :goto_f0
    :try_start_f1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->NETWORK_CONTROL_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf2

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_f1} :catch_1c

    :goto_f1
    :try_start_f2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_DEPLOYMENT_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf3

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_f2} :catch_1b

    :goto_f2
    :try_start_f3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_MEMBER_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf4

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_f3} :catch_1a

    :goto_f3
    :try_start_f4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf5

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_f4} :catch_19

    :goto_f4
    :try_start_f5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf6

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_f5} :catch_18

    :goto_f5
    :try_start_f6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->PERMANENT_DELETE_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf7

    aput v2, v0, v1
    :try_end_f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f6 .. :try_end_f6} :catch_17

    :goto_f6
    :try_start_f7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARING_CHANGE_FOLDER_JOIN_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf8

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_f7} :catch_16

    :goto_f7
    :try_start_f8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARING_CHANGE_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xf9

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_f8} :catch_15

    :goto_f8
    :try_start_f9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SHARING_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xfa

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_f9} :catch_14

    :goto_f9
    :try_start_fa
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xfb

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_fa} :catch_13

    :goto_fa
    :try_start_fb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_NOT_OPT_OUT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xfc

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_fb} :catch_12

    :goto_fb
    :try_start_fc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_OPT_OUT:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xfd

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_fc} :catch_11

    :goto_fc
    :try_start_fd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xfe

    aput v2, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_fd} :catch_10

    :goto_fd
    :try_start_fe
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xff

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_fe} :catch_f

    :goto_fe
    :try_start_ff
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TWO_ACCOUNT_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x100

    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_ff} :catch_e

    :goto_ff
    :try_start_100
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x101

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_100} :catch_d

    :goto_100
    :try_start_101
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x102

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_101} :catch_c

    :goto_101
    :try_start_102
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_ADD_LOGO:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x103

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_102} :catch_b

    :goto_102
    :try_start_103
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x104

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_103} :catch_a

    :goto_103
    :try_start_104
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_CHANGE_LOGO:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x105

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_104} :catch_9

    :goto_104
    :try_start_105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_CHANGE_NAME:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x106

    aput v2, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_105} :catch_8

    :goto_105
    :try_start_106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_REMOVE_LOGO:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x107

    aput v2, v0, v1
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_106} :catch_7

    :goto_106
    :try_start_107
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_ADD_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x108

    aput v2, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_107} :catch_6

    :goto_107
    :try_start_108
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_ADD_SECURITY_KEY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x109

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_108} :catch_5

    :goto_108
    :try_start_109
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_CHANGE_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x10a

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_109} :catch_4

    :goto_109
    :try_start_10a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x10b

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_10a} :catch_3

    :goto_10a
    :try_start_10b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_REMOVE_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x10c

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_10b} :catch_2

    :goto_10b
    :try_start_10c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_REMOVE_SECURITY_KEY:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x10d

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_10c} :catch_1

    :goto_10c
    :try_start_10d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_RESET:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x10e

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_10d} :catch_0

    :goto_10d
    return-void

    :catch_0
    move-exception v0

    goto :goto_10d

    :catch_1
    move-exception v0

    goto :goto_10c

    :catch_2
    move-exception v0

    goto :goto_10b

    :catch_3
    move-exception v0

    goto :goto_10a

    :catch_4
    move-exception v0

    goto :goto_109

    :catch_5
    move-exception v0

    goto :goto_108

    :catch_6
    move-exception v0

    goto :goto_107

    :catch_7
    move-exception v0

    goto :goto_106

    :catch_8
    move-exception v0

    goto :goto_105

    :catch_9
    move-exception v0

    goto :goto_104

    :catch_a
    move-exception v0

    goto/16 :goto_103

    :catch_b
    move-exception v0

    goto/16 :goto_102

    :catch_c
    move-exception v0

    goto/16 :goto_101

    :catch_d
    move-exception v0

    goto/16 :goto_100

    :catch_e
    move-exception v0

    goto/16 :goto_ff

    :catch_f
    move-exception v0

    goto/16 :goto_fe

    :catch_10
    move-exception v0

    goto/16 :goto_fd

    :catch_11
    move-exception v0

    goto/16 :goto_fc

    :catch_12
    move-exception v0

    goto/16 :goto_fb

    :catch_13
    move-exception v0

    goto/16 :goto_fa

    :catch_14
    move-exception v0

    goto/16 :goto_f9

    :catch_15
    move-exception v0

    goto/16 :goto_f8

    :catch_16
    move-exception v0

    goto/16 :goto_f7

    :catch_17
    move-exception v0

    goto/16 :goto_f6

    :catch_18
    move-exception v0

    goto/16 :goto_f5

    :catch_19
    move-exception v0

    goto/16 :goto_f4

    :catch_1a
    move-exception v0

    goto/16 :goto_f3

    :catch_1b
    move-exception v0

    goto/16 :goto_f2

    :catch_1c
    move-exception v0

    goto/16 :goto_f1

    :catch_1d
    move-exception v0

    goto/16 :goto_f0

    :catch_1e
    move-exception v0

    goto/16 :goto_ef

    :catch_1f
    move-exception v0

    goto/16 :goto_ee

    :catch_20
    move-exception v0

    goto/16 :goto_ed

    :catch_21
    move-exception v0

    goto/16 :goto_ec

    :catch_22
    move-exception v0

    goto/16 :goto_eb

    :catch_23
    move-exception v0

    goto/16 :goto_ea

    :catch_24
    move-exception v0

    goto/16 :goto_e9

    :catch_25
    move-exception v0

    goto/16 :goto_e8

    :catch_26
    move-exception v0

    goto/16 :goto_e7

    :catch_27
    move-exception v0

    goto/16 :goto_e6

    :catch_28
    move-exception v0

    goto/16 :goto_e5

    :catch_29
    move-exception v0

    goto/16 :goto_e4

    :catch_2a
    move-exception v0

    goto/16 :goto_e3

    :catch_2b
    move-exception v0

    goto/16 :goto_e2

    :catch_2c
    move-exception v0

    goto/16 :goto_e1

    :catch_2d
    move-exception v0

    goto/16 :goto_e0

    :catch_2e
    move-exception v0

    goto/16 :goto_df

    :catch_2f
    move-exception v0

    goto/16 :goto_de

    :catch_30
    move-exception v0

    goto/16 :goto_dd

    :catch_31
    move-exception v0

    goto/16 :goto_dc

    :catch_32
    move-exception v0

    goto/16 :goto_db

    :catch_33
    move-exception v0

    goto/16 :goto_da

    :catch_34
    move-exception v0

    goto/16 :goto_d9

    :catch_35
    move-exception v0

    goto/16 :goto_d8

    :catch_36
    move-exception v0

    goto/16 :goto_d7

    :catch_37
    move-exception v0

    goto/16 :goto_d6

    :catch_38
    move-exception v0

    goto/16 :goto_d5

    :catch_39
    move-exception v0

    goto/16 :goto_d4

    :catch_3a
    move-exception v0

    goto/16 :goto_d3

    :catch_3b
    move-exception v0

    goto/16 :goto_d2

    :catch_3c
    move-exception v0

    goto/16 :goto_d1

    :catch_3d
    move-exception v0

    goto/16 :goto_d0

    :catch_3e
    move-exception v0

    goto/16 :goto_cf

    :catch_3f
    move-exception v0

    goto/16 :goto_ce

    :catch_40
    move-exception v0

    goto/16 :goto_cd

    :catch_41
    move-exception v0

    goto/16 :goto_cc

    :catch_42
    move-exception v0

    goto/16 :goto_cb

    :catch_43
    move-exception v0

    goto/16 :goto_ca

    :catch_44
    move-exception v0

    goto/16 :goto_c9

    :catch_45
    move-exception v0

    goto/16 :goto_c8

    :catch_46
    move-exception v0

    goto/16 :goto_c7

    :catch_47
    move-exception v0

    goto/16 :goto_c6

    :catch_48
    move-exception v0

    goto/16 :goto_c5

    :catch_49
    move-exception v0

    goto/16 :goto_c4

    :catch_4a
    move-exception v0

    goto/16 :goto_c3

    :catch_4b
    move-exception v0

    goto/16 :goto_c2

    :catch_4c
    move-exception v0

    goto/16 :goto_c1

    :catch_4d
    move-exception v0

    goto/16 :goto_c0

    :catch_4e
    move-exception v0

    goto/16 :goto_bf

    :catch_4f
    move-exception v0

    goto/16 :goto_be

    :catch_50
    move-exception v0

    goto/16 :goto_bd

    :catch_51
    move-exception v0

    goto/16 :goto_bc

    :catch_52
    move-exception v0

    goto/16 :goto_bb

    :catch_53
    move-exception v0

    goto/16 :goto_ba

    :catch_54
    move-exception v0

    goto/16 :goto_b9

    :catch_55
    move-exception v0

    goto/16 :goto_b8

    :catch_56
    move-exception v0

    goto/16 :goto_b7

    :catch_57
    move-exception v0

    goto/16 :goto_b6

    :catch_58
    move-exception v0

    goto/16 :goto_b5

    :catch_59
    move-exception v0

    goto/16 :goto_b4

    :catch_5a
    move-exception v0

    goto/16 :goto_b3

    :catch_5b
    move-exception v0

    goto/16 :goto_b2

    :catch_5c
    move-exception v0

    goto/16 :goto_b1

    :catch_5d
    move-exception v0

    goto/16 :goto_b0

    :catch_5e
    move-exception v0

    goto/16 :goto_af

    :catch_5f
    move-exception v0

    goto/16 :goto_ae

    :catch_60
    move-exception v0

    goto/16 :goto_ad

    :catch_61
    move-exception v0

    goto/16 :goto_ac

    :catch_62
    move-exception v0

    goto/16 :goto_ab

    :catch_63
    move-exception v0

    goto/16 :goto_aa

    :catch_64
    move-exception v0

    goto/16 :goto_a9

    :catch_65
    move-exception v0

    goto/16 :goto_a8

    :catch_66
    move-exception v0

    goto/16 :goto_a7

    :catch_67
    move-exception v0

    goto/16 :goto_a6

    :catch_68
    move-exception v0

    goto/16 :goto_a5

    :catch_69
    move-exception v0

    goto/16 :goto_a4

    :catch_6a
    move-exception v0

    goto/16 :goto_a3

    :catch_6b
    move-exception v0

    goto/16 :goto_a2

    :catch_6c
    move-exception v0

    goto/16 :goto_a1

    :catch_6d
    move-exception v0

    goto/16 :goto_a0

    :catch_6e
    move-exception v0

    goto/16 :goto_9f

    :catch_6f
    move-exception v0

    goto/16 :goto_9e

    :catch_70
    move-exception v0

    goto/16 :goto_9d

    :catch_71
    move-exception v0

    goto/16 :goto_9c

    :catch_72
    move-exception v0

    goto/16 :goto_9b

    :catch_73
    move-exception v0

    goto/16 :goto_9a

    :catch_74
    move-exception v0

    goto/16 :goto_99

    :catch_75
    move-exception v0

    goto/16 :goto_98

    :catch_76
    move-exception v0

    goto/16 :goto_97

    :catch_77
    move-exception v0

    goto/16 :goto_96

    :catch_78
    move-exception v0

    goto/16 :goto_95

    :catch_79
    move-exception v0

    goto/16 :goto_94

    :catch_7a
    move-exception v0

    goto/16 :goto_93

    :catch_7b
    move-exception v0

    goto/16 :goto_92

    :catch_7c
    move-exception v0

    goto/16 :goto_91

    :catch_7d
    move-exception v0

    goto/16 :goto_90

    :catch_7e
    move-exception v0

    goto/16 :goto_8f

    :catch_7f
    move-exception v0

    goto/16 :goto_8e

    :catch_80
    move-exception v0

    goto/16 :goto_8d

    :catch_81
    move-exception v0

    goto/16 :goto_8c

    :catch_82
    move-exception v0

    goto/16 :goto_8b

    :catch_83
    move-exception v0

    goto/16 :goto_8a

    :catch_84
    move-exception v0

    goto/16 :goto_89

    :catch_85
    move-exception v0

    goto/16 :goto_88

    :catch_86
    move-exception v0

    goto/16 :goto_87

    :catch_87
    move-exception v0

    goto/16 :goto_86

    :catch_88
    move-exception v0

    goto/16 :goto_85

    :catch_89
    move-exception v0

    goto/16 :goto_84

    :catch_8a
    move-exception v0

    goto/16 :goto_83

    :catch_8b
    move-exception v0

    goto/16 :goto_82

    :catch_8c
    move-exception v0

    goto/16 :goto_81

    :catch_8d
    move-exception v0

    goto/16 :goto_80

    :catch_8e
    move-exception v0

    goto/16 :goto_7f

    :catch_8f
    move-exception v0

    goto/16 :goto_7e

    :catch_90
    move-exception v0

    goto/16 :goto_7d

    :catch_91
    move-exception v0

    goto/16 :goto_7c

    :catch_92
    move-exception v0

    goto/16 :goto_7b

    :catch_93
    move-exception v0

    goto/16 :goto_7a

    :catch_94
    move-exception v0

    goto/16 :goto_79

    :catch_95
    move-exception v0

    goto/16 :goto_78

    :catch_96
    move-exception v0

    goto/16 :goto_77

    :catch_97
    move-exception v0

    goto/16 :goto_76

    :catch_98
    move-exception v0

    goto/16 :goto_75

    :catch_99
    move-exception v0

    goto/16 :goto_74

    :catch_9a
    move-exception v0

    goto/16 :goto_73

    :catch_9b
    move-exception v0

    goto/16 :goto_72

    :catch_9c
    move-exception v0

    goto/16 :goto_71

    :catch_9d
    move-exception v0

    goto/16 :goto_70

    :catch_9e
    move-exception v0

    goto/16 :goto_6f

    :catch_9f
    move-exception v0

    goto/16 :goto_6e

    :catch_a0
    move-exception v0

    goto/16 :goto_6d

    :catch_a1
    move-exception v0

    goto/16 :goto_6c

    :catch_a2
    move-exception v0

    goto/16 :goto_6b

    :catch_a3
    move-exception v0

    goto/16 :goto_6a

    :catch_a4
    move-exception v0

    goto/16 :goto_69

    :catch_a5
    move-exception v0

    goto/16 :goto_68

    :catch_a6
    move-exception v0

    goto/16 :goto_67

    :catch_a7
    move-exception v0

    goto/16 :goto_66

    :catch_a8
    move-exception v0

    goto/16 :goto_65

    :catch_a9
    move-exception v0

    goto/16 :goto_64

    :catch_aa
    move-exception v0

    goto/16 :goto_63

    :catch_ab
    move-exception v0

    goto/16 :goto_62

    :catch_ac
    move-exception v0

    goto/16 :goto_61

    :catch_ad
    move-exception v0

    goto/16 :goto_60

    :catch_ae
    move-exception v0

    goto/16 :goto_5f

    :catch_af
    move-exception v0

    goto/16 :goto_5e

    :catch_b0
    move-exception v0

    goto/16 :goto_5d

    :catch_b1
    move-exception v0

    goto/16 :goto_5c

    :catch_b2
    move-exception v0

    goto/16 :goto_5b

    :catch_b3
    move-exception v0

    goto/16 :goto_5a

    :catch_b4
    move-exception v0

    goto/16 :goto_59

    :catch_b5
    move-exception v0

    goto/16 :goto_58

    :catch_b6
    move-exception v0

    goto/16 :goto_57

    :catch_b7
    move-exception v0

    goto/16 :goto_56

    :catch_b8
    move-exception v0

    goto/16 :goto_55

    :catch_b9
    move-exception v0

    goto/16 :goto_54

    :catch_ba
    move-exception v0

    goto/16 :goto_53

    :catch_bb
    move-exception v0

    goto/16 :goto_52

    :catch_bc
    move-exception v0

    goto/16 :goto_51

    :catch_bd
    move-exception v0

    goto/16 :goto_50

    :catch_be
    move-exception v0

    goto/16 :goto_4f

    :catch_bf
    move-exception v0

    goto/16 :goto_4e

    :catch_c0
    move-exception v0

    goto/16 :goto_4d

    :catch_c1
    move-exception v0

    goto/16 :goto_4c

    :catch_c2
    move-exception v0

    goto/16 :goto_4b

    :catch_c3
    move-exception v0

    goto/16 :goto_4a

    :catch_c4
    move-exception v0

    goto/16 :goto_49

    :catch_c5
    move-exception v0

    goto/16 :goto_48

    :catch_c6
    move-exception v0

    goto/16 :goto_47

    :catch_c7
    move-exception v0

    goto/16 :goto_46

    :catch_c8
    move-exception v0

    goto/16 :goto_45

    :catch_c9
    move-exception v0

    goto/16 :goto_44

    :catch_ca
    move-exception v0

    goto/16 :goto_43

    :catch_cb
    move-exception v0

    goto/16 :goto_42

    :catch_cc
    move-exception v0

    goto/16 :goto_41

    :catch_cd
    move-exception v0

    goto/16 :goto_40

    :catch_ce
    move-exception v0

    goto/16 :goto_3f

    :catch_cf
    move-exception v0

    goto/16 :goto_3e

    :catch_d0
    move-exception v0

    goto/16 :goto_3d

    :catch_d1
    move-exception v0

    goto/16 :goto_3c

    :catch_d2
    move-exception v0

    goto/16 :goto_3b

    :catch_d3
    move-exception v0

    goto/16 :goto_3a

    :catch_d4
    move-exception v0

    goto/16 :goto_39

    :catch_d5
    move-exception v0

    goto/16 :goto_38

    :catch_d6
    move-exception v0

    goto/16 :goto_37

    :catch_d7
    move-exception v0

    goto/16 :goto_36

    :catch_d8
    move-exception v0

    goto/16 :goto_35

    :catch_d9
    move-exception v0

    goto/16 :goto_34

    :catch_da
    move-exception v0

    goto/16 :goto_33

    :catch_db
    move-exception v0

    goto/16 :goto_32

    :catch_dc
    move-exception v0

    goto/16 :goto_31

    :catch_dd
    move-exception v0

    goto/16 :goto_30

    :catch_de
    move-exception v0

    goto/16 :goto_2f

    :catch_df
    move-exception v0

    goto/16 :goto_2e

    :catch_e0
    move-exception v0

    goto/16 :goto_2d

    :catch_e1
    move-exception v0

    goto/16 :goto_2c

    :catch_e2
    move-exception v0

    goto/16 :goto_2b

    :catch_e3
    move-exception v0

    goto/16 :goto_2a

    :catch_e4
    move-exception v0

    goto/16 :goto_29

    :catch_e5
    move-exception v0

    goto/16 :goto_28

    :catch_e6
    move-exception v0

    goto/16 :goto_27

    :catch_e7
    move-exception v0

    goto/16 :goto_26

    :catch_e8
    move-exception v0

    goto/16 :goto_25

    :catch_e9
    move-exception v0

    goto/16 :goto_24

    :catch_ea
    move-exception v0

    goto/16 :goto_23

    :catch_eb
    move-exception v0

    goto/16 :goto_22

    :catch_ec
    move-exception v0

    goto/16 :goto_21

    :catch_ed
    move-exception v0

    goto/16 :goto_20

    :catch_ee
    move-exception v0

    goto/16 :goto_1f

    :catch_ef
    move-exception v0

    goto/16 :goto_1e

    :catch_f0
    move-exception v0

    goto/16 :goto_1d

    :catch_f1
    move-exception v0

    goto/16 :goto_1c

    :catch_f2
    move-exception v0

    goto/16 :goto_1b

    :catch_f3
    move-exception v0

    goto/16 :goto_1a

    :catch_f4
    move-exception v0

    goto/16 :goto_19

    :catch_f5
    move-exception v0

    goto/16 :goto_18

    :catch_f6
    move-exception v0

    goto/16 :goto_17

    :catch_f7
    move-exception v0

    goto/16 :goto_16

    :catch_f8
    move-exception v0

    goto/16 :goto_15

    :catch_f9
    move-exception v0

    goto/16 :goto_14

    :catch_fa
    move-exception v0

    goto/16 :goto_13

    :catch_fb
    move-exception v0

    goto/16 :goto_12

    :catch_fc
    move-exception v0

    goto/16 :goto_11

    :catch_fd
    move-exception v0

    goto/16 :goto_10

    :catch_fe
    move-exception v0

    goto/16 :goto_f

    :catch_ff
    move-exception v0

    goto/16 :goto_e

    :catch_100
    move-exception v0

    goto/16 :goto_d

    :catch_101
    move-exception v0

    goto/16 :goto_c

    :catch_102
    move-exception v0

    goto/16 :goto_b

    :catch_103
    move-exception v0

    goto/16 :goto_a

    :catch_104
    move-exception v0

    goto/16 :goto_9

    :catch_105
    move-exception v0

    goto/16 :goto_8

    :catch_106
    move-exception v0

    goto/16 :goto_7

    :catch_107
    move-exception v0

    goto/16 :goto_6

    :catch_108
    move-exception v0

    goto/16 :goto_5

    :catch_109
    move-exception v0

    goto/16 :goto_4

    :catch_10a
    move-exception v0

    goto/16 :goto_3

    :catch_10b
    move-exception v0

    goto/16 :goto_2

    :catch_10c
    move-exception v0

    goto/16 :goto_1

    :catch_10d
    move-exception v0

    goto/16 :goto_0
.end method
