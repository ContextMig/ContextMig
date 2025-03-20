.class public final Lcom/fsck/k9/fragment/MLFProjectionInfo;
.super Ljava/lang/Object;
.source "MLFProjectionInfo.java"


# static fields
.field static final ACCOUNT_UUID_COLUMN:I = 0x11

.field static final ANSWERED_COLUMN:I = 0xa

.field static final ATTACHMENT_COUNT_COLUMN:I = 0xc

.field static final CC_LIST_COLUMN:I = 0x7

.field static final DATE_COLUMN:I = 0x4

.field static final FLAGGED_COLUMN:I = 0x9

.field static final FOLDER_ID_COLUMN:I = 0xd

.field static final FOLDER_NAME_COLUMN:I = 0x12

.field static final FORWARDED_COLUMN:I = 0xb

.field static final ID_COLUMN:I = 0x0

.field static final INTERNAL_DATE_COLUMN:I = 0x2

.field static final PREVIEW_COLUMN:I = 0xf

.field static final PREVIEW_TYPE_COLUMN:I = 0xe

.field static final PROJECTION:[Ljava/lang/String;

.field static final READ_COLUMN:I = 0x8

.field static final SENDER_LIST_COLUMN:I = 0x5

.field static final SUBJECT_COLUMN:I = 0x3

.field static final THREADED_PROJECTION:[Ljava/lang/String;

.field static final THREAD_COUNT_COLUMN:I = 0x13

.field static final THREAD_ROOT_COLUMN:I = 0x10

.field static final TO_LIST_COLUMN:I = 0x6

.field static final UID_COLUMN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x13

    .line 13
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "internal_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sender_list"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "to_list"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cc_list"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flagged"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "answered"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "forwarded"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "attachment_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "folder_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "preview_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "root"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "account_uuid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "thread_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/fsck/k9/fragment/MLFProjectionInfo;->THREADED_PROJECTION:[Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/fsck/k9/fragment/MLFProjectionInfo;->THREADED_PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/fsck/k9/fragment/MLFProjectionInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
