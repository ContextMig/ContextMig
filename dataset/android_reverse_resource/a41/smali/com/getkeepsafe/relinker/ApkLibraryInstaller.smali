.class public Lcom/getkeepsafe/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x1000

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const-wide/16 v2, 0x0

    .line 150
    .local v2, "copied":J
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 152
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 153
    .local v1, "read":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 159
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 160
    return-wide v2

    .line 156
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 157
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 158
    goto :goto_0
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abis"    # [Ljava/lang/String;
    .param p3, "mappedLibraryName"    # Ljava/lang/String;
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "instance"    # Lcom/getkeepsafe/relinker/ReLinkerInstance;

    .prologue
    .line 49
    const/16 v20, 0x0

    .line 51
    .local v20, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 52
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v16, 0x0

    .local v16, "tries":I
    move/from16 v17, v16

    .line 53
    .end local v16    # "tries":I
    .local v17, "tries":I
    :goto_0
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    const/16 v22, 0x5

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 55
    :try_start_1
    new-instance v21, Ljava/util/zip/ZipFile;

    new-instance v22, Ljava/io/File;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x1

    invoke-direct/range {v21 .. v23}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v20    # "zipFile":Ljava/util/zip/ZipFile;
    .local v21, "zipFile":Ljava/util/zip/ZipFile;
    move-object/from16 v20, v21

    .line 60
    .end local v21    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v20    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    if-nez v20, :cond_2

    .line 61
    :try_start_2
    const-string v22, "FATAL! Couldn\'t find application APK!"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    if-eqz v20, :cond_1

    .line 134
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 57
    :catch_0
    move-exception v22

    move/from16 v17, v16

    .end local v16    # "tries":I
    .restart local v17    # "tries":I
    goto :goto_0

    .line 65
    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    :cond_2
    const/16 v16, 0x0

    move/from16 v17, v16

    .line 66
    .end local v16    # "tries":I
    .restart local v17    # "tries":I
    :goto_2
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    const/16 v22, 0x5

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 67
    const/4 v13, 0x0

    .line 68
    .local v13, "jniNameInApk":Ljava/lang/String;
    const/4 v15, 0x0

    .line 70
    .local v15, "libraryEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v6, p2

    .local v6, "arr$":[Ljava/lang/String;
    :try_start_4
    array-length v14, v6

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v14, :cond_3

    aget-object v4, v6, v10

    .line 71
    .local v4, "abi":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "lib"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-char v23, Ljava/io/File;->separatorChar:C

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-char v23, Ljava/io/File;->separatorChar:C

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 73
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15

    .line 75
    if-eqz v15, :cond_6

    .line 80
    .end local v4    # "abi":Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_4

    const-string v22, "Looking for %s in APK..."

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v13, v23, v24

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_4
    if-nez v15, :cond_8

    .line 84
    if-eqz v13, :cond_7

    .line 85
    new-instance v22, Lcom/getkeepsafe/relinker/MissingLibraryException;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "jniNameInApk":Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v15    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .end local v16    # "tries":I
    :catchall_0
    move-exception v22

    .line 133
    if-eqz v20, :cond_5

    .line 134
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 136
    :cond_5
    :goto_4
    throw v22

    .line 70
    .restart local v4    # "abi":Ljava/lang/String;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "jniNameInApk":Ljava/lang/String;
    .restart local v14    # "len$":I
    .restart local v15    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v16    # "tries":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 87
    .end local v4    # "abi":Ljava/lang/String;
    :cond_7
    :try_start_6
    new-instance v22, Lcom/getkeepsafe/relinker/MissingLibraryException;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 91
    :cond_8
    const-string v22, "Found %s! Extracting..."

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v13, v23, v24

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v22

    if-nez v22, :cond_9

    move/from16 v17, v16

    .line 94
    .end local v16    # "tries":I
    .restart local v17    # "tries":I
    goto/16 :goto_2

    .line 96
    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    :catch_1
    move-exception v11

    .local v11, "ignored":Ljava/io/IOException;
    move/from16 v17, v16

    .line 98
    .end local v16    # "tries":I
    .restart local v17    # "tries":I
    goto/16 :goto_2

    .line 101
    .end local v11    # "ignored":Ljava/io/IOException;
    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    :cond_9
    const/4 v12, 0x0

    .line 102
    .local v12, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 104
    .local v8, "fileOut":Ljava/io/FileOutputStream;
    :try_start_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    .line 105
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 106
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .local v9, "fileOut":Ljava/io/FileOutputStream;
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v18

    .line 107
    .local v18, "written":J
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileDescriptor;->sync()V

    .line 108
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-wide v22

    cmp-long v22, v18, v22

    if-eqz v22, :cond_a

    .line 119
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    move/from16 v17, v16

    .end local v16    # "tries":I
    .restart local v17    # "tries":I
    goto/16 :goto_2

    .line 119
    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 124
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 125
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 126
    const/16 v22, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 133
    if-eqz v20, :cond_1

    .line 134
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    .line 136
    :catch_2
    move-exception v22

    goto/16 :goto_1

    .line 112
    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    .end local v18    # "written":J
    .restart local v8    # "fileOut":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .line 119
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    move/from16 v17, v16

    .end local v16    # "tries":I
    .restart local v17    # "tries":I
    goto/16 :goto_2

    .line 115
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    :catch_4
    move-exception v7

    .line 119
    .local v7, "e":Ljava/io/IOException;
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    move/from16 v17, v16

    .end local v16    # "tries":I
    .restart local v17    # "tries":I
    goto/16 :goto_2

    .line 119
    .end local v7    # "e":Ljava/io/IOException;
    .end local v17    # "tries":I
    .restart local v16    # "tries":I
    :catchall_1
    move-exception v22

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    throw v22

    .line 130
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .end local v10    # "i$":I
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "jniNameInApk":Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v15    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_b
    const-string v22, "FATAL! Couldn\'t extract the library from the APK!"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 133
    if-eqz v20, :cond_1

    .line 134
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    .line 136
    :catch_5
    move-exception v22

    goto/16 :goto_1

    :catch_6
    move-exception v22

    goto/16 :goto_1

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "tries":I
    :catch_7
    move-exception v23

    goto/16 :goto_4

    .line 119
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v9    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v10    # "i$":I
    .restart local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "jniNameInApk":Ljava/lang/String;
    .restart local v14    # "len$":I
    .restart local v15    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v16    # "tries":I
    :catchall_2
    move-exception v22

    move-object v8, v9

    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 115
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOut":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v7

    move-object v8, v9

    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 112
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOut":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    move-object v8, v9

    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_5
.end method
