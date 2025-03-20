.class public Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBroadcastReceiver.java"


# instance fields
.field private final browserContainer:Landroid/view/View;

.field private final downloadManager:Landroid/app/DownloadManager;

.field private final queuedDownloadReferences:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/DownloadManager;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "downloadManager"    # Landroid/app/DownloadManager;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->queuedDownloadReferences:Ljava/util/HashSet;

    .line 40
    iput-object p1, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->browserContainer:Landroid/view/View;

    .line 41
    iput-object p2, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->downloadManager:Landroid/app/DownloadManager;

    .line 42
    return-void
.end method

.method private displaySnackbar(Landroid/content/Context;JLandroid/app/DownloadManager;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "completedDownloadReference"    # J
    .param p4, "downloadManager"    # Landroid/app/DownloadManager;

    .prologue
    .line 51
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->isFocusDownload(J)Z

    move-result v14

    if-nez v14, :cond_0

    .line 76
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v10, Landroid/app/DownloadManager$Query;

    invoke-direct {v10}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 56
    .local v10, "query":Landroid/app/DownloadManager$Query;
    const/4 v14, 0x1

    new-array v14, v14, [J

    const/4 v15, 0x0

    aput-wide p2, v14, v15

    invoke-virtual {v10, v14}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 57
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 58
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 59
    const-string v14, "status"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 60
    .local v11, "statusColumnIndex":I
    const/16 v14, 0x8

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 61
    const-string v14, "local_uri"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 63
    .local v13, "uriString":Ljava/lang/String;
    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "file://"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "localUri":Ljava/lang/String;
    :goto_1
    invoke-static {v7}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "fileExtension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v0, v8}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, "file":Ljava/io/File;
    const-string v14, "org.mozilla.focus.fileprovider"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 70
    .local v12, "uriForFile":Landroid/net/Uri;
    invoke-static {v12, v8}, Lorg/mozilla/focus/utils/IntentUtils;->createOpenFileIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 71
    .local v9, "openFileIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v6}, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->showSnackbarForFilename(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileExtension":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "localUri":Ljava/lang/String;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "openFileIntent":Landroid/content/Intent;
    .end local v11    # "statusColumnIndex":I
    .end local v12    # "uriForFile":Landroid/net/Uri;
    .end local v13    # "uriString":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v15, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->removeFromHashSet(J)V

    goto/16 :goto_0

    .restart local v11    # "statusColumnIndex":I
    .restart local v13    # "uriString":Ljava/lang/String;
    :cond_3
    move-object v7, v13

    .line 63
    goto :goto_1

    .line 74
    .end local v11    # "statusColumnIndex":I
    .end local v13    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v14

    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 57
    :catch_1
    move-exception v14

    :try_start_2
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :catchall_0
    move-exception v15

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v17

    :goto_3
    if-eqz v3, :cond_5

    if-eqz v15, :cond_6

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_4
    throw v14

    :catch_2
    move-exception v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v14

    goto :goto_3
.end method

.method private isFocusDownload(J)Z
    .locals 3
    .param p1, "completedDownloadReference"    # J

    .prologue
    .line 94
    iget-object v0, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->queuedDownloadReferences:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeFromHashSet(J)V
    .locals 3
    .param p1, "completedDownloadReference"    # J

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->queuedDownloadReferences:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method private showSnackbarForFilename(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "openFileIntent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v1, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->browserContainer:Landroid/view/View;

    const v2, 0x7f0f005b

    .line 80
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 81
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-static {p2, p1}, Lorg/mozilla/focus/utils/IntentUtils;->activitiesFoundForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const v1, 0x7f0f005c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;-><init>(Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 88
    const v1, 0x7f0600c6

    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 91
    return-void
.end method


# virtual methods
.method public addQueuedDownload(J)V
    .locals 3
    .param p1, "referenceId"    # J

    .prologue
    .line 102
    iget-object v0, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->queuedDownloadReferences:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const-string v2, "extra_download_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    .local v0, "downloadReference":J
    iget-object v2, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->downloadManager:Landroid/app/DownloadManager;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->displaySnackbar(Landroid/content/Context;JLandroid/app/DownloadManager;)V

    .line 48
    return-void
.end method
