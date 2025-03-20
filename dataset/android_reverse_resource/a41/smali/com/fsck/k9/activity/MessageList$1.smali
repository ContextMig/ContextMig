.class Lcom/fsck/k9/activity/MessageList$1;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList;->onToggleTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageList;

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$1;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1569
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageList$1;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1570
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    .line 1571
    .local v2, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v1

    .line 1572
    .local v1, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-static {v1}, Lcom/fsck/k9/K9;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 1573
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 1574
    return-void
.end method
