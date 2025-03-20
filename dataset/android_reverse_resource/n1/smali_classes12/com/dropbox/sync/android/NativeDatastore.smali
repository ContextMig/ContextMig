.class Lcom/dropbox/sync/android/NativeDatastore;
.super Ljava/lang/Object;
.source "NativeDatastore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/NativeDatastore$1;,
        Lcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SYNC_ACTIVE:I = 0x20

.field public static final SYNC_CONNECTED:I = 0x1

.field public static final SYNC_DOWNLOADING:I = 0x2

.field public static final SYNC_INCOMING:I = 0x4

.field public static final SYNC_OUTGOING:I = 0x8

.field public static final SYNC_STUCK:I = 0x40

.field public static final SYNC_UPLOADING:I = 0x10

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mNativeHandle:J

.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dropbox/sync/android/DbxDatastore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/NativeDatastore;->$assertionsDisabled:Z

    .line 17
    const-class v0, Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeDatastore;->TAG:Ljava/lang/String;

    .line 261
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 262
    invoke-static {}, Lcom/dropbox/sync/android/NativeDatastore;->nativeClassInit()V

    .line 263
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JLcom/dropbox/sync/android/CoreLogger;)V
    .locals 3
    .param p1, "nativeHandle"    # J
    .param p3, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lcom/dropbox/sync/android/NativeDatastore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid native Datastore handle."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 36
    :cond_0
    iput-wide p1, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    .line 37
    iput-object p3, p0, Lcom/dropbox/sync/android/NativeDatastore;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/NativeDatastore;->nativeInit(J)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/sync/android/NativeDatastore;)Lcom/dropbox/sync/android/CoreLogger;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/NativeDatastore;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/dropbox/sync/android/NativeDatastore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addRecord(Ljava/util/Map;Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;J)V
    .locals 4
    .param p2, "ds"    # Lcom/dropbox/sync/android/DbxDatastore;
    .param p3, "tableId"    # Ljava/lang/String;
    .param p4, "recordId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;>;",
            "Lcom/dropbox/sync/android/DbxDatastore;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/dropbox/sync/android/DbxRecord;>;>;"
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 252
    .local v0, "handles":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxRecord;>;"
    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "handles":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxRecord;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 254
    .restart local v0    # "handles":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxRecord;>;"
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    new-instance v1, Lcom/dropbox/sync/android/DbxRecord;

    invoke-virtual {p0, p2, p3}, Lcom/dropbox/sync/android/NativeDatastore;->getTable(Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;

    move-result-object v2

    invoke-direct {v1, v2, p4, p5}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method private addTable(Ljava/util/Set;Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;J)V
    .locals 2
    .param p2, "ds"    # Lcom/dropbox/sync/android/DbxDatastore;
    .param p3, "tableId"    # Ljava/lang/String;
    .param p4, "tableHandle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxTable;",
            ">;",
            "Lcom/dropbox/sync/android/DbxDatastore;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "out":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxTable;>;"
    new-instance v0, Lcom/dropbox/sync/android/DbxTable;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/dropbox/sync/android/DbxTable;-><init>(Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;J)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method static fromNativeRole(J)Lcom/dropbox/sync/android/DbxDatastore$Role;
    .locals 2
    .param p0, "role"    # J

    .prologue
    .line 162
    const-wide/16 v0, 0xbb8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->OWNER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-wide/16 v0, 0x7d0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    sget-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->EDITOR:Lcom/dropbox/sync/android/DbxDatastore$Role;

    goto :goto_0

    .line 164
    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    sget-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->VIEWER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    goto :goto_0

    .line 165
    :cond_2
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->NONE:Lcom/dropbox/sync/android/DbxDatastore$Role;

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeDeinit(J)V
.end method

.method private static native nativeDeleteRole(JLjava/lang/String;)V
.end method

.method private static native nativeFree(J)V
.end method

.method private static native nativeGetEffectiveRole(J)I
.end method

.method private static native nativeGetId(J)Ljava/lang/String;
.end method

.method private static native nativeGetMtime(J)J
.end method

.method private static native nativeGetRecordCount(J)J
.end method

.method private static native nativeGetRole(JLjava/lang/String;)I
.end method

.method private static native nativeGetSize(J)J
.end method

.method private static native nativeGetStatus(JLcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;)Lcom/dropbox/sync/android/DbxDatastoreStatus;
.end method

.method private static native nativeGetTable(JLjava/lang/String;)J
.end method

.method private native nativeGetTables(JLcom/dropbox/sync/android/DbxDatastore;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/dropbox/sync/android/DbxDatastore;",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxTable;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetTitle(J)Ljava/lang/String;
.end method

.method private static native nativeGetUnsyncedChangesSize(J)J
.end method

.method private native nativeInit(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public static native nativeIsValidId(Ljava/lang/String;)Z
.end method

.method private static native nativeSetRole(JLjava/lang/String;J)V
.end method

.method private native nativeSetTitle(JLjava/lang/String;)V
.end method

.method private native nativeSync(JLcom/dropbox/sync/android/DbxDatastore;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/dropbox/sync/android/DbxDatastore;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private statusCallback()V
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastore;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxDatastore;

    .line 214
    .local v0, "owner":Lcom/dropbox/sync/android/DbxDatastore;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxDatastore;->statusCallback()V

    .line 217
    :cond_0
    return-void
.end method

.method static toNativeRole(Lcom/dropbox/sync/android/DbxDatastore$Role;)J
    .locals 4
    .param p0, "role"    # Lcom/dropbox/sync/android/DbxDatastore$Role;

    .prologue
    const-wide/16 v0, 0x0

    .line 149
    sget-object v2, Lcom/dropbox/sync/android/NativeDatastore$1;->$SwitchMap$com$dropbox$sync$android$DbxDatastore$Role:[I

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastore$Role;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 156
    :goto_0
    :pswitch_0
    return-wide v0

    .line 151
    :pswitch_1
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 152
    :pswitch_2
    const-wide/16 v0, 0x7d0

    goto :goto_0

    .line 153
    :pswitch_3
    const-wide/16 v0, 0xbb8

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeDeinit(J)V

    .line 69
    return-void
.end method

.method public deleteRole(Ljava/lang/String;)V
    .locals 2
    .param p1, "prin"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeDeleteRole(JLjava/lang/String;)V

    .line 178
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeFree(J)V

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    return-void
.end method

.method public getEffectiveRole()Lcom/dropbox/sync/android/DbxDatastore$Role;
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetEffectiveRole(J)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->fromNativeRole(J)Lcom/dropbox/sync/android/DbxDatastore$Role;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMtime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 105
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v2, v3}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetMtime(J)J

    move-result-wide v0

    .line 106
    .local v0, "mtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 107
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 109
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRecordCount()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetRecordCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRole(Ljava/lang/String;)I
    .locals 2
    .param p1, "prin"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetRole(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()Lcom/dropbox/sync/android/DbxDatastoreStatus;
    .locals 3

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    new-instance v2, Lcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;

    invoke-direct {v2, p0}, Lcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;-><init>(Lcom/dropbox/sync/android/NativeDatastore;)V

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetStatus(JLcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;)Lcom/dropbox/sync/android/DbxDatastoreStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTable(Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;
    .locals 4
    .param p1, "ds"    # Lcom/dropbox/sync/android/DbxDatastore;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/dropbox/sync/android/DbxTable;

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v2, v3, p2}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetTable(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/dropbox/sync/android/DbxTable;-><init>(Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;J)V

    return-object v0
.end method

.method public getTables(Lcom/dropbox/sync/android/DbxDatastore;)Ljava/util/Set;
    .locals 4
    .param p1, "ds"    # Lcom/dropbox/sync/android/DbxDatastore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/DbxDatastore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    .local v0, "out":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxTable;>;"
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetTables(JLcom/dropbox/sync/android/DbxDatastore;Ljava/util/Set;)V

    .line 97
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsyncedChangesSize()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeGetUnsyncedChangesSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setOwner(Lcom/dropbox/sync/android/DbxDatastore;)V
    .locals 2
    .param p1, "ds"    # Lcom/dropbox/sync/android/DbxDatastore;

    .prologue
    .line 52
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Owner must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mOwner:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v1, "Owner must be set only once."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mOwner:Ljava/lang/ref/WeakReference;

    .line 55
    return-void
.end method

.method public setRole(Ljava/lang/String;J)V
    .locals 2
    .param p1, "prin"    # Ljava/lang/String;
    .param p2, "role"    # J

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/dropbox/sync/android/NativeDatastore;->nativeSetRole(JLjava/lang/String;J)V

    .line 174
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/NativeDatastore;->nativeSetTitle(JLjava/lang/String;)V

    .line 114
    return-void
.end method

.method public sync(Lcom/dropbox/sync/android/DbxDatastore;)Ljava/util/Map;
    .locals 4
    .param p1, "ds"    # Lcom/dropbox/sync/android/DbxDatastore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/DbxDatastore;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/dropbox/sync/android/DbxRecord;>;>;"
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastore;->mNativeHandle:J

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/dropbox/sync/android/NativeDatastore;->nativeSync(JLcom/dropbox/sync/android/DbxDatastore;Ljava/util/Map;)V

    .line 131
    return-object v0
.end method
