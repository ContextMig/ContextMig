.class public Lcom/dropbox/sync/android/DbxRecord;
.super Lcom/dropbox/sync/android/DbxFields;
.source "DbxRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxRecord$RecordListOps;
    }
.end annotation


# static fields
.field public static BASE_RECORD_SIZE:J = 0x0L

.field private static final NVT_BLOB:I = 0x5

.field private static final NVT_BOOL:I = 0x1

.field private static final NVT_DOUBLE:I = 0x3

.field private static final NVT_INTEGER:I = 0x2

.field private static final NVT_LIST:I = 0x7

.field private static final NVT_NONE:I = 0x0

.field private static final NVT_STRING:I = 0x4

.field private static final NVT_TIMESTAMP:I = 0x6

.field public static RECORD_SIZE_LIMIT:J


# instance fields
.field private final mId:Ljava/lang/String;

.field final mNativeHandle:J

.field private final mTable:Lcom/dropbox/sync/android/DbxTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/32 v0, 0x19000

    sput-wide v0, Lcom/dropbox/sync/android/DbxRecord;->RECORD_SIZE_LIMIT:J

    .line 52
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/dropbox/sync/android/DbxRecord;->BASE_RECORD_SIZE:J

    .line 691
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 692
    invoke-static {}, Lcom/dropbox/sync/android/DbxRecord;->nativeClassInit()V

    .line 693
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/DbxTable;J)V
    .locals 2
    .param p1, "table"    # Lcom/dropbox/sync/android/DbxTable;
    .param p2, "nativeHandle"    # J

    .prologue
    .line 59
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;->NO_MEM_FIELDS:Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxFields;-><init>(Lcom/dropbox/sync/android/DbxFields$SubclassInit;)V

    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Table can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxRecord;->mTable:Lcom/dropbox/sync/android/DbxTable;

    .line 62
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 63
    iput-wide p2, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    .line 64
    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxRecord;->nativeGetId(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mId:Ljava/lang/String;

    .line 65
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static addStringToSet(Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "out":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method private static addValueToMap(Ljava/util/Map;Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/dropbox/sync/android/DbxValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    return-void
.end method

.method static checkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxRecord;->isValidFieldName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxRecord;->throwIllegalRecordId(Ljava/lang/String;)V

    .line 485
    :cond_0
    return-object p0
.end method

.method static checkWriteId(Ljava/lang/String;)V
    .locals 1
    .param p0, "recordId"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxRecord;->isReservedId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxRecord;->throwIllegalRecordId(Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method

.method private static createAtom(D)Lcom/dropbox/sync/android/DbxAtom;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 666
    invoke-static {p0, p1}, Lcom/dropbox/sync/android/DbxAtom;->create(D)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    return-object v0
.end method

.method private static createAtom(J)Lcom/dropbox/sync/android/DbxAtom;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 656
    invoke-static {p0, p1}, Lcom/dropbox/sync/android/DbxAtom;->create(J)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    return-object v0
.end method

.method private static createAtom(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAtom;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxAtom;->create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    return-object v0
.end method

.method private static createAtom(Z)Lcom/dropbox/sync/android/DbxAtom;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 651
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxAtom;->create(Z)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    return-object v0
.end method

.method private static createAtom([B)Lcom/dropbox/sync/android/DbxAtom;
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 676
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxAtom;->create([B)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    return-object v0
.end method

.method private static createAtomTimestamp(J)Lcom/dropbox/sync/android/DbxAtom;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 661
    new-instance v0, Lcom/dropbox/sync/android/DbxDateValue;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/DbxDateValue;-><init>(J)V

    return-object v0
.end method

.method private static createValue([Lcom/dropbox/sync/android/DbxAtom;)Lcom/dropbox/sync/android/DbxValue;
    .locals 1
    .param p0, "atoms"    # [Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 642
    if-nez p0, :cond_0

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    goto :goto_0
.end method

.method static isReservedId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 489
    if-eqz p0, :cond_0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 477
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ID can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxRecord;->nativeIsValidId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeDeleteRecord(J)V
.end method

.method private static native nativeFree(J)V
.end method

.method static native nativeGetField(JLjava/lang/String;)Lcom/dropbox/sync/android/DbxValue;
.end method

.method static native nativeGetFieldNames(JLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method static native nativeGetFieldType(JLjava/lang/String;)I
.end method

.method static native nativeGetFields(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetId(J)Ljava/lang/String;
.end method

.method private static native nativeGetSize(J)J
.end method

.method static native nativeHasField(JLjava/lang/String;)Z
.end method

.method private static native nativeIsDeleted(J)Z
.end method

.method static native nativeIsValidFieldName(Ljava/lang/String;)Z
.end method

.method private static native nativeIsValidId(Ljava/lang/String;)Z
.end method

.method static native nativeListAppend(JLjava/lang/String;J)V
.end method

.method static native nativeListCreate(JLjava/lang/String;)V
.end method

.method static native nativeListDelete(JLjava/lang/String;I)V
.end method

.method static native nativeListGet(JLjava/lang/String;I)Lcom/dropbox/sync/android/DbxAtom;
.end method

.method static native nativeListInsert(JLjava/lang/String;IJ)V
.end method

.method static native nativeListMove(JLjava/lang/String;II)V
.end method

.method static native nativeListPut(JLjava/lang/String;IJ)V
.end method

.method static native nativeListSize(JLjava/lang/String;)I
.end method

.method static native nativeUpdate(J[Ljava/lang/String;[J)V
.end method

.method static throwIllegalRecordId(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 696
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal record ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method checkBeforeWrite()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable;->checkBeforeWrite()V

    .line 501
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxRecord;->isReservedId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxRecord;->throwIllegalRecordId(Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method public bridge synthetic deleteField(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->deleteField(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public deleteField(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v0, 0x0

    check-cast v0, Lcom/dropbox/sync/android/DbxValue;

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    .line 412
    return-object p0
.end method

.method public deleteRecord()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite()V

    .line 101
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeDeleteRecord(J)V

    .line 102
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 439
    :cond_0
    if-ne p0, p1, :cond_2

    .line 446
    :cond_1
    :goto_0
    return v1

    .line 444
    :cond_2
    instance-of v3, p1, Lcom/dropbox/sync/android/DbxRecord;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 445
    check-cast v0, Lcom/dropbox/sync/android/DbxRecord;

    .line 446
    .local v0, "or":Lcom/dropbox/sync/android/DbxRecord;
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxRecord;->mTable:Lcom/dropbox/sync/android/DbxTable;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxRecord;->mTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/DbxTable;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxRecord;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxRecord;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method declared-synchronized fieldMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    .local v0, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v2, v3, v0}, Lcom/dropbox/sync/android/DbxRecord;->nativeGetFields(JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-object v0

    .line 431
    .end local v0    # "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized fieldNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 421
    .local v0, "out":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v2, v3, v0}, Lcom/dropbox/sync/android/DbxRecord;->nativeGetFieldNames(JLjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-object v0

    .line 420
    .end local v0    # "out":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeFree(J)V

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    return-void
.end method

.method fromNativeValueType(I)Lcom/dropbox/sync/android/DbxFields$ValueType;
    .locals 3
    .param p1, "nativeType"    # I

    .prologue
    .line 602
    packed-switch p1, :pswitch_data_0

    .line 612
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown native value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :pswitch_0
    const/4 v0, 0x0

    .line 610
    :goto_0
    return-object v0

    .line 604
    :pswitch_1
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BOOLEAN:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0

    .line 605
    :pswitch_2
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->LONG:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0

    .line 606
    :pswitch_3
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0

    .line 607
    :pswitch_4
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->STRING:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0

    .line 608
    :pswitch_5
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BYTES:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0

    .line 609
    :pswitch_6
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DATE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0

    .line 610
    :pswitch_7
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 137
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asBoolean()Z

    move-result v1

    return v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 184
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 195
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asDate()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 162
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public getFieldType(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields$ValueType;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/DbxRecord;->nativeGetFieldType(JLjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->fromNativeValueType(I)Lcom/dropbox/sync/android/DbxFields$ValueType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getList(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->getFieldType(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields$ValueType;

    move-result-object v0

    .line 211
    .local v0, "vt":Lcom/dropbox/sync/android/DbxFields$ValueType;
    if-nez v0, :cond_0

    .line 212
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 214
    :cond_0
    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    if-eq v0, v1, :cond_1

    .line 215
    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxRecord;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 217
    :cond_1
    new-instance v1, Lcom/dropbox/sync/android/DbxList;

    new-instance v2, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;

    invoke-direct {v2, p0, p1}, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;-><init>(Lcom/dropbox/sync/android/DbxRecord;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxList;-><init>(Lcom/dropbox/sync/android/DbxList$ListOps;)V

    return-object v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 149
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public getOrCreateList(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 233
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/DbxRecord;->nativeListCreate(JLjava/lang/String;)V

    .line 234
    new-instance v0, Lcom/dropbox/sync/android/DbxList;

    new-instance v1, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;

    invoke-direct {v1, p0, p1}, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;-><init>(Lcom/dropbox/sync/android/DbxRecord;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxList;-><init>(Lcom/dropbox/sync/android/DbxList$ListOps;)V

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeGetSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 173
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTable()Lcom/dropbox/sync/android/DbxTable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mTable:Lcom/dropbox/sync/android/DbxTable;

    return-object v0
.end method

.method declared-synchronized getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/DbxRecord;->nativeGetField(JLjava/lang/String;)Lcom/dropbox/sync/android/DbxValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/DbxRecord;->nativeHasField(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 452
    const/16 v0, 0x1f

    .line 453
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 454
    .local v1, "result":I
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord;->mTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxTable;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 455
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxRecord;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 456
    return v1
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeIsDeleted(J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(Ljava/lang/String;D)Lcom/dropbox/sync/android/DbxFields;
    .locals 2
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # D

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;D)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxFields;
    .locals 2
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxList;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/dropbox/sync/android/DbxList;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxList;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/util/Date;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Date;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/util/Date;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Z)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Z)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;[B)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [B

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;[B)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;D)Lcom/dropbox/sync/android/DbxRecord;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 282
    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxValue;->create(D)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 269
    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxValue;->create(J)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxList;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/dropbox/sync/android/DbxList;

    .prologue
    .line 342
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxList;->toList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 356
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 357
    .local v0, "names":[Ljava/lang/String;
    new-array v1, v3, [J

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxValue;->getNativeValue()J

    move-result-wide v2

    :goto_0
    aput-wide v2, v1, v4

    .line 359
    .local v1, "values":[J
    :try_start_0
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v2, v3, v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeUpdate(J[Ljava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeValue(J)J

    .line 363
    return-object p0

    .line 357
    .end local v1    # "values":[J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 361
    .restart local v1    # "values":[J
    :catchall_0
    move-exception v2

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeValue(J)J

    throw v2
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/util/Date;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 321
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Z)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 256
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create(Z)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[B)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 308
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create([B)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAll(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxFields;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->setAll(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic setAll(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxRecord;->setAll(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method public setAll(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "fields"    # Lcom/dropbox/sync/android/DbxFields;

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->setAll(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method setAll(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;)",
            "Lcom/dropbox/sync/android/DbxRecord;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/Iterable;)V

    .line 390
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 391
    .local v1, "values":[J
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 393
    .local v0, "names":[Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/NativeValue;->fillFieldMap([Ljava/lang/String;[JLjava/util/Map;)V

    .line 394
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v2, v3, v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeUpdate(J[Ljava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-static {v1}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    .line 398
    return-object p0

    .line 396
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxRecord;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DbxRecord "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": [deleted]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DbxRecord "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxRecord;->fieldMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
