.class Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;
.super Ljava/lang/Object;
.source "BackupController.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->restoreBackup(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$finalOutputStream:Ljava/io/FileOutputStream;

.field final synthetic val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x422368720adb6dacL    # 4.16783414857142E10

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/BackupController$1"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;Ljava/io/FileOutputStream;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$finalOutputStream:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onRestoreFailure(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    if-nez v1, :cond_0

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 85
    :goto_0
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    invoke-interface {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;->onRestoreFailure(Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onRestoreSuccess()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->$jacocoInit()[Z

    move-result-object v2

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$finalOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    aput-boolean v8, v2, v8

    .line 73
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    aput-boolean v8, v2, v3

    .line 80
    :goto_1
    const/16 v3, 0xa

    aput-boolean v8, v2, v3

    return-void

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aput-boolean v8, v2, v3

    .line 70
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x4

    aput-boolean v8, v2, v3

    goto :goto_0

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    invoke-interface {v3, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;->onRestoreFailure(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-boolean v8, v2, v3

    goto :goto_2

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const/4 v3, 0x6

    aput-boolean v8, v2, v3

    goto :goto_1

    .line 74
    :cond_2
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$file:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;

    invoke-static {v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->access$000(Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 75
    .local v1, "renamed":Z
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    .end local v0    # "e":Ljava/io/IOException;
    if-nez v3, :cond_3

    const/4 v3, 0x7

    aput-boolean v8, v2, v3

    goto :goto_1

    .line 76
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    invoke-interface {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;->onRestoreSuccess()V

    const/16 v3, 0x8

    aput-boolean v8, v2, v3

    goto :goto_1

    .line 77
    :cond_4
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;->val$listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    invoke-interface {v3, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;->onRestoreFailure(Ljava/lang/String;)V

    const/16 v3, 0x9

    aput-boolean v8, v2, v3

    goto :goto_1
.end method
