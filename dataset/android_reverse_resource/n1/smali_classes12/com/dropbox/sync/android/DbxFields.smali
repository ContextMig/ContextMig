.class public Lcom/dropbox/sync/android/DbxFields;
.super Ljava/lang/Object;
.source "DbxFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;,
        Lcom/dropbox/sync/android/DbxFields$SubclassInit;,
        Lcom/dropbox/sync/android/DbxFields$AtomType;,
        Lcom/dropbox/sync/android/DbxFields$ValueType;
    }
.end annotation


# static fields
.field public static BASE_FIELD_SIZE:J


# instance fields
.field private final mMemFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/dropbox/sync/android/DbxFields;->BASE_FIELD_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    .line 212
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/DbxFields$SubclassInit;)V
    .locals 3
    .param p1, "init"    # Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;->NO_MEM_FIELDS:Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    invoke-virtual {p1, v0}, Lcom/dropbox/sync/android/DbxFields$SubclassInit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DbxFields init value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/sync/android/DbxFields;)V
    .locals 2
    .param p1, "fields"    # Lcom/dropbox/sync/android/DbxFields;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    .line 221
    return-void
.end method

.method static checkFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxFields;->isValidFieldName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxFields;->throwIllegalFieldName(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 569
    :cond_0
    return-object p0
.end method

.method static checkWriteFieldName(Ljava/lang/String;)V
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 577
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxFields;->isReservedFieldName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxFields;->throwIllegalFieldName(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 580
    :cond_0
    return-void
.end method

.method static checkWriteFieldNames(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "fieldNames":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    .local v0, "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFields;->checkWriteFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static isReservedFieldName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 573
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

.method public static isValidFieldName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 561
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Field name can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxRecord;->nativeIsValidFieldName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static throwIllegalFieldName(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal field name \'"

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

.method static throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;
    .locals 3
    .param p0, "t"    # Lcom/dropbox/sync/android/DbxFields$ValueType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxRuntimeException$BadType;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field value does not have type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadType;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method checkBeforeWrite()V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method checkBeforeWrite(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "fieldNames":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite()V

    .line 597
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkWriteFieldNames(Ljava/lang/Iterable;)V

    .line 598
    return-void
.end method

.method checkBeforeWrite(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite()V

    .line 592
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkWriteFieldName(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public deleteField(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 507
    const/4 v0, 0x0

    check-cast v0, Lcom/dropbox/sync/android/DbxValue;

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    .line 508
    return-object p0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 528
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 529
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 539
    :goto_0
    monitor-exit p0

    return v0

    .line 536
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 539
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized fieldMap()Ljava/util/Map;
    .locals 2
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
    .line 523
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fieldNames()Ljava/util/Set;
    .locals 2
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
    .line 515
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 255
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asBoolean()Z

    move-result v1

    return v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 298
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 299
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 308
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 309
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asDate()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 278
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 279
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public getFieldType(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields$ValueType;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 246
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    goto :goto_0
.end method

.method public declared-synchronized getList(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxValue;

    .line 323
    .local v0, "value":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    .line 324
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 326
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->valueType()Lcom/dropbox/sync/android/DbxFields$ValueType;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    if-eq v1, v2, :cond_1

    .line 327
    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 329
    :cond_1
    new-instance v1, Lcom/dropbox/sync/android/DbxList;

    new-instance v2, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;

    invoke-direct {v2, p0, p1}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;-><init>(Lcom/dropbox/sync/android/DbxFields;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxList;-><init>(Lcom/dropbox/sync/android/DbxList$ListOps;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 322
    .end local v0    # "value":Lcom/dropbox/sync/android/DbxValue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 266
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 267
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public declared-synchronized getOrCreateList(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxValue;

    .line 345
    .local v0, "value":Lcom/dropbox/sync/android/DbxValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->valueType()Lcom/dropbox/sync/android/DbxFields$ValueType;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    if-eq v1, v2, :cond_1

    .line 346
    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 350
    :cond_0
    :goto_0
    new-instance v1, Lcom/dropbox/sync/android/DbxList;

    new-instance v2, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;

    invoke-direct {v2, p0, p1}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;-><init>(Lcom/dropbox/sync/android/DbxFields;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxList;-><init>(Lcom/dropbox/sync/android/DbxList$ListOps;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 347
    :cond_1
    if-nez v0, :cond_0

    .line 348
    :try_start_1
    sget-object v1, Lcom/dropbox/sync/android/DbxListValue;->EMPTY:Lcom/dropbox/sync/android/DbxListValue;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    .end local v0    # "value":Lcom/dropbox/sync/android/DbxValue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 288
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->throwFieldNotFound(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method declared-synchronized getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 237
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;D)Lcom/dropbox/sync/android/DbxFields;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 394
    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxValue;->create(D)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxFields;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 382
    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxValue;->create(J)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxList;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/dropbox/sync/android/DbxList;

    .prologue
    .line 450
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxList;->toList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 463
    if-eqz p2, :cond_0

    .line 464
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :goto_0
    monitor-exit p0

    return-object p0

    .line 466
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/util/Date;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 430
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Z)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 370
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create(Z)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;[B)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 418
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxValue;->create([B)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method public setAll(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxFields;
    .locals 1
    .param p1, "fields"    # Lcom/dropbox/sync/android/DbxFields;

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxFields;->setAll(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized setAll(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxFields;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;)",
            "Lcom/dropbox/sync/android/DbxFields;"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dropbox/sync/android/DbxValue;

    invoke-virtual {p0, v2, v3}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 495
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFields;->mMemFields:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
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
