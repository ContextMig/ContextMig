.class Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;
.super Ljava/lang/Object;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataBuilder"
.end annotation


# instance fields
.field public final mMetadata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/sync/android/DbxFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dropbox/sync/android/NativeFileSystem;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/NativeFileSystem;)V
    .locals 1

    .prologue
    .line 956
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->mMetadata:Ljava/util/ArrayList;

    .line 957
    return-void
.end method

.method private doCreate(JZJJJZLjava/lang/String;)Lcom/dropbox/sync/android/DbxFileInfo;
    .locals 12
    .param p1, "nativePathHandle"    # J
    .param p3, "isFolder"    # Z
    .param p4, "size"    # J
    .param p6, "lastModified"    # J
    .param p8, "clientMtime"    # J
    .param p10, "thumbExists"    # Z
    .param p11, "iconName"    # Ljava/lang/String;

    .prologue
    .line 991
    if-eqz p3, :cond_0

    move-wide/from16 v10, p6

    .line 992
    .local v10, "timestamp":J
    :goto_0
    new-instance v1, Lcom/dropbox/sync/android/DbxFileInfo;

    new-instance v2, Lcom/dropbox/sync/android/DbxPath;

    invoke-direct {v2, p1, p2}, Lcom/dropbox/sync/android/DbxPath;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v7, p10

    move-object/from16 v8, p11

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/sync/android/DbxFileInfo;-><init>(Lcom/dropbox/sync/android/DbxPath;ZJLjava/util/Date;ZLjava/lang/String;)V

    return-object v1

    .end local v10    # "timestamp":J
    :cond_0
    move-wide/from16 v10, p8

    .line 991
    goto :goto_0
.end method


# virtual methods
.method public addMetadata(JZJJJZLjava/lang/String;)V
    .locals 4
    .param p1, "nativePathHandle"    # J
    .param p3, "isFolder"    # Z
    .param p4, "size"    # J
    .param p6, "lastModified"    # J
    .param p8, "clientMtime"    # J
    .param p10, "thumbExists"    # Z
    .param p11, "iconName"    # Ljava/lang/String;

    .prologue
    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p11}, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->createMetadata(JZJJJZLjava/lang/String;)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 972
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v1, v1, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 967
    throw v0

    .line 968
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v1, v1, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 970
    throw v0
.end method

.method public createMetadata(JZJJJZLjava/lang/String;)Lcom/dropbox/sync/android/DbxFileInfo;
    .locals 4
    .param p1, "nativePathHandle"    # J
    .param p3, "isFolder"    # Z
    .param p4, "size"    # J
    .param p6, "lastModified"    # J
    .param p8, "clientMtime"    # J
    .param p10, "thumbExists"    # Z
    .param p11, "iconName"    # Ljava/lang/String;

    .prologue
    .line 978
    :try_start_0
    invoke-direct/range {p0 .. p11}, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->doCreate(JZJJJZLjava/lang/String;)Lcom/dropbox/sync/android/DbxFileInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v1, v1, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 982
    throw v0

    .line 983
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v1, v1, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 985
    throw v0
.end method
