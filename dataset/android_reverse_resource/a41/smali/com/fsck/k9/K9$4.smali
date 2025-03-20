.class final Lcom/fsck/k9/K9$4;
.super Landroid/os/AsyncTask;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/K9;->saveSettingsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1457
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1457
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/K9$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 1460
    sget-object v2, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v2}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    .line 1461
    .local v1, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 1462
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-static {v0}, Lcom/fsck/k9/K9;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 1463
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 1465
    const/4 v2, 0x0

    return-object v2
.end method
