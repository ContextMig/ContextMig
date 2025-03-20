.class public final Lcom/iliakplv/notes/notes/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/notes/storage/Storage$Type;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DEFAULT_STORAGE:Lcom/iliakplv/notes/notes/storage/Storage$Type;

.field private static final STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field private static final TAG:Ljava/lang/String;

.field private static currentStorageType:Lcom/iliakplv/notes/notes/storage/Storage$Type;

.field private static volatile initialized:Z

.field private static final storageWrapper:Lcom/iliakplv/notes/notes/storage/StorageWrapper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xa7a1a84a0de38b2L

    const-string v2, "com/iliakplv/notes/notes/storage/Storage"

    const/16 v3, 0x1c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    const-class v1, Lcom/iliakplv/notes/notes/storage/Storage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/storage/Storage;->TAG:Ljava/lang/String;

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    .line 15
    new-instance v1, Lcom/iliakplv/notes/notes/storage/StorageWrapper;

    invoke-direct {v1}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;-><init>()V

    sput-object v1, Lcom/iliakplv/notes/notes/storage/Storage;->storageWrapper:Lcom/iliakplv/notes/notes/storage/StorageWrapper;

    .line 18
    sget-object v1, Lcom/iliakplv/notes/notes/storage/Storage$Type;->Database:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    sput-object v1, Lcom/iliakplv/notes/notes/storage/Storage;->DEFAULT_STORAGE:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    .line 19
    const/4 v1, 0x0

    sput-object v1, Lcom/iliakplv/notes/notes/storage/Storage;->currentStorageType:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    .line 20
    const/4 v1, 0x0

    sput-boolean v1, Lcom/iliakplv/notes/notes/storage/Storage;->initialized:Z

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static checkInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    sget-boolean v1, Lcom/iliakplv/notes/notes/storage/Storage;->initialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Storage must be initialized before usage!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    throw v1

    .line 32
    :cond_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static getCurrentStorageType()Lcom/iliakplv/notes/notes/storage/Storage$Type;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    sget-object v1, Lcom/iliakplv/notes/notes/storage/Storage;->currentStorageType:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getStorage()Lcom/iliakplv/notes/notes/storage/NotesStorage;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->checkInit()V

    .line 25
    sget-object v1, Lcom/iliakplv/notes/notes/storage/Storage;->storageWrapper:Lcom/iliakplv/notes/notes/storage/StorageWrapper;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public static init(Lcom/iliakplv/notes/notes/storage/Storage$Type;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->$jacocoInit()[Z

    move-result-object v5

    .line 43
    sget-object v6, Lcom/iliakplv/notes/notes/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init() call. Initialized: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/iliakplv/notes/notes/storage/Storage;->initialized:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Current storage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/iliakplv/notes/notes/storage/Storage;->currentStorageType:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    const/4 v9, 0x6

    aput-boolean v3, v5, v9

    .line 44
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " New storage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aput-boolean v3, v5, v8

    .line 45
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    aput-boolean v3, v5, v8

    .line 43
    invoke-static {v6, v7}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-boolean v6, Lcom/iliakplv/notes/notes/storage/Storage;->initialized:Z

    if-nez v6, :cond_0

    const/16 v6, 0x9

    aput-boolean v3, v5, v6

    .line 51
    :goto_0
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "context":Landroid/content/Context;
    if-nez p0, :cond_2

    const/16 v6, 0xc

    aput-boolean v3, v5, v6

    move v1, v3

    .line 53
    .local v1, "lastUsedOrDefault":Z
    :goto_1
    if-nez v1, :cond_3

    const/16 v6, 0xe

    aput-boolean v3, v5, v6

    .line 58
    :goto_2
    sget-object v6, Lcom/iliakplv/notes/notes/storage/Storage$1;->$SwitchMap$com$iliakplv$notes$notes$storage$Storage$Type:[I

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 68
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown storage type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x14

    aput-boolean v3, v5, v7

    .line 69
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x15

    aput-boolean v3, v5, v6

    throw v4

    .line 47
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "lastUsedOrDefault":Z
    :cond_0
    sget-object v6, Lcom/iliakplv/notes/notes/storage/Storage;->currentStorageType:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    if-eq v6, p0, :cond_1

    const/16 v6, 0xa

    aput-boolean v3, v5, v6

    goto :goto_0

    .line 48
    :cond_1
    const/16 v4, 0xb

    aput-boolean v3, v5, v4

    .line 79
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "lastUsedOrDefault":Z
    :goto_3
    return-void

    .line 52
    .end local v1    # "lastUsedOrDefault":Z
    :cond_2
    const/16 v6, 0xd

    aput-boolean v3, v5, v6

    move v1, v4

    goto :goto_1

    .line 53
    .restart local v1    # "lastUsedOrDefault":Z
    :cond_3
    const/16 v6, 0xf

    aput-boolean v3, v5, v6

    .line 54
    sget-object v6, Lcom/iliakplv/notes/notes/storage/Storage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const/16 v7, 0x10

    aput-boolean v3, v5, v7

    .line 55
    const-string v7, "storage_type"

    sget-object v8, Lcom/iliakplv/notes/notes/storage/Storage;->DEFAULT_STORAGE:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    invoke-virtual {v8}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->valueOf(Ljava/lang/String;)Lcom/iliakplv/notes/notes/storage/Storage$Type;

    move-result-object v2

    .local v2, "newStorageType":Lcom/iliakplv/notes/notes/storage/Storage$Type;
    const/16 v6, 0x11

    aput-boolean v3, v5, v6

    move-object p0, v2

    goto :goto_2

    .line 60
    .end local v2    # "newStorageType":Lcom/iliakplv/notes/notes/storage/Storage$Type;
    :pswitch_0
    sget-object v6, Lcom/iliakplv/notes/notes/storage/Storage;->storageWrapper:Lcom/iliakplv/notes/notes/storage/StorageWrapper;

    new-instance v7, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;

    invoke-direct {v7}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;-><init>()V

    invoke-virtual {v6, v7}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->setTarget(Lcom/iliakplv/notes/notes/storage/NotesStorage;)V

    .line 61
    const/16 v6, 0x12

    aput-boolean v3, v5, v6

    .line 72
    :goto_4
    sget-object v6, Lcom/iliakplv/notes/notes/storage/Storage;->TAG:Ljava/lang/String;

    const/16 v7, 0x16

    aput-boolean v3, v5, v7

    .line 73
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/16 v6, 0x17

    aput-boolean v3, v5, v6

    .line 74
    const-string v6, "storage_type"

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/storage/Storage$Type;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v6, 0x18

    aput-boolean v3, v5, v6

    .line 75
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    sput-object p0, Lcom/iliakplv/notes/notes/storage/Storage;->currentStorageType:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    .line 78
    sput-boolean v3, Lcom/iliakplv/notes/notes/storage/Storage;->initialized:Z

    .line 79
    const/16 v4, 0x19

    aput-boolean v3, v5, v4

    goto :goto_3

    .line 64
    :pswitch_1
    sget-object v6, Lcom/iliakplv/notes/notes/storage/Storage;->storageWrapper:Lcom/iliakplv/notes/notes/storage/StorageWrapper;

    new-instance v7, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;

    invoke-direct {v7}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;-><init>()V

    invoke-virtual {v6, v7}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->setTarget(Lcom/iliakplv/notes/notes/storage/NotesStorage;)V

    .line 65
    const/16 v6, 0x13

    aput-boolean v3, v5, v6

    goto :goto_4

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
