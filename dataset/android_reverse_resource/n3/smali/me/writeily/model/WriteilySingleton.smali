.class public Lme/writeily/model/WriteilySingleton;
.super Ljava/lang/Object;
.source "WriteilySingleton.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static notesLastDirectory:Ljava/io/File;

.field private static writeilySingletonInstance:Lme/writeily/model/WriteilySingleton;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/model/WriteilySingleton;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x804eca958313ed0L    # -8.93991265128252E269

    const-string v2, "me/writeily/model/WriteilySingleton"

    const/16 v3, 0x77

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/model/WriteilySingleton;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    sput-object v1, Lme/writeily/model/WriteilySingleton;->writeilySingletonInstance:Lme/writeily/model/WriteilySingleton;

    .line 30
    sput-object v1, Lme/writeily/model/WriteilySingleton;->notesLastDirectory:Ljava/io/File;

    const/16 v1, 0x76

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static WriteilySingleton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    aput-boolean v1, v0, v1

    return-void
.end method

.method public static getInstance()Lme/writeily/model/WriteilySingleton;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    sget-object v1, Lme/writeily/model/WriteilySingleton;->writeilySingletonInstance:Lme/writeily/model/WriteilySingleton;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 41
    :goto_0
    sget-object v1, Lme/writeily/model/WriteilySingleton;->writeilySingletonInstance:Lme/writeily/model/WriteilySingleton;

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return-object v1

    .line 37
    :cond_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 38
    new-instance v1, Lme/writeily/model/WriteilySingleton;

    invoke-direct {v1}, Lme/writeily/model/WriteilySingleton;-><init>()V

    sput-object v1, Lme/writeily/model/WriteilySingleton;->writeilySingletonInstance:Lme/writeily/model/WriteilySingleton;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addDirectories(Ljava/io/File;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    const/16 v4, 0x6e

    aput-boolean v7, v1, v4

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/16 v5, 0x6f

    aput-boolean v7, v1, v5

    .line 220
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v4, 0x70

    aput-boolean v7, v1, v4

    .line 219
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x74

    aput-boolean v7, v1, v4

    goto :goto_0

    .line 220
    :cond_0
    const/16 v5, 0x71

    aput-boolean v7, v1, v5

    .line 221
    const-string v5, "Adding directory:"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x72

    aput-boolean v7, v1, v5

    .line 222
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x73

    aput-boolean v7, v1, v4

    goto :goto_1

    .line 225
    :cond_1
    const/16 v0, 0x75

    aput-boolean v7, v1, v0

    return-object p2
.end method

.method public addFilesFromDirectory(Ljava/io/File;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v1

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x64

    aput-boolean v8, v1, v0

    .line 198
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    const/16 v5, 0x65

    aput-boolean v8, v1, v5

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    const/16 v6, 0x66

    aput-boolean v8, v1, v6

    .line 199
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x67

    aput-boolean v8, v1, v5

    .line 198
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x6c

    aput-boolean v8, v1, v5

    goto :goto_0

    .line 199
    :cond_0
    const/16 v6, 0x68

    aput-boolean v8, v1, v6

    .line 200
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x69

    aput-boolean v8, v1, v6

    .line 201
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x6a

    aput-boolean v8, v1, v5

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x6b

    aput-boolean v8, v1, v5

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    const/16 v0, 0x6d

    aput-boolean v8, v1, v0

    return-object p2
.end method

.method public copyDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 54
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 60
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v5, v0, v2

    return-object v1

    .line 56
    :cond_0
    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method public copyFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v5

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "input":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    const/16 v3, 0xe

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v5, v3

    .line 67
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "input":Ljava/io/FileInputStream;
    .local v1, "input":Ljava/io/FileInputStream;
    const/16 v3, 0xf

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v5, v3

    .line 68
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v2, "output":Ljava/io/FileOutputStream;
    const/16 v3, 0x10

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v5, v3

    .line 69
    invoke-static {v1, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    const/16 v3, 0x11

    const/4 v4, 0x1

    aput-boolean v4, v5, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    const/16 v3, 0x12

    aput-boolean v7, v5, v3

    .line 74
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 75
    const/16 v3, 0x13

    aput-boolean v7, v5, v3

    move-object v0, v1

    .line 76
    .end local v1    # "input":Ljava/io/FileInputStream;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "input":Ljava/io/FileInputStream;
    :goto_0
    const/16 v3, 0x1a

    aput-boolean v7, v5, v3

    return-void

    .line 70
    :catch_0
    move-exception v3

    move-object v2, v4

    :goto_1
    const/16 v4, 0x14

    const/4 v6, 0x1

    :try_start_3
    aput-boolean v6, v5, v4

    .line 71
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/16 v3, 0x15

    const/4 v4, 0x1

    aput-boolean v4, v5, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 73
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    const/16 v3, 0x16

    aput-boolean v7, v5, v3

    .line 74
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 75
    const/16 v3, 0x17

    aput-boolean v7, v5, v3

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    const/16 v6, 0x18

    aput-boolean v7, v5, v6

    .line 74
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 75
    const/16 v4, 0x19

    aput-boolean v7, v5, v4

    throw v3

    .line 73
    .end local v0    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v4, v2

    move-object v0, v1

    .end local v1    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v4, v2

    goto :goto_2

    .line 70
    .end local v0    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "input":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v2, v4

    move-object v0, v1

    .end local v1    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "input":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "input":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public copySelectedNotes(Landroid/util/SparseBooleanArray;Landroid/widget/BaseAdapter;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v2

    .line 129
    const/4 v0, 0x0

    const/16 v1, 0x39

    aput-boolean v4, v2, v1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x3a

    aput-boolean v4, v2, v1

    .line 130
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3b

    aput-boolean v4, v2, v1

    .line 129
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3f

    aput-boolean v4, v2, v1

    goto :goto_0

    .line 130
    :cond_0
    const/16 v1, 0x3c

    aput-boolean v4, v2, v1

    .line 131
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const/16 v3, 0x3d

    aput-boolean v4, v2, v3

    .line 132
    invoke-virtual {p0, v1, p3}, Lme/writeily/model/WriteilySingleton;->copyFile(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x3e

    aput-boolean v4, v2, v1

    goto :goto_1

    .line 135
    :cond_1
    const/16 v1, 0x40

    aput-boolean v4, v2, v1

    return-void
.end method

.method public deleteFile(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    aput-boolean v6, v1, v0

    .line 113
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    const/16 v2, 0x30

    aput-boolean v6, v1, v2

    return v0

    .line 107
    :cond_0
    const/16 v0, 0x2b

    aput-boolean v6, v1, v0

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    const/16 v4, 0x2c

    aput-boolean v6, v1, v4

    :goto_1
    if-lt v0, v3, :cond_1

    const/16 v0, 0x2d

    aput-boolean v6, v1, v0

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    const/16 v5, 0x2e

    aput-boolean v6, v1, v5

    .line 109
    invoke-virtual {p0, v4}, Lme/writeily/model/WriteilySingleton;->deleteFile(Ljava/io/File;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x2f

    aput-boolean v6, v1, v4

    goto :goto_1
.end method

.method public deleteSelectedItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v1

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x31

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/16 v3, 0x32

    aput-boolean v4, v1, v3

    .line 118
    invoke-virtual {p0, v0}, Lme/writeily/model/WriteilySingleton;->deleteFile(Ljava/io/File;)Z

    .line 119
    const/16 v0, 0x33

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 120
    :cond_0
    const/16 v0, 0x34

    aput-boolean v4, v1, v0

    return-void
.end method

.method public getFileFromUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v3

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "f":Ljava/io/File;
    if-nez p1, :cond_0

    const/16 v2, 0x45

    aput-boolean v6, v3, v2

    .line 156
    :goto_0
    const/16 v2, 0x4c

    aput-boolean v6, v3, v2

    return-object v0

    .line 147
    :cond_0
    const/16 v2, 0x46

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v2

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    .end local v0    # "f":Ljava/io/File;
    .local v1, "f":Ljava/io/File;
    const/16 v2, 0x47

    aput-boolean v6, v3, v2

    move-object v0, v1

    .end local v1    # "f":Ljava/io/File;
    .restart local v0    # "f":Ljava/io/File;
    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    const/16 v4, 0x48

    aput-boolean v6, v3, v4

    .line 151
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 154
    const/16 v2, 0x49

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 152
    :catch_1
    move-exception v2

    const/16 v4, 0x4a

    aput-boolean v6, v3, v4

    .line 153
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/16 v2, 0x4b

    aput-boolean v6, v3, v2

    goto :goto_0
.end method

.method public getNotesLastDirectory()Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    sget-object v1, Lme/writeily/model/WriteilySingleton;->notesLastDirectory:Ljava/io/File;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v1

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "u":Landroid/net/Uri;
    if-nez p1, :cond_0

    const/16 v2, 0x41

    aput-boolean v3, v1, v2

    .line 142
    :goto_0
    const/16 v2, 0x44

    aput-boolean v3, v1, v2

    return-object v0

    .line 139
    :cond_0
    const/16 v2, 0x42

    aput-boolean v3, v1, v2

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0x43

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public isDirectoryEmpty(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v2

    .line 187
    if-nez p1, :cond_0

    const/16 v0, 0x5f

    aput-boolean v1, v2, v0

    :goto_0
    const/16 v0, 0x61

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x63

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x60

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0x62

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public isRootDir(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v2

    .line 183
    if-nez p1, :cond_0

    const/16 v0, 0x5a

    aput-boolean v1, v2, v0

    :goto_0
    const/16 v0, 0x5c

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x5e

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5b

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0x5d

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public moveFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v1

    .line 86
    if-nez p2, :cond_0

    const/16 v0, 0x1b

    aput-boolean v7, v1, v0

    .line 104
    :goto_0
    const/16 v0, 0x29

    aput-boolean v7, v1, v0

    return-void

    .line 86
    :cond_0
    const/16 v0, 0x1c

    aput-boolean v7, v1, v0

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    aput-boolean v7, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    aput-boolean v7, v1, v0

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    aput-boolean v7, v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x20

    aput-boolean v7, v1, v0

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x21

    aput-boolean v7, v1, v0

    .line 91
    invoke-virtual {p0, p1, p2}, Lme/writeily/model/WriteilySingleton;->copyDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x22

    aput-boolean v7, v1, v0

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    const/16 v5, 0x23

    aput-boolean v7, v1, v5

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    const/16 v6, 0x24

    aput-boolean v7, v1, v6

    .line 94
    invoke-virtual {p0, v5, v2}, Lme/writeily/model/WriteilySingleton;->moveFile(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x25

    aput-boolean v7, v1, v5

    goto :goto_1

    .line 96
    :cond_3
    const/16 v0, 0x26

    aput-boolean v7, v1, v0

    .line 101
    :goto_2
    invoke-virtual {p0, p1}, Lme/writeily/model/WriteilySingleton;->deleteFile(Ljava/io/File;)Z

    const/16 v0, 0x28

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p0, p1, p2}, Lme/writeily/model/WriteilySingleton;->copyFile(Ljava/io/File;Ljava/lang/String;)V

    const/16 v0, 0x27

    aput-boolean v7, v1, v0

    goto :goto_2
.end method

.method public moveSelectedNotes(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x35

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/16 v3, 0x36

    aput-boolean v4, v1, v3

    .line 124
    invoke-virtual {p0, v0, p2}, Lme/writeily/model/WriteilySingleton;->moveFile(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    const/16 v0, 0x37

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 126
    :cond_0
    const/16 v0, 0x38

    aput-boolean v4, v1, v0

    return-void
.end method

.method public readFileUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "uriContent":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    const/16 v1, 0x4d

    aput-boolean v5, v2, v1

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x59

    aput-boolean v5, v2, v3

    return-object v1

    .line 161
    :cond_0
    const/16 v1, 0x4e

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 163
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x4f

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 164
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v1, 0x50

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 166
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->ready()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x51

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 167
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x52

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 168
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x53

    const/4 v4, 0x1

    aput-boolean v4, v2, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 170
    :catch_0
    move-exception v1

    const/16 v3, 0x55

    aput-boolean v5, v2, v3

    .line 171
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 174
    const/16 v1, 0x56

    aput-boolean v5, v2, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x54

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v1

    const/16 v3, 0x57

    aput-boolean v5, v2, v3

    .line 173
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0x58

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method public setNotesLastDirectory(Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    sput-object p1, Lme/writeily/model/WriteilySingleton;->notesLastDirectory:Ljava/io/File;

    .line 50
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
