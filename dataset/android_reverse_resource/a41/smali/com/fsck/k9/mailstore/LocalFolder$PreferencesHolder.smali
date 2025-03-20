.class Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;
.super Ljava/lang/Object;
.source "LocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/LocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferencesHolder"
.end annotation


# instance fields
.field displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field inTopGroup:Z

.field integrate:Z

.field notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->access$200(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 271
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->access$300(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 272
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->access$400(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 273
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->access$500(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 274
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->access$600(Lcom/fsck/k9/mailstore/LocalFolder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->inTopGroup:Z

    .line 275
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->access$700(Lcom/fsck/k9/mailstore/LocalFolder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->integrate:Z

    return-void
.end method
